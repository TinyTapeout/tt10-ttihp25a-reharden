/*
 * Copyright (c) 2024 Michael Bell
 * SPDX-License-Identifier: Apache-2.0
 */

`default_nettype none

module tt_um_MichaelBell_tinyQV (
    input  wire [7:0] ui_in,    // Dedicated inputs
    output wire [7:0] uo_out,   // Dedicated outputs
    input  wire [7:0] uio_in,   // IOs: Input path - only some bits used
    output wire [7:0] uio_out,  // IOs: Output path
    output wire [7:0] uio_oe,   // IOs: Enable path (active high: 0=input, 1=output)
    input  wire       ena,
    input  wire       clk,
    input  wire       rst_n
);

    // Address to peripheral map
    localparam PERI_NONE = 5'h1F;
    localparam PERI_GPIO_OUT = 5'h0;
    localparam PERI_GPIO_IN = 5'h1;
    localparam PERI_GPIO_OUT_SEL = 5'h3;
    localparam PERI_UART = 5'h4;
    localparam PERI_UART_STATUS = 5'h5;
    localparam PERI_DEBUG_UART = 5'h6;
    localparam PERI_DEBUG_UART_STATUS = 5'h7;
    localparam PERI_SPI = 5'h8;
    localparam PERI_SPI_STATUS = 5'h9;
    localparam PERI_PWM = 5'hA;
    localparam PERI_DEBUG = 5'hC;
    localparam PERI_MTIME = 5'hD;
    localparam PERI_MTIMECMP = 5'hE;
    localparam PERI_GAME_1 = 5'h10;
    localparam PERI_GAME_2 = 5'h11;

    // Register the reset on the negative edge of clock for safety.
    // This also allows the option of async reset in the design, which might be preferable in some cases
    /* verilator lint_off SYNCASYNCNET */
    reg rst_reg_n;
    /* verilator lint_on SYNCASYNCNET */
    always @(negedge clk) rst_reg_n <= rst_n;

    // Bidirs are used for SPI interface
    wire [3:0] qspi_data_in = {uio_in[5:4], uio_in[2:1]};
    wire [3:0] qspi_data_out;
    wire [3:0] qspi_data_oe;
    wire       qspi_clk_out;
    wire       qspi_flash_select;
    wire       qspi_ram_a_select;
    wire       qspi_ram_b_select;
    wire       uio_out7;
    assign uio_out = {uio_out7, qspi_ram_a_select, qspi_data_out[3:2], 
                      qspi_clk_out, qspi_data_out[1:0], qspi_flash_select};
    assign uio_oe = rst_n ? {2'b11, qspi_data_oe[3:2], 1'b1, qspi_data_oe[1:0], 1'b1} : 8'h00;

    wire [27:0] addr;
    wire  [1:0] write_n;
    wire  [1:0] read_n;
    wire        read_complete;
    wire [31:0] data_to_write;

    wire        data_ready;
    reg [31:0] data_from_read;

    wire       debug_instr_complete;
    wire       debug_instr_ready;
    wire       debug_instr_valid;
    wire       debug_fetch_restart;
    wire       debug_data_ready;
    wire       debug_interrupt_pending;
    wire       debug_branch;
    wire       debug_early_branch;
    wire       debug_ret;
    wire       debug_reg_wen;
    wire       debug_counter_0;
    wire       debug_data_continue;
    wire       debug_stall_txn;
    wire       debug_stop_txn;
    wire [3:0] debug_rd;

    // Peripheral IOs on ui_in and uo_out
    wire       spi_miso   = ui_in[2];
    wire       mhz_clk_in = ui_in[3];
    wire       game_latch = ui_in[4];
    wire       game_data  = ui_in[6];
    wire       uart_rxd   = ui_in[7];

`ifdef SIM
    wire       game_clk   = ui_in[5];
`else
    (* keep *) wire game_clk;
/* verilator lint_off PINMISSING */    
    (* keep_hierarchy *) sky130_fd_sc_hd__clkbuf_8 game_clk_buf(.X(game_clk), .A(ui_in[5]));
/* verilator lint_on PINMISSING */
`endif

    wire       spi_cs;
    wire       spi_sck;
    wire       spi_mosi;
    wire       spi_dc;
    wire       uart_txd;
    wire       uart_rts;
    wire       debug_uart_txd;
    wire       debug_signal;
    reg  [9:0] gpio_out_sel;
    reg  [7:0] gpio_out;

    wire       lmem_data_ready;
    wire [1:0] lmem_write_n;
    wire [1:0] lmem_read_n;
    wire [31:0] lmem_data_from_read;

    reg [4:0] connect_peripheral;

    // All transactions to peripherals complete immediately
    assign data_ready = addr[26] ? lmem_data_ready : 1'b1;
    assign lmem_write_n = addr[26] ? write_n : 2'b11;
    assign lmem_read_n = addr[26] ? read_n : 2'b11;

    // Debug
    reg debug_register_data;
    reg [3:0] debug_rd_r;

    // UART
    wire uart_tx_busy;
    wire uart_rx_valid;
    wire [7:0] uart_rx_data;
    wire uart_tx_start = write_n != 2'b11 && connect_peripheral == PERI_UART;

    // Debug UART - runs fast to reduce the width of the count necessary for the divider!
    wire debug_uart_tx_busy;
    wire debug_uart_tx_start = write_n != 2'b11 && connect_peripheral == PERI_DEBUG_UART;

    // SPI
    wire spi_start = write_n != 2'b11 && connect_peripheral == PERI_SPI;
    wire [7:0] spi_data;
    wire spi_busy;

    // PWM
    wire pwm_out;

    // MTIME
    reg [2:0] mhz_clk_sync;
    reg time_pulse;
    wire [31:0] mtime_data;
    wire timer_interrupt;

    // GAME
    wire [11:0] controller1_data;
    wire [11:0] controller2_data;

    // Interrupt requests
    reg [1:0] ui_in_reg;
    always @(posedge clk) begin
        ui_in_reg <= ui_in[1:0];
    end
    wire [3:0] interrupt_req = {!uart_tx_busy, uart_rx_valid, ui_in_reg[1:0]};

    tinyQV i_tinyqv(
        .clk(clk),
        .rstn(rst_reg_n),

        .data_addr(addr),
        .data_write_n(write_n),
        .data_read_n(read_n),
        .data_read_complete(read_complete),
        .data_out(data_to_write),

        .data_ready(data_ready),
        .data_in(data_from_read),

        .interrupt_req(interrupt_req),
        .timer_interrupt(timer_interrupt),

        .spi_data_in(qspi_data_in),
        .spi_data_out(qspi_data_out),
        .spi_data_oe(qspi_data_oe),
        .spi_clk_out(qspi_clk_out),
        .spi_flash_select(qspi_flash_select),
        .spi_ram_a_select(qspi_ram_a_select),
        .spi_ram_b_select(qspi_ram_b_select),

        .debug_instr_complete(debug_instr_complete),
        .debug_instr_ready(debug_instr_ready),
        .debug_instr_valid(debug_instr_valid),
        .debug_fetch_restart(debug_fetch_restart),
        .debug_data_ready(debug_data_ready),
        .debug_interrupt_pending(debug_interrupt_pending),
        .debug_branch(debug_branch),
        .debug_early_branch(debug_early_branch),
        .debug_ret(debug_ret),
        .debug_reg_wen(debug_reg_wen),
        .debug_counter_0(debug_counter_0),
        .debug_data_continue(debug_data_continue),
        .debug_stall_txn(debug_stall_txn),
        .debug_stop_txn(debug_stop_txn),
        .debug_rd(debug_rd)
    );

    assign uo_out[0] = gpio_out_sel[0] ? gpio_out[0] : uart_txd;
    assign uo_out[1] = gpio_out_sel[1] ? gpio_out[1] : uart_rts;
    assign uo_out[2] = gpio_out_sel[2] ? gpio_out[2] : 
                       debug_register_data ? debug_rd_r[0] : spi_dc;
    assign uo_out[3] = gpio_out_sel[3] ? gpio_out[3] : 
                       debug_register_data ? debug_rd_r[1] : spi_mosi;
    assign uo_out[4] = gpio_out_sel[4] ? gpio_out[4] : 
                       debug_register_data ? debug_rd_r[2] : spi_cs;
    assign uo_out[5] = gpio_out_sel[5] ? gpio_out[5] : 
                       debug_register_data ? debug_rd_r[3] : spi_sck;
    assign uo_out[6] = gpio_out_sel[6] ? gpio_out[6] : debug_uart_txd;
    assign uo_out[7] = gpio_out_sel[8] ? pwm_out :
                       gpio_out_sel[7] ? gpio_out[7] : debug_signal;
    assign uio_out7 = gpio_out_sel[9] ? pwm_out : qspi_ram_b_select;

    always @(*) begin
        if ({addr[27:7], addr[1:0]} == 23'h400000) 
            connect_peripheral = addr[6:2];
        else
            connect_peripheral = PERI_NONE;
    end

    // Read data
    always @(*) begin
        if (addr[26]) data_from_read = lmem_data_from_read;
        else begin
            case (connect_peripheral)
                PERI_GPIO_OUT:    data_from_read = {24'h0, uo_out};
                PERI_GPIO_IN:     data_from_read = {24'h0, ui_in};
                PERI_GPIO_OUT_SEL:data_from_read = {22'h0, gpio_out_sel};
                PERI_UART:        data_from_read = {24'h0, uart_rx_data};
                PERI_UART_STATUS: data_from_read = {30'h0, uart_rx_valid, uart_tx_busy};
                PERI_DEBUG_UART_STATUS: data_from_read = {31'h0, debug_uart_tx_busy};
                PERI_SPI:         data_from_read = {24'h0, spi_data};
                PERI_SPI_STATUS:  data_from_read = {31'h0, spi_busy};
                PERI_MTIME:       data_from_read = mtime_data;
                PERI_MTIMECMP:    data_from_read = mtime_data;
                PERI_GAME_1:      data_from_read = {20'h0,controller1_data};
                PERI_GAME_2:      data_from_read = {20'h0,controller2_data};
                default:          data_from_read = 32'hFFFF_FFFF;
            endcase
        end
    end

    // GPIO Out
    always @(posedge clk) begin
        if (!rst_reg_n) begin
            gpio_out_sel <= {2'b00, !ui_in[0], 7'b0000000};
            gpio_out <= 0;
        end
        if (write_n != 2'b11) begin
            if (connect_peripheral == PERI_GPIO_OUT) gpio_out <= data_to_write[7:0];
            if (connect_peripheral == PERI_GPIO_OUT_SEL) gpio_out_sel <= data_to_write[9:0];
        end
    end

    uart_tx #(.CLK_HZ(64_000_000), .BIT_RATE(115_200)) i_uart_tx(
        .clk(clk),
        .resetn(rst_reg_n),
        .uart_txd(uart_txd),
        .uart_tx_en(uart_tx_start),
        .uart_tx_data(data_to_write[7:0]),
        .uart_tx_busy(uart_tx_busy) 
    );

    uart_rx #(.CLK_HZ(64_000_000), .BIT_RATE(115_200)) i_uart_rx(
        .clk(clk),
        .resetn(rst_reg_n),
        .uart_rxd(uart_rxd),
        .uart_rts(uart_rts),
        .uart_rx_read(connect_peripheral == PERI_UART && read_complete),
        .uart_rx_valid(uart_rx_valid),
        .uart_rx_data(uart_rx_data) 
    );

    uart_tx #(.CLK_HZ(64_000_000), .BIT_RATE(4_000_000)) i_debug_uart_tx(
        .clk(clk),
        .resetn(rst_reg_n),
        .uart_txd(debug_uart_txd),
        .uart_tx_en(debug_uart_tx_start),
        .uart_tx_data(data_to_write[7:0]),
        .uart_tx_busy(debug_uart_tx_busy) 
    );

    spi_ctrl i_spi(
        .clk(clk),
        .rstn(rst_reg_n),

        .spi_miso(spi_miso),
        .spi_select(spi_cs),
        .spi_clk_out(spi_sck),
        .spi_mosi(spi_mosi),
        .spi_dc(spi_dc),

        .dc_in(data_to_write[9]),
        .end_txn(data_to_write[8]),
        .data_in(data_to_write[7:0]),
        .start(spi_start),
        .data_out(spi_data),
        .busy(spi_busy),

        .set_config(connect_peripheral == PERI_SPI_STATUS && write_n != 2'b11),
        .divider_in(data_to_write[3:0]),
        .read_latency_in(data_to_write[8])
    );

    pwm_ctrl i_pwm(
        .clk(clk),
        .rstn(rst_reg_n),

        .pwm(pwm_out),

        .level(data_to_write[7:0]),
        .set_level(connect_peripheral == PERI_PWM && write_n != 2'b11)
    );

    tinyQV_time i_time(
        .clk(clk),
        .rstn(rst_reg_n),

        .time_pulse(time_pulse),

        .set_mtime(connect_peripheral == PERI_MTIME && write_n == 2'b10),
        .set_mtimecmp(connect_peripheral == PERI_MTIMECMP && write_n == 2'b10),
        .data_in(data_to_write),

        .read_mtimecmp(connect_peripheral == PERI_MTIMECMP),
        .data_out(mtime_data),

        .timer_interrupt(timer_interrupt)
    );
    always @(posedge clk) begin
        if (!rst_reg_n) begin
            time_pulse <= 0;
            mhz_clk_sync <= 0;
        end else begin
            time_pulse <= mhz_clk_sync[1] && !mhz_clk_sync[2];
            mhz_clk_sync <= {mhz_clk_sync[1:0], mhz_clk_in};
        end
    end

    tt_game i_game (
        .clk(clk),
        .rstn(rst_reg_n),

        .game_latch(game_latch),
        .game_clk(game_clk),
        .game_data(game_data),

        .controller_1(controller1_data),
        .controller_2(controller2_data)
    );

    // RAM
    latch_mem i_latch_mem (
        .clk(clk),
        .rstn(rst_reg_n),

        .addr_in(addr[4:0]),
        .data_in(data_to_write),

        .data_write_n(lmem_write_n),
        .data_read_n(lmem_read_n),

        .data_out(lmem_data_from_read),
        .data_ready(lmem_data_ready)
    );

    // Debug
    always @(posedge clk) begin
        if (!rst_reg_n)
            debug_register_data <= ui_in[1];
        else if (connect_peripheral == PERI_DEBUG)
            debug_register_data <= data_to_write[0];
    end

    always @(posedge clk) begin
        debug_rd_r <= debug_rd;
    end

    reg [15:0] debug_signals;
    always @(*) begin
        debug_signals  = {debug_instr_complete,
                          debug_instr_ready,
                          debug_instr_valid,
                          debug_fetch_restart,
                          read_n != 2'b11,
                          write_n != 2'b11,
                          debug_data_ready,
                          debug_interrupt_pending,
                          debug_branch,
                          debug_early_branch,
                          debug_ret,
                          debug_reg_wen,
                          debug_counter_0,
                          debug_data_continue,
                          debug_stall_txn,
                          debug_stop_txn};
    end
    assign debug_signal = debug_signals[ui_in[6:3]];

    // List all unused inputs to prevent warnings
    wire _unused = &{ena, uio_in[7:6], uio_in[3], uio_in[0], 1'b0};

endmodule

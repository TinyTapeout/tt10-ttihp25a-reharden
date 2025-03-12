/*
 * Copyright (c) 2024 Your Name
 * SPDX-License-Identifier: Apache-2.0
 */

`default_nettype none

module tt_um_simon2024_c_element_top (
    input  wire [7:0] ui_in,    // Dedicated inputs
    output wire [7:0] uo_out,   // Dedicated outputs
    input  wire [7:0] uio_in,   // IOs: Input path
    output wire [7:0] uio_out,  // IOs: Output path
    output wire [7:0] uio_oe,   // IOs: Enable path (active high: 0=input, 1=output)
    input  wire       ena,      // always 1 when the design is powered, so you can ignore it
    input  wire       clk,      // clock
    input  wire       rst_n     // reset_n - low to reset
);

    // save us from inverting all logic - be readable
    wire reset;
    assign reset = ~rst_n;

    // we want out
    assign uio_oe = 255;

    wire [7:0] async_out;
    reg [7:0] sync_out1;
    reg [7:0] sync_out2;
    reg [7:0] sync_out3;
    assign uio_out = sync_out3;
    // export async outputs to supplied clock domain
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            sync_out1 <= 0;
            sync_out2 <= 0;
            sync_out3 <= 0;
        end else begin
            sync_out1 <= async_out;
            sync_out2 <= sync_out1;
            sync_out3 <= sync_out2;
        end
    end

    // Simple celem test
    compound_c_element c1(
        .a(ui_in[0]),
        .b(ui_in[1]),
        .out(uo_out[0])
    );
    celem c2(
        .A(ui_in[0]),
        .B(ui_in[1]),
        .Y(uo_out[1])
    );

    // // buffer with library inverters, just in case
    // wire c3_out;
    // assign uo_out[2] = ~c3_out;
    // celem c3(
    //     .A(~ui_in[0]),
    //     .B(~ui_in[1]),
    //     .Y(c3_out)
    // );

    // another variant
    wire c4_out;
    assign uo_out[3] = ~c4_out;
    celem c4(
        .A(ui_in[0]),
        .B(ui_in[1]),
        .Y(c4_out)
    );

    // another variant
    celem c5(
        .A(~ui_in[0]),
        .B(~ui_in[1]),
        .Y(uo_out[4])
    );


    wire [23:0] invc_out;
    inverter_chain_counter invc1(
        .enable(ui_in[4]),
        .reset(reset),
        .count(invc_out)
    );

    // make an inverter chain using c elements
    // should have done it with generics but it's too late now to figure that out..
    wire [23:0] celc_out;
    celc_chain_counter cinvc1(
        .enable(ui_in[5]),
        .reset(reset),
        .count(celc_out)
    );

    wire [23:0] celcomb_out;
    celcomb_chain_counter cinvc2(
        .enable(ui_in[6]),
        .reset(reset),
        .count(celcomb_out)
    );

    //// not sure which half will be more valuable, so let's export both
    // reuse pins 0 and 1
    // if (ui_in[0] == 1) begin
    //     assign async_out[7:0] = (ui_in[3] == 1) ? invc_out[7:0] : invc_out[15:8];
    // end else if (ui_in[1] == 1) begin
    //     assign async_out[7:0] = (ui_in[3] == 1) ? celc_out[7:0] : celc_out[15:8];
    // end else if (ui_in[2] == 1) begin
    //     assign async_out[7:0] = (ui_in[3] == 1) ? celcomb_out[7:0] : celcomb_out[15:8];
    // end else begin
    //     assign async_out = 0;
    // end

    // that's quite ugly but won't figure it out now
    assign async_out[7:0] = 
        (ui_in[0] == 1) ? (
            (ui_in[3] == 1) ?
                ((ui_in[7] == 1) ? invc_out[7:0] : invc_out[23:16])
                : invc_out[15:8]) :
        (
            (ui_in[1] == 1) ? (
                (ui_in[3] == 1) ?
                    ((ui_in[7] == 1) ? celc_out[7:0] : celc_out[23:16])
                    : celc_out[15:8]) :
            (
                (ui_in[2] == 1) ? (
                    (ui_in[3] == 1) ?
                        ((ui_in[7] == 1) ? celcomb_out[7:0] : celcomb_out[23:16])
                        : celcomb_out[15:8]) :
                (
                    0
                )
            )
        );
            

    //assign uo_out[0] = 0;
    //assign uo_out[1] = 0;
    assign uo_out[2] = 0;
    //assign uo_out[3] = 0;
    //assign uo_out[4] = 0;
    assign uo_out[5] = 0;
    assign uo_out[6] = 0;
    assign uo_out[7] = 0;

    // Doesn't pass drc check, don't have time to figure out
    //inv4 inv(.A(uio_in[7]), .Y(uo_out[7]));

    // List all unused inputs to prevent warnings
    wire _unused = &{ena, uio_in[0], 1'b0};

endmodule

/* Automatically generated from https://wokwi.com/projects/425498323071819777 */

`default_nettype none

// verilator lint_off UNUSEDSIGNAL
// verilator lint_off PINCONNECTEMPTY

module tt_um_wokwi_425498323071819777(
  input  wire [7:0] ui_in,    // Dedicated inputs
  output wire [7:0] uo_out,    // Dedicated outputs
  input  wire [7:0] uio_in,    // IOs: Input path
  output wire [7:0] uio_out,    // IOs: Output path
  output wire [7:0] uio_oe,    // IOs: Enable path (active high: 0=input, 1=output)
  input ena,
  input clk,
  input rst_n
);
  wire net1 = rst_n;
  wire net2 = ui_in[0];
  wire net3 = 1'b0;
  wire net4 = 1'b1;
  wire net5 = 1'b1;
  wire net6 = 1'b0;
  wire net7 = 1'b1;
  wire net8;
  wire net9 = 1'b0;
  wire net10;
  wire net11;
  wire net12 = 1'b0;

  assign uo_out[0] = 0;
  assign uo_out[1] = 0;
  assign uo_out[2] = 0;
  assign uo_out[3] = 0;
  assign uo_out[4] = 0;
  assign uo_out[5] = 0;
  assign uo_out[6] = 0;
  assign uo_out[7] = 0;
  assign uio_out[0] = 0;
  assign uio_oe[0] = 0;
  assign uio_out[1] = 0;
  assign uio_oe[1] = 0;
  assign uio_out[2] = 0;
  assign uio_oe[2] = 0;
  assign uio_out[3] = 0;
  assign uio_oe[3] = 0;
  assign uio_out[4] = 0;
  assign uio_oe[4] = 0;
  assign uio_out[5] = 0;
  assign uio_oe[5] = 0;
  assign uio_out[6] = 0;
  assign uio_oe[6] = 0;
  assign uio_out[7] = 0;
  assign uio_oe[7] = 0;

  dffsr_cell flop1 (
    .d (net8),
    .clk (net2),
    .s (net1),
    .r (net9),
    .q (net10),
    .notq ()
  );
  dffsr_cell flop2 (
    .d (net10),
    .clk (net2),
    .s (net9),
    .r (net1),
    .q (net11),
    .notq ()
  );
  dffsr_cell flop3 (
    .d (net11),
    .clk (net2),
    .s (net9),
    .r (net1),
    .q (net8),
    .notq ()
  );
endmodule

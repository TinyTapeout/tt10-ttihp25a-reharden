/* Automatically generated from https://wokwi.com/projects/425498338463870977 */

`default_nettype none

// verilator lint_off UNUSEDSIGNAL
// verilator lint_off PINCONNECTEMPTY

module tt_um_wokwi_425498338463870977(
  input  wire [7:0] ui_in,    // Dedicated inputs
  output wire [7:0] uo_out,    // Dedicated outputs
  input  wire [7:0] uio_in,    // IOs: Input path
  output wire [7:0] uio_out,    // IOs: Output path
  output wire [7:0] uio_oe,    // IOs: Enable path (active high: 0=input, 1=output)
  input ena,
  input clk,
  input rst_n
);
  wire net1 = clk;
  wire net2 = rst_n;
  wire net3 = ui_in[0];
  wire net4 = ui_in[1];
  wire net5;
  wire net6;
  wire net7;
  wire net8;
  wire net9 = 1'b0;
  wire net10 = 1'b1;
  wire net11 = 1'b1;
  wire net12 = 1'b0;
  wire net13 = 1'b1;
  wire net14 = 1'b0;
  wire net15;
  wire net16;
  wire net17 = 1'b0;
  wire net18;
  wire net19;
  wire net20;

  assign uo_out[0] = net5;
  assign uo_out[1] = net6;
  assign uo_out[2] = net7;
  assign uo_out[3] = net8;
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
    .d (net3),
    .clk (net1),
    .s (net14),
    .r (net15),
    .q (net16),
    .notq ()
  );
  not_cell not1 (
    .in (net2),
    .out (net15)
  );
  and_cell and1 (
    .a (net16),
    .b (net4),
    .out (net5)
  );
  dffsr_cell flop2 (
    .d (net16),
    .clk (net1),
    .s (net17),
    .r (net15),
    .q (net18),
    .notq ()
  );
  and_cell and2 (
    .a (net18),
    .b (net4),
    .out (net6)
  );
  dffsr_cell flop3 (
    .d (net18),
    .clk (net1),
    .s (net17),
    .r (net15),
    .q (net19),
    .notq ()
  );
  and_cell and3 (
    .a (net19),
    .b (net4),
    .out (net7)
  );
  dffsr_cell flop4 (
    .d (net19),
    .clk (net1),
    .s (net17),
    .r (net15),
    .q (net20),
    .notq ()
  );
  and_cell and4 (
    .a (net20),
    .b (net4),
    .out (net8)
  );
endmodule

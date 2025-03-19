/* Automatically generated from https://wokwi.com/projects/425498175661927425 */

`default_nettype none

// verilator lint_off UNUSEDSIGNAL
// verilator lint_off PINCONNECTEMPTY

module tt_um_wokwi_425498175661927425(
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
  wire net2;
  wire net3;
  wire net4;
  wire net5;
  wire net6;
  wire net7;
  wire net8;
  wire net9 = 1'b0;
  wire net10 = 1'b1;
  wire net11 = 1'b1;
  wire net12 = 1'b0;
  wire net13 = 1'b1;
  wire net14;
  wire net15;
  wire net16;
  wire net17;
  wire net18;
  wire net19;
  wire net20;
  wire net21;
  wire net22;
  wire net23;
  wire net24;
  wire net25;
  wire net26;
  wire net27;
  wire net28;
  wire net29;

  assign uo_out[0] = net2;
  assign uo_out[1] = net3;
  assign uo_out[2] = net4;
  assign uo_out[3] = net5;
  assign uo_out[4] = net6;
  assign uo_out[5] = net7;
  assign uo_out[6] = net8;
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

  dff_cell flop1 (
    .d (net14),
    .clk (net1),
    .q (net15),
    .notq (net14)
  );
  dff_cell flop2 (
    .d (net16),
    .clk (net15),
    .q (net17),
    .notq (net16)
  );
  dff_cell flop3 (
    .d (net18),
    .clk (net17),
    .q (net19),
    .notq (net18)
  );
  and_cell and2 (
    .out ()
  );
  and_cell and3 (
    .a (net15),
    .b (net17),
    .out (net20)
  );
  and_cell and4 (
    .a (net20),
    .b (net19),
    .out (net2)
  );
  and_cell and5 (
    .a (net19),
    .b (net17),
    .out (net21)
  );
  and_cell and6 (
    .a (net21),
    .b (net14),
    .out (net3)
  );
  and_cell and7 (
    .a (net19),
    .b (net16),
    .out (net22)
  );
  and_cell and8 (
    .a (net22),
    .b (net15),
    .out (net23)
  );
  and_cell and9 (
    .a (net19),
    .b (net16),
    .out (net24)
  );
  and_cell and10 (
    .a (net24),
    .b (net14),
    .out (net6)
  );
  and_cell and11 (
    .a (net18),
    .b (net17),
    .out (net25)
  );
  and_cell and12 (
    .a (net25),
    .b (net15),
    .out (net5)
  );
  and_cell and13 (
    .a (net18),
    .b (net17),
    .out (net26)
  );
  and_cell and14 (
    .a (net26),
    .b (net14),
    .out (net4)
  );
  and_cell and15 (
    .a (net18),
    .b (net16),
    .out (net27)
  );
  and_cell and16 (
    .a (net27),
    .b (net15),
    .out (net28)
  );
  and_cell and17 (
    .a (net18),
    .b (net16),
    .out (net29)
  );
  and_cell and18 (
    .a (net29),
    .b (net14),
    .out (net7)
  );
  or_cell or1 (
    .a (net23),
    .b (net28),
    .out (net8)
  );
endmodule

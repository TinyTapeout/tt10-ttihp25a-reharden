/* Automatically generated from https://wokwi.com/projects/425499738293047297 */

`default_nettype none

// verilator lint_off UNUSEDSIGNAL
// verilator lint_off PINCONNECTEMPTY

module tt_um_wokwi_425499738293047297(
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
  wire net2 = ui_in[0];
  wire net3 = ui_in[1];
  wire net4 = ui_in[2];
  wire net5 = ui_in[3];
  wire net6 = ui_in[4];
  wire net7 = ui_in[5];
  wire net8 = ui_in[6];
  wire net9 = ui_in[7];
  wire net10;
  wire net11;
  wire net12;
  wire net13;
  wire net14;
  wire net15;
  wire net16;
  wire net17 = 1'b0;
  wire net18 = 1'b1;
  wire net19 = 1'b1;
  wire net20 = 1'b0;
  wire net21 = 1'b1;
  wire net22;
  wire net23;
  wire net24;
  wire net25;
  wire net26;
  wire net27;
  wire net28;
  wire net29;
  wire net30;
  wire net31;
  wire net32;
  wire net33;
  wire net34;
  wire net35;
  wire net36;
  wire net37;
  wire net38;
  wire net39;
  wire net40;
  wire net41;
  wire net42;
  wire net43;
  wire net44;

  assign uo_out[0] = net10;
  assign uo_out[1] = net11;
  assign uo_out[2] = net12;
  assign uo_out[3] = net13;
  assign uo_out[4] = net14;
  assign uo_out[5] = net15;
  assign uo_out[6] = net16;
  assign uo_out[7] = net1;
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

  or_cell or1 (
    .a (net8),
    .b (net9),
    .out (net22)
  );
  or_cell or2 (
    .a (net7),
    .b (net22),
    .out (net23)
  );
  or_cell or3 (
    .a (net6),
    .b (net23),
    .out (net24)
  );
  or_cell or4 (
    .a (net4),
    .b (net24),
    .out (net25)
  );
  or_cell or5 (
    .a (net3),
    .b (net25),
    .out (net10)
  );
  or_cell or6 (
    .a (net3),
    .b (net4),
    .out (net26)
  );
  or_cell or7 (
    .a (net27),
    .b (net5),
    .out (net28)
  );
  or_cell or8 (
    .a (net28),
    .b (net8),
    .out (net29)
  );
  or_cell or9 (
    .a (net29),
    .b (net9),
    .out (net11)
  );
  or_cell or10 (
    .a (net2),
    .b (net4),
    .out (net30)
  );
  or_cell or11 (
    .a (net30),
    .b (net6),
    .out (net31)
  );
  or_cell or12 (
    .a (net31),
    .b (net5),
    .out (net32)
  );
  or_cell or13 (
    .a (net32),
    .b (net7),
    .out (net33)
  );
  or_cell or14 (
    .a (net33),
    .b (net8),
    .out (net34)
  );
  or_cell or15 (
    .a (net34),
    .b (net9),
    .out (net12)
  );
  or_cell or16 (
    .a (net3),
    .b (net4),
    .out (net35)
  );
  or_cell or18 (
    .a (net6),
    .b (net35),
    .out (net36)
  );
  or_cell or19 (
    .a (net7),
    .b (net36),
    .out (net37)
  );
  or_cell or20 (
    .a (net9),
    .b (net37),
    .out (net13)
  );
  or_cell or21 (
    .a (net3),
    .b (net7),
    .out (net38)
  );
  or_cell or22 (
    .a (net9),
    .b (net38),
    .out (net14)
  );
  or_cell or23 (
    .a (net7),
    .b (net6),
    .out (net39)
  );
  or_cell or24 (
    .a (net5),
    .b (net39),
    .out (net40)
  );
  or_cell or25 (
    .a (net9),
    .b (net40),
    .out (net15)
  );
  or_cell or26 (
    .a (net4),
    .b (net3),
    .out (net41)
  );
  or_cell or27 (
    .a (net5),
    .b (net41),
    .out (net42)
  );
  or_cell or28 (
    .a (net6),
    .b (net42),
    .out (net43)
  );
  or_cell or29 (
    .a (net7),
    .b (net43),
    .out (net44)
  );
  or_cell or30 (
    .a (net9),
    .b (net44),
    .out (net16)
  );
  or_cell or17 (
    .a (net26),
    .b (net2),
    .out (net27)
  );
endmodule

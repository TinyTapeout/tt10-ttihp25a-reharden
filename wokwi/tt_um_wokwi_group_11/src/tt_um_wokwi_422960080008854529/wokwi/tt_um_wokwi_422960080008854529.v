/* Automatically generated from https://wokwi.com/projects/422960080008854529 */

`default_nettype none

// verilator lint_off UNUSEDSIGNAL
// verilator lint_off PINCONNECTEMPTY

module tt_um_wokwi_422960080008854529(
  input  wire [7:0] ui_in,    // Dedicated inputs
  output wire [7:0] uo_out,    // Dedicated outputs
  input  wire [7:0] uio_in,    // IOs: Input path
  output wire [7:0] uio_out,    // IOs: Output path
  output wire [7:0] uio_oe,    // IOs: Enable path (active high: 0=input, 1=output)
  input ena,
  input clk,
  input rst_n
);
  wire net1 = ui_in[0];
  wire net2 = ui_in[1];
  wire net3 = ui_in[2];
  wire net4 = ui_in[3];
  wire net5 = ui_in[4];
  wire net6 = ui_in[5];
  wire net7 = ui_in[6];
  wire net8 = ui_in[7];
  wire net9;
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

  assign uo_out[0] = net9;
  assign uo_out[1] = net10;
  assign uo_out[2] = net11;
  assign uo_out[3] = net12;
  assign uo_out[4] = net13;
  assign uo_out[5] = net14;
  assign uo_out[6] = net15;
  assign uo_out[7] = net16;
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
    .a (net7),
    .b (net8),
    .out (net16)
  );
  or_cell or2 (
    .a (net6),
    .b (net7),
    .out (net15)
  );
  or_cell or3 (
    .a (net6),
    .b (net7),
    .out (net22)
  );
  not_cell not1 (
    .in (net22),
    .out (net9)
  );
  and_cell and1 (
    .a (net23),
    .b (net3),
    .out (net11)
  );
  and_cell and2 (
    .a (net1),
    .b (net24),
    .out (net10)
  );
  and_cell and3 (
    .a (net25),
    .b (net5),
    .out (net13)
  );
  and_cell and4 (
    .a (net5),
    .b (net26),
    .out (net14)
  );
  and_cell and5 (
    .a (net3),
    .b (net27),
    .out (net28)
  );
  not_cell not2 (
    .in (net28),
    .out (net12)
  );
  xor_cell xor1 (
    .a (net2),
    .b (net3),
    .out (net23)
  );
  xor_cell xor2 (
    .a (net3),
    .b (net4),
    .out (net27)
  );
  xor_cell xor3 (
    .a (net4),
    .b (net5),
    .out (net25)
  );
  xor_cell xor4 (
    .a (net5),
    .b (net6),
    .out (net26)
  );
  xor_cell xor5 (
    .a (net1),
    .b (net2),
    .out (net24)
  );
endmodule

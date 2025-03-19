/* Automatically generated from https://wokwi.com/projects/425498066535550977 */

`default_nettype none

// verilator lint_off UNUSEDSIGNAL
// verilator lint_off PINCONNECTEMPTY

module tt_um_wokwi_425498066535550977(
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
  wire net3 = ui_in[1];
  wire net4 = ui_in[2];
  wire net5 = ui_in[3];
  wire net6 = ui_in[4];
  wire net7 = ui_in[5];
  wire net8 = ui_in[6];
  wire net9 = ui_in[7];
  wire net10;
  wire net11;
  wire net12 = 1'b0;
  wire net13 = 1'b1;
  wire net14 = 1'b1;
  wire net15 = 1'b0;
  wire net16 = 1'b1;

  assign uo_out[0] = net1;
  assign uo_out[1] = net3;
  assign uo_out[2] = net10;
  assign uo_out[3] = net11;
  assign uo_out[4] = net6;
  assign uo_out[5] = net7;
  assign uo_out[6] = net8;
  assign uo_out[7] = net9;
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

  not_cell not5 (
    .out ()
  );
  not_cell not1 (
    .in (net2),
    .out (net10)
  );
  or_cell or1 (
    .a (net4),
    .b (net5),
    .out (net11)
  );
  mux_cell mux1 (
    .out ()
  );
  mux_cell mux2 (
    .out ()
  );
  mux_cell mux3 (
    .out ()
  );
  mux_cell mux4 (
    .out ()
  );
  mux_cell mux5 (
    .out ()
  );
endmodule

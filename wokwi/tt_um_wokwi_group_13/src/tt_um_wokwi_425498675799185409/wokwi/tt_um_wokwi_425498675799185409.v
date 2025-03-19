/* Automatically generated from https://wokwi.com/projects/425498675799185409 */

`default_nettype none

// verilator lint_off UNUSEDSIGNAL
// verilator lint_off PINCONNECTEMPTY

module tt_um_wokwi_425498675799185409(
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
  wire net5 = ui_in[2];
  wire net6 = ui_in[3];
  wire net7 = ui_in[4];
  wire net8 = ui_in[5];
  wire net9 = ui_in[6];
  wire net10 = ui_in[7];
  wire net11;
  wire net12;
  wire net13;
  wire net14;
  wire net15;
  wire net16;
  wire net17;
  wire net18;
  wire net19 = 1'b0;
  wire net20 = 1'b1;
  wire net21 = 1'b1;
  wire net22 = 1'b0;
  wire net23 = 1'b1;
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
  wire net45;
  wire net46;
  wire net47;
  wire net48;
  wire net49;
  wire net50;
  wire net51;
  wire net52;
  wire net53;
  wire net54;
  wire net55;
  wire net56;
  wire net57;
  wire net58 = 1'b0;
  wire net59;
  wire net60;
  wire net61;
  wire net62;
  wire net63;
  wire net64;
  wire net65 = 1'b0;
  wire net66;
  wire net67 = 1'b0;
  wire net68 = 1'b0;
  wire net69;
  wire net70 = 1'b0;
  wire net71;
  wire net72;
  wire net73;
  wire net74;
  wire net75;
  wire net76;
  wire net77;
  wire net78;
  wire net79;
  wire net80;
  wire net81 = 1'b0;
  wire net82;
  wire net83;
  wire net84 = 1'b0;
  wire net85;
  wire net86 = 1'b0;
  wire net87;
  wire net88 = 1'b0;
  wire net89;
  wire net90 = 1'b0;
  wire net91 = 1'b0;
  wire net92;
  wire net93;
  wire net94;
  wire net95;
  wire net96;

  assign uo_out[0] = net11;
  assign uo_out[1] = net12;
  assign uo_out[2] = net13;
  assign uo_out[3] = net14;
  assign uo_out[4] = net15;
  assign uo_out[5] = net16;
  assign uo_out[6] = net17;
  assign uo_out[7] = net18;
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

  mux_cell mux1 (
    .a (net24),
    .b (net25),
    .sel (net9),
    .out (net12)
  );
  mux_cell mux2 (
    .a (net25),
    .b (net24),
    .sel (net9),
    .out (net16)
  );
  mux_cell mux3 (
    .a (net26),
    .b (net27),
    .sel (net9),
    .out (net13)
  );
  mux_cell mux4 (
    .a (net27),
    .b (net26),
    .sel (net9),
    .out (net15)
  );
  mux_cell mux5 (
    .a (net28),
    .b (net29),
    .sel (net30),
    .out (net31)
  );
  mux_cell mux6 (
    .a (net29),
    .b (net28),
    .sel (net30),
    .out (net32)
  );
  mux_cell mux7 (
    .a (net33),
    .b (net34),
    .sel (net30),
    .out (net35)
  );
  mux_cell mux8 (
    .a (net34),
    .b (net33),
    .sel (net30),
    .out (net36)
  );
  mux_cell mux9 (
    .a (net37),
    .b (net38),
    .sel (net30),
    .out (net39)
  );
  mux_cell mux10 (
    .a (net38),
    .b (net37),
    .sel (net30),
    .out (net40)
  );
  dffsr_cell flop1 (
    .d (net41),
    .clk (net1),
    .s (net42),
    .r (net43),
    .q (net28),
    .notq ()
  );
  dffsr_cell flop2 (
    .d (net28),
    .clk (net1),
    .s (net44),
    .r (net45),
    .q (net33),
    .notq ()
  );
  dffsr_cell flop3 (
    .d (net33),
    .clk (net1),
    .s (net46),
    .r (net47),
    .q (net48),
    .notq ()
  );
  dffsr_cell flop4 (
    .d (net48),
    .clk (net1),
    .s (net49),
    .r (net50),
    .q (net51),
    .notq ()
  );
  dffsr_cell flop5 (
    .d (net51),
    .clk (net1),
    .s (net52),
    .r (net53),
    .q (net54),
    .notq ()
  );
  dffsr_cell flop6 (
    .d (net54),
    .clk (net1),
    .s (net55),
    .r (net56),
    .q (net57),
    .notq ()
  );
  mux_cell mux11 (
    .a (net58),
    .b (net3),
    .sel (net59),
    .out (net42)
  );
  mux_cell mux12 (
    .a (net58),
    .b (net60),
    .sel (net59),
    .out (net43)
  );
  mux_cell mux13 (
    .a (net58),
    .b (net4),
    .sel (net59),
    .out (net44)
  );
  mux_cell mux14 (
    .a (net58),
    .b (net61),
    .sel (net59),
    .out (net45)
  );
  mux_cell mux15 (
    .a (net58),
    .b (net5),
    .sel (net59),
    .out (net46)
  );
  mux_cell mux16 (
    .a (net58),
    .b (net62),
    .sel (net59),
    .out (net47)
  );
  mux_cell mux17 (
    .a (net58),
    .b (net6),
    .sel (net59),
    .out (net49)
  );
  mux_cell mux18 (
    .a (net58),
    .b (net63),
    .sel (net59),
    .out (net50)
  );
  mux_cell mux19 (
    .a (net58),
    .b (net7),
    .sel (net59),
    .out (net52)
  );
  mux_cell mux20 (
    .a (net58),
    .b (net64),
    .sel (net59),
    .out (net53)
  );
  not_cell not1 (
    .in (net3),
    .out (net60)
  );
  not_cell not2 (
    .in (net4),
    .out (net61)
  );
  not_cell not3 (
    .in (net5),
    .out (net62)
  );
  not_cell not4 (
    .in (net6),
    .out (net63)
  );
  mux_cell mux21 (
    .a (net58),
    .b (net65),
    .sel (net59),
    .out (net55)
  );
  mux_cell mux22 (
    .a (net58),
    .b (net66),
    .sel (net59),
    .out (net56)
  );
  not_cell not5 (
    .in (net7),
    .out (net64)
  );
  not_cell not6 (
    .in (net65),
    .out (net66)
  );
  not_cell not7 (
    .in (net2),
    .out (net59)
  );
  mux_cell mux23 (
    .a (net67),
    .b (net1),
    .sel (net10),
    .out (net18)
  );
  mux_cell mux24 (
    .a (net57),
    .b (net51),
    .sel (net8),
    .out (net41)
  );
  mux_cell mux25 (
    .a (net48),
    .b (net68),
    .sel (net8),
    .out (net34)
  );
  mux_cell mux26 (
    .a (net51),
    .b (net68),
    .sel (net8),
    .out (net29)
  );
  mux_cell mux27 (
    .a (net54),
    .b (net68),
    .sel (net8),
    .out (net37)
  );
  mux_cell mux28 (
    .a (net57),
    .b (net51),
    .sel (net8),
    .out (net38)
  );
  mux_cell mux29 (
    .a (net68),
    .b (net48),
    .sel (net8),
    .out (net69)
  );
  mux_cell mux30 (
    .a (net70),
    .b (net7),
    .sel (net8),
    .out (net30)
  );
  dffsr_cell flop7 (
    .d (net71),
    .clk (net1),
    .s (net72),
    .r (net73),
    .q (net74),
    .notq ()
  );
  dffsr_cell flop8 (
    .d (net74),
    .clk (net1),
    .s (net75),
    .r (net76),
    .q (net77),
    .notq ()
  );
  dffsr_cell flop9 (
    .d (net77),
    .clk (net1),
    .s (net78),
    .r (net79),
    .q (net80),
    .notq ()
  );
  dffsr_cell flop10 (
    .d (net80),
    .clk (net1),
    .s (net81),
    .r (net82),
    .q (net83),
    .notq ()
  );
  dffsr_cell flop11 (
    .d (net83),
    .clk (net1),
    .s (net84),
    .r (net82),
    .q (net85),
    .notq ()
  );
  dffsr_cell flop12 (
    .d (net85),
    .clk (net1),
    .s (net86),
    .r (net82),
    .q (net87),
    .notq ()
  );
  dffsr_cell flop13 (
    .d (net87),
    .clk (net1),
    .s (net88),
    .r (net82),
    .q (net89),
    .notq ()
  );
  dffsr_cell flop14 (
    .d (net89),
    .clk (net1),
    .s (net90),
    .r (net82),
    .q (net71),
    .notq ()
  );
  mux_cell mux31 (
    .a (net91),
    .b (net3),
    .sel (net82),
    .out (net72)
  );
  mux_cell mux32 (
    .a (net91),
    .b (net92),
    .sel (net82),
    .out (net73)
  );
  mux_cell mux33 (
    .a (net91),
    .b (net4),
    .sel (net82),
    .out (net75)
  );
  mux_cell mux34 (
    .a (net91),
    .b (net93),
    .sel (net82),
    .out (net76)
  );
  mux_cell mux35 (
    .a (net91),
    .b (net5),
    .sel (net82),
    .out (net78)
  );
  mux_cell mux36 (
    .a (net91),
    .b (net94),
    .sel (net82),
    .out (net79)
  );
  not_cell not8 (
    .in (net3),
    .out (net92)
  );
  not_cell not9 (
    .in (net4),
    .out (net93)
  );
  not_cell not10 (
    .in (net5),
    .out (net94)
  );
  not_cell not16 (
    .in (net2),
    .out (net82)
  );
  or_cell or1 (
    .a (net80),
    .b (net89),
    .out (net95)
  );
  mux_cell mux37 (
    .a (net31),
    .b (net74),
    .sel (net96),
    .out (net11)
  );
  mux_cell mux38 (
    .a (net35),
    .b (net77),
    .sel (net96),
    .out (net24)
  );
  mux_cell mux39 (
    .a (net36),
    .b (net87),
    .sel (net96),
    .out (net26)
  );
  mux_cell mux40 (
    .a (net32),
    .b (net85),
    .sel (net96),
    .out (net14)
  );
  mux_cell mux41 (
    .a (net39),
    .b (net83),
    .sel (net96),
    .out (net27)
  );
  mux_cell mux42 (
    .a (net40),
    .b (net71),
    .sel (net96),
    .out (net25)
  );
  mux_cell mux43 (
    .a (net69),
    .b (net95),
    .sel (net96),
    .out (net17)
  );
  and_cell and1 (
    .a (net6),
    .b (net8),
    .out (net96)
  );
endmodule

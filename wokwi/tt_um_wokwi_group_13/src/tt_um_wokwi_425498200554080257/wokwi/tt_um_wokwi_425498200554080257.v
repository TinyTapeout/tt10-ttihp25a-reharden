/* Automatically generated from https://wokwi.com/projects/425498200554080257 */

`default_nettype none

// verilator lint_off UNUSEDSIGNAL
// verilator lint_off PINCONNECTEMPTY

module tt_um_wokwi_425498200554080257(
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
  wire net12;
  wire net13;
  wire net14;
  wire net15;
  wire net16;
  wire net17;
  wire net18 = 1'b0;
  wire net19 = 1'b1;
  wire net20;
  wire net21;
  wire net22 = 1'b0;
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
  wire net58;
  wire net59;
  wire net60;
  wire net61;
  wire net62;
  wire net63;
  wire net64;
  wire net65;
  wire net66;
  wire net67 = 1'b1;
  wire net68 = 1'b0;
  wire net69 = 1'b0;
  wire net70 = 1'b1;
  wire net71 = 1'b1;
  wire net72;
  wire net73 = 1'b0;
  wire net74;
  wire net75;
  wire net76;
  wire net77;
  wire net78;
  wire net79;
  wire net80;
  wire net81;
  wire net82;
  wire net83;
  wire net84;
  wire net85;
  wire net86;
  wire net87;
  wire net88;
  wire net89 = 1'b1;
  wire net90;
  wire net91;
  wire net92;
  wire net93;
  wire net94;
  wire net95;
  wire net96;
  wire net97;
  wire net98;
  wire net99;
  wire net100;
  wire net101;
  wire net102;
  wire net103;
  wire net104;
  wire net105;
  wire net106;
  wire net107;
  wire net108 = 1'b0;
  wire net109 = 1'b1;

  assign uo_out[0] = net10;
  assign uo_out[1] = net11;
  assign uo_out[2] = net12;
  assign uo_out[3] = net13;
  assign uo_out[4] = net14;
  assign uo_out[5] = net15;
  assign uo_out[6] = net16;
  assign uo_out[7] = net17;
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

  dffsr_cell flop0 (
    .d (net20),
    .clk (net21),
    .s (net22),
    .r (net1),
    .q (net23),
    .notq ()
  );
  dffsr_cell flop1 (
    .d (net23),
    .clk (net21),
    .s (net22),
    .r (net1),
    .q (net24),
    .notq ()
  );
  dffsr_cell flop2 (
    .d (net25),
    .clk (net21),
    .s (net22),
    .r (net1),
    .q (net26),
    .notq ()
  );
  dffsr_cell flop3 (
    .d (net27),
    .clk (net21),
    .s (net22),
    .r (net1),
    .q (net25),
    .notq ()
  );
  dffsr_cell flop4 (
    .d (net24),
    .clk (net21),
    .s (net22),
    .r (net1),
    .q (net28),
    .notq ()
  );
  dffsr_cell flop5 (
    .d (net28),
    .clk (net21),
    .s (net22),
    .r (net1),
    .q (net29),
    .notq ()
  );
  dffsr_cell flop6 (
    .d (net29),
    .clk (net21),
    .s (net22),
    .r (net1),
    .q (net30),
    .notq ()
  );
  dffsr_cell flop7 (
    .d (net30),
    .clk (net21),
    .s (net22),
    .r (net1),
    .q (net27),
    .notq ()
  );
  dffsr_cell flop8 (
    .d (net31),
    .clk (net32),
    .s (net22),
    .r (net1),
    .q (net33),
    .notq ()
  );
  dffsr_cell flop9 (
    .d (net33),
    .clk (net32),
    .s (net22),
    .r (net1),
    .q (net34),
    .notq ()
  );
  dffsr_cell flop10 (
    .d (net35),
    .clk (net32),
    .s (net22),
    .r (net1),
    .q (net36),
    .notq ()
  );
  dffsr_cell flop11 (
    .d (net37),
    .clk (net32),
    .s (net22),
    .r (net1),
    .q (net35),
    .notq ()
  );
  dffsr_cell flop12 (
    .d (net34),
    .clk (net32),
    .s (net22),
    .r (net1),
    .q (net38),
    .notq ()
  );
  dffsr_cell flop13 (
    .d (net38),
    .clk (net32),
    .s (net22),
    .r (net1),
    .q (net39),
    .notq ()
  );
  dffsr_cell flop14 (
    .d (net39),
    .clk (net32),
    .s (net22),
    .r (net1),
    .q (net40),
    .notq ()
  );
  dffsr_cell flop15 (
    .d (net40),
    .clk (net32),
    .s (net22),
    .r (net1),
    .q (net37),
    .notq ()
  );
  dffsr_cell flop16 (
    .d (net41),
    .clk (net42),
    .s (net22),
    .r (net1),
    .q (net43),
    .notq ()
  );
  dffsr_cell flop17 (
    .d (net43),
    .clk (net42),
    .s (net22),
    .r (net1),
    .q (net44),
    .notq ()
  );
  dffsr_cell flop18 (
    .d (net45),
    .clk (net42),
    .s (net22),
    .r (net1),
    .q (net46),
    .notq ()
  );
  dffsr_cell flop19 (
    .d (net47),
    .clk (net42),
    .s (net22),
    .r (net1),
    .q (net45),
    .notq ()
  );
  dffsr_cell flop20 (
    .d (net44),
    .clk (net42),
    .s (net22),
    .r (net1),
    .q (net48),
    .notq ()
  );
  dffsr_cell flop21 (
    .d (net48),
    .clk (net42),
    .s (net22),
    .r (net1),
    .q (net49),
    .notq ()
  );
  dffsr_cell flop22 (
    .d (net49),
    .clk (net42),
    .s (net22),
    .r (net1),
    .q (net50),
    .notq ()
  );
  dffsr_cell flop23 (
    .d (net50),
    .clk (net42),
    .s (net22),
    .r (net1),
    .q (net47),
    .notq ()
  );
  dffsr_cell flop24 (
    .d (net51),
    .clk (net52),
    .s (net22),
    .r (net1),
    .q (net53),
    .notq ()
  );
  dffsr_cell flop25 (
    .d (net53),
    .clk (net52),
    .s (net22),
    .r (net1),
    .q (net54),
    .notq ()
  );
  dffsr_cell flop26 (
    .d (net55),
    .clk (net52),
    .s (net22),
    .r (net1),
    .q (net56),
    .notq ()
  );
  dffsr_cell flop27 (
    .d (net57),
    .clk (net52),
    .s (net22),
    .r (net1),
    .q (net55),
    .notq ()
  );
  dffsr_cell flop28 (
    .d (net54),
    .clk (net52),
    .s (net22),
    .r (net1),
    .q (net58),
    .notq ()
  );
  dffsr_cell flop29 (
    .d (net58),
    .clk (net52),
    .s (net22),
    .r (net1),
    .q (net59),
    .notq ()
  );
  dffsr_cell flop30 (
    .d (net59),
    .clk (net52),
    .s (net22),
    .r (net1),
    .q (net60),
    .notq ()
  );
  dffsr_cell flop31 (
    .d (net60),
    .clk (net52),
    .s (net22),
    .r (net1),
    .q (net57),
    .notq ()
  );
  not_cell not1 (
    .in (net2),
    .out (net61)
  );
  and_cell and1 (
    .a (net62),
    .b (net61),
    .out (net63)
  );
  and_cell and3 (
    .a (net63),
    .b (net4),
    .out (net20)
  );
  and_cell and4 (
    .a (net62),
    .b (net2),
    .out (net64)
  );
  and_cell and6 (
    .a (net64),
    .b (net4),
    .out (net31)
  );
  and_cell and7 (
    .a (net3),
    .b (net61),
    .out (net65)
  );
  and_cell and9 (
    .a (net65),
    .b (net4),
    .out (net41)
  );
  and_cell and2 (
    .a (net3),
    .b (net2),
    .out (net66)
  );
  and_cell and5 (
    .a (net66),
    .b (net4),
    .out (net51)
  );
  not_cell not2 (
    .in (net3),
    .out (net62)
  );
  dffsr_cell flop33 (
    .d (net72),
    .clk (net6),
    .s (net73),
    .r (net1),
    .q (net74),
    .notq ()
  );
  dffsr_cell flop34 (
    .d (net75),
    .clk (net6),
    .s (net73),
    .r (net1),
    .q (net76),
    .notq ()
  );
  dffsr_cell flop35 (
    .d (net77),
    .clk (net6),
    .s (net73),
    .r (net1),
    .q (net78),
    .notq ()
  );
  dffsr_cell flop36 (
    .d (net79),
    .clk (net6),
    .s (net73),
    .r (net1),
    .q (net80),
    .notq ()
  );
  dffsr_cell flop37 (
    .d (net81),
    .clk (net6),
    .s (net73),
    .r (net1),
    .q (net82),
    .notq ()
  );
  dffsr_cell flop38 (
    .d (net83),
    .clk (net6),
    .s (net73),
    .r (net1),
    .q (net84),
    .notq ()
  );
  dffsr_cell flop39 (
    .d (net85),
    .clk (net6),
    .s (net73),
    .r (net1),
    .q (net86),
    .notq ()
  );
  dffsr_cell flop40 (
    .d (net87),
    .clk (net6),
    .s (net73),
    .r (net1),
    .q (net88),
    .notq ()
  );
  mux_cell mux1 (
    .a (net53),
    .b (net43),
    .sel (net90),
    .out (net91)
  );
  mux_cell mux5 (
    .a (net33),
    .b (net23),
    .sel (net90),
    .out (net92)
  );
  mux_cell mux9 (
    .a (net91),
    .b (net92),
    .sel (net93),
    .out (net72)
  );
  and_cell and8 (
    .a (net5),
    .b (net63),
    .out (net21)
  );
  and_cell and10 (
    .a (net5),
    .b (net64),
    .out (net32)
  );
  and_cell and11 (
    .a (net5),
    .b (net65),
    .out (net42)
  );
  and_cell and12 (
    .a (net5),
    .b (net66),
    .out (net52)
  );
  not_cell not3 (
    .in (net7),
    .out (net90)
  );
  not_cell not4 (
    .in (net8),
    .out (net93)
  );
  mux_cell mux2 (
    .a (net54),
    .b (net44),
    .sel (net90),
    .out (net94)
  );
  mux_cell mux3 (
    .a (net34),
    .b (net24),
    .sel (net90),
    .out (net95)
  );
  mux_cell mux4 (
    .a (net94),
    .b (net95),
    .sel (net93),
    .out (net75)
  );
  mux_cell mux6 (
    .a (net58),
    .b (net48),
    .sel (net90),
    .out (net96)
  );
  mux_cell mux7 (
    .a (net38),
    .b (net28),
    .sel (net90),
    .out (net97)
  );
  mux_cell mux8 (
    .a (net96),
    .b (net97),
    .sel (net93),
    .out (net77)
  );
  mux_cell mux10 (
    .a (net59),
    .b (net49),
    .sel (net90),
    .out (net98)
  );
  mux_cell mux11 (
    .a (net39),
    .b (net29),
    .sel (net90),
    .out (net99)
  );
  mux_cell mux12 (
    .a (net98),
    .b (net99),
    .sel (net93),
    .out (net79)
  );
  mux_cell mux13 (
    .a (net60),
    .b (net50),
    .sel (net90),
    .out (net100)
  );
  mux_cell mux14 (
    .a (net40),
    .b (net30),
    .sel (net90),
    .out (net101)
  );
  mux_cell mux15 (
    .a (net100),
    .b (net101),
    .sel (net93),
    .out (net81)
  );
  mux_cell mux16 (
    .a (net57),
    .b (net47),
    .sel (net90),
    .out (net102)
  );
  mux_cell mux17 (
    .a (net37),
    .b (net27),
    .sel (net90),
    .out (net103)
  );
  mux_cell mux18 (
    .a (net102),
    .b (net103),
    .sel (net93),
    .out (net83)
  );
  mux_cell mux19 (
    .a (net55),
    .b (net45),
    .sel (net90),
    .out (net104)
  );
  mux_cell mux20 (
    .a (net35),
    .b (net25),
    .sel (net90),
    .out (net105)
  );
  mux_cell mux21 (
    .a (net104),
    .b (net105),
    .sel (net93),
    .out (net85)
  );
  mux_cell mux22 (
    .a (net56),
    .b (net46),
    .sel (net90),
    .out (net106)
  );
  mux_cell mux23 (
    .a (net36),
    .b (net26),
    .sel (net90),
    .out (net107)
  );
  mux_cell mux24 (
    .a (net106),
    .b (net107),
    .sel (net93),
    .out (net87)
  );
  and_cell and13 (
    .a (net74),
    .b (net9),
    .out (net10)
  );
  and_cell and14 (
    .a (net76),
    .b (net9),
    .out (net11)
  );
  and_cell and15 (
    .a (net78),
    .b (net9),
    .out (net12)
  );
  and_cell and16 (
    .a (net80),
    .b (net9),
    .out (net13)
  );
  and_cell and17 (
    .a (net82),
    .b (net9),
    .out (net14)
  );
  and_cell and18 (
    .a (net84),
    .b (net9),
    .out (net15)
  );
  and_cell and19 (
    .a (net86),
    .b (net9),
    .out (net16)
  );
  and_cell and20 (
    .a (net88),
    .b (net9),
    .out (net17)
  );
endmodule

/* Automatically generated from https://wokwi.com/projects/425498176219770881 */

`default_nettype none

// verilator lint_off UNUSEDSIGNAL
// verilator lint_off PINCONNECTEMPTY

module tt_um_wokwi_425498176219770881(
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
  wire net9;
  wire net10 = 1'b0;
  wire net11 = 1'b1;
  wire net12 = 1'b1;
  wire net13 = 1'b0;
  wire net14 = 1'b1;
  wire net15 = 1'b0;
  wire net16;
  wire net17;
  wire net18;
  wire net19 = 1'b1;
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
  wire net30;
  wire net31;
  wire net32;
  wire net33;
  wire net34;
  wire net35;
  wire net36;
  wire net37;
  wire net38;
  wire net39 = 1'b1;
  wire net40;
  wire net41;
  wire net42;
  wire net43 = 1'b0;
  wire net44;
  wire net45 = 1'b1;
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
  wire net59 = 1'b0;
  wire net60;
  wire net61 = 1'b1;
  wire net62;
  wire net63;
  wire net64;
  wire net65;
  wire net66;
  wire net67;
  wire net68;
  wire net69;
  wire net70;
  wire net71;
  wire net72;
  wire net73;
  wire net74;
  wire net75 = 1'b1;
  wire net76 = 1'b0;
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
  wire net89;
  wire net90;
  wire net91 = 1'b1;
  wire net92;
  wire net93 = 1'b0;
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
  wire net107 = 1'b1;
  wire net108 = 1'b0;
  wire net109;
  wire net110;
  wire net111;
  wire net112;
  wire net113;
  wire net114;
  wire net115;
  wire net116;
  wire net117;
  wire net118;
  wire net119;
  wire net120;
  wire net121;
  wire net122;
  wire net123 = 1'b1;
  wire net124 = 1'b0;
  wire net125;
  wire net126;
  wire net127;
  wire net128;
  wire net129;
  wire net130;
  wire net131;
  wire net132;
  wire net133;
  wire net134;
  wire net135;
  wire net136;
  wire net137;
  wire net138;
  wire net139;
  wire net140;

  assign uo_out[0] = net2;
  assign uo_out[1] = net3;
  assign uo_out[2] = net4;
  assign uo_out[3] = net5;
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

  mux_cell mux1 (
    .a (net15),
    .b (net15),
    .sel (net16),
    .out (net17)
  );
  mux_cell mux2 (
    .a (net15),
    .b (net15),
    .sel (net16),
    .out (net18)
  );
  mux_cell mux3 (
    .a (net15),
    .b (net19),
    .sel (net16),
    .out (net20)
  );
  mux_cell mux4 (
    .a (net19),
    .b (net19),
    .sel (net16),
    .out (net21)
  );
  mux_cell mux5 (
    .a (net15),
    .b (net15),
    .sel (net16),
    .out (net22)
  );
  mux_cell mux6 (
    .a (net15),
    .b (net15),
    .sel (net16),
    .out (net23)
  );
  mux_cell mux7 (
    .a (net15),
    .b (net15),
    .sel (net16),
    .out (net24)
  );
  mux_cell mux8 (
    .a (net15),
    .b (net19),
    .sel (net16),
    .out (net25)
  );
  mux_cell mux9 (
    .a (net17),
    .b (net18),
    .sel (net26),
    .out (net27)
  );
  mux_cell mux10 (
    .a (net20),
    .b (net21),
    .sel (net26),
    .out (net28)
  );
  mux_cell mux11 (
    .a (net22),
    .b (net23),
    .sel (net26),
    .out (net29)
  );
  mux_cell mux12 (
    .a (net24),
    .b (net25),
    .sel (net26),
    .out (net30)
  );
  mux_cell mux13 (
    .a (net29),
    .b (net30),
    .sel (net31),
    .out (net32)
  );
  mux_cell mux14 (
    .a (net27),
    .b (net28),
    .sel (net31),
    .out (net33)
  );
  mux_cell mux15 (
    .a (net33),
    .b (net32),
    .sel (net34),
    .out (net2)
  );
  dff_cell flop1 (
    .d (net35),
    .clk (net1),
    .q (net16),
    .notq ()
  );
  dff_cell flop2 (
    .d (net36),
    .clk (net1),
    .q (net26),
    .notq ()
  );
  dff_cell flop3 (
    .d (net37),
    .clk (net1),
    .q (net31),
    .notq ()
  );
  dff_cell flop4 (
    .d (net38),
    .clk (net1),
    .q (net34),
    .notq ()
  );
  xor_cell xor1 (
    .a (net16),
    .b (net39),
    .out (net35)
  );
  and_cell and1 (
    .a (net16),
    .b (net39),
    .out (net40)
  );
  xor_cell xor2 (
    .a (net26),
    .b (net40),
    .out (net36)
  );
  xor_cell xor3 (
    .a (net31),
    .b (net41),
    .out (net37)
  );
  xor_cell xor4 (
    .a (net34),
    .b (net42),
    .out (net38)
  );
  and_cell and2 (
    .a (net26),
    .b (net40),
    .out (net41)
  );
  and_cell and3 (
    .a (net31),
    .b (net41),
    .out (net42)
  );
  and_cell and4 (
    .a (net34),
    .b (net42),
    .out ()
  );
  mux_cell mux31 (
    .a (net43),
    .b (net43),
    .sel (net16),
    .out (net44)
  );
  mux_cell mux32 (
    .a (net43),
    .b (net45),
    .sel (net16),
    .out (net46)
  );
  mux_cell mux33 (
    .a (net43),
    .b (net45),
    .sel (net16),
    .out (net47)
  );
  mux_cell mux34 (
    .a (net45),
    .b (net45),
    .sel (net16),
    .out (net48)
  );
  mux_cell mux35 (
    .a (net43),
    .b (net43),
    .sel (net16),
    .out (net49)
  );
  mux_cell mux36 (
    .a (net43),
    .b (net43),
    .sel (net16),
    .out (net50)
  );
  mux_cell mux37 (
    .a (net43),
    .b (net43),
    .sel (net16),
    .out (net51)
  );
  mux_cell mux38 (
    .a (net45),
    .b (net43),
    .sel (net16),
    .out (net52)
  );
  mux_cell mux39 (
    .a (net44),
    .b (net46),
    .sel (net26),
    .out (net53)
  );
  mux_cell mux40 (
    .a (net47),
    .b (net48),
    .sel (net26),
    .out (net54)
  );
  mux_cell mux41 (
    .a (net49),
    .b (net50),
    .sel (net26),
    .out (net55)
  );
  mux_cell mux42 (
    .a (net51),
    .b (net52),
    .sel (net26),
    .out (net56)
  );
  mux_cell mux43 (
    .a (net55),
    .b (net56),
    .sel (net31),
    .out (net57)
  );
  mux_cell mux44 (
    .a (net53),
    .b (net54),
    .sel (net31),
    .out (net58)
  );
  mux_cell mux45 (
    .a (net58),
    .b (net57),
    .sel (net34),
    .out (net3)
  );
  mux_cell mux46 (
    .a (net59),
    .b (net59),
    .sel (net16),
    .out (net60)
  );
  mux_cell mux47 (
    .a (net61),
    .b (net61),
    .sel (net16),
    .out (net62)
  );
  mux_cell mux48 (
    .a (net59),
    .b (net61),
    .sel (net16),
    .out (net63)
  );
  mux_cell mux49 (
    .a (net59),
    .b (net59),
    .sel (net16),
    .out (net64)
  );
  mux_cell mux50 (
    .a (net61),
    .b (net61),
    .sel (net16),
    .out (net65)
  );
  mux_cell mux51 (
    .a (net59),
    .b (net59),
    .sel (net16),
    .out (net66)
  );
  mux_cell mux52 (
    .a (net61),
    .b (net59),
    .sel (net16),
    .out (net67)
  );
  mux_cell mux53 (
    .a (net61),
    .b (net61),
    .sel (net16),
    .out (net68)
  );
  mux_cell mux54 (
    .a (net60),
    .b (net62),
    .sel (net26),
    .out (net69)
  );
  mux_cell mux55 (
    .a (net63),
    .b (net64),
    .sel (net26),
    .out (net70)
  );
  mux_cell mux56 (
    .a (net65),
    .b (net66),
    .sel (net26),
    .out (net71)
  );
  mux_cell mux57 (
    .a (net67),
    .b (net68),
    .sel (net26),
    .out (net72)
  );
  mux_cell mux58 (
    .a (net71),
    .b (net72),
    .sel (net31),
    .out (net73)
  );
  mux_cell mux59 (
    .a (net69),
    .b (net70),
    .sel (net31),
    .out (net74)
  );
  mux_cell mux60 (
    .a (net74),
    .b (net73),
    .sel (net34),
    .out (net4)
  );
  mux_cell mux61 (
    .a (net75),
    .b (net76),
    .sel (net16),
    .out (net77)
  );
  mux_cell mux62 (
    .a (net76),
    .b (net75),
    .sel (net16),
    .out (net78)
  );
  mux_cell mux63 (
    .a (net75),
    .b (net75),
    .sel (net16),
    .out (net79)
  );
  mux_cell mux64 (
    .a (net76),
    .b (net75),
    .sel (net16),
    .out (net80)
  );
  mux_cell mux65 (
    .a (net75),
    .b (net75),
    .sel (net16),
    .out (net81)
  );
  mux_cell mux66 (
    .a (net75),
    .b (net76),
    .sel (net16),
    .out (net82)
  );
  mux_cell mux67 (
    .a (net75),
    .b (net75),
    .sel (net16),
    .out (net83)
  );
  mux_cell mux68 (
    .a (net76),
    .b (net75),
    .sel (net16),
    .out (net84)
  );
  mux_cell mux69 (
    .a (net77),
    .b (net78),
    .sel (net26),
    .out (net85)
  );
  mux_cell mux70 (
    .a (net79),
    .b (net80),
    .sel (net26),
    .out (net86)
  );
  mux_cell mux71 (
    .a (net81),
    .b (net82),
    .sel (net26),
    .out (net87)
  );
  mux_cell mux72 (
    .a (net83),
    .b (net84),
    .sel (net26),
    .out (net88)
  );
  mux_cell mux73 (
    .a (net87),
    .b (net88),
    .sel (net31),
    .out (net89)
  );
  mux_cell mux74 (
    .a (net85),
    .b (net86),
    .sel (net31),
    .out (net90)
  );
  mux_cell mux75 (
    .a (net90),
    .b (net89),
    .sel (net34),
    .out (net5)
  );
  mux_cell mux76 (
    .a (net91),
    .b (net91),
    .sel (net16),
    .out (net92)
  );
  mux_cell mux77 (
    .a (net91),
    .b (net93),
    .sel (net16),
    .out (net94)
  );
  mux_cell mux78 (
    .a (net91),
    .b (net91),
    .sel (net16),
    .out (net95)
  );
  mux_cell mux79 (
    .a (net91),
    .b (net91),
    .sel (net16),
    .out (net96)
  );
  mux_cell mux80 (
    .a (net91),
    .b (net91),
    .sel (net16),
    .out (net97)
  );
  mux_cell mux81 (
    .a (net91),
    .b (net91),
    .sel (net16),
    .out (net98)
  );
  mux_cell mux82 (
    .a (net91),
    .b (net91),
    .sel (net16),
    .out (net99)
  );
  mux_cell mux83 (
    .a (net91),
    .b (net93),
    .sel (net16),
    .out (net100)
  );
  mux_cell mux84 (
    .a (net92),
    .b (net94),
    .sel (net26),
    .out (net101)
  );
  mux_cell mux85 (
    .a (net95),
    .b (net96),
    .sel (net26),
    .out (net102)
  );
  mux_cell mux86 (
    .a (net97),
    .b (net98),
    .sel (net26),
    .out (net103)
  );
  mux_cell mux87 (
    .a (net99),
    .b (net100),
    .sel (net26),
    .out (net104)
  );
  mux_cell mux88 (
    .a (net103),
    .b (net104),
    .sel (net31),
    .out (net105)
  );
  mux_cell mux89 (
    .a (net101),
    .b (net102),
    .sel (net31),
    .out (net106)
  );
  mux_cell mux90 (
    .a (net106),
    .b (net105),
    .sel (net34),
    .out (net6)
  );
  mux_cell mux91 (
    .a (net107),
    .b (net108),
    .sel (net16),
    .out (net109)
  );
  mux_cell mux92 (
    .a (net108),
    .b (net107),
    .sel (net16),
    .out (net110)
  );
  mux_cell mux93 (
    .a (net107),
    .b (net108),
    .sel (net16),
    .out (net111)
  );
  mux_cell mux94 (
    .a (net107),
    .b (net107),
    .sel (net16),
    .out (net112)
  );
  mux_cell mux95 (
    .a (net108),
    .b (net108),
    .sel (net16),
    .out (net113)
  );
  mux_cell mux96 (
    .a (net107),
    .b (net108),
    .sel (net16),
    .out (net114)
  );
  mux_cell mux97 (
    .a (net108),
    .b (net108),
    .sel (net16),
    .out (net115)
  );
  mux_cell mux98 (
    .a (net107),
    .b (net107),
    .sel (net16),
    .out (net116)
  );
  mux_cell mux99 (
    .a (net109),
    .b (net110),
    .sel (net26),
    .out (net117)
  );
  mux_cell mux100 (
    .a (net111),
    .b (net112),
    .sel (net26),
    .out (net118)
  );
  mux_cell mux101 (
    .a (net113),
    .b (net114),
    .sel (net26),
    .out (net119)
  );
  mux_cell mux102 (
    .a (net115),
    .b (net116),
    .sel (net26),
    .out (net120)
  );
  mux_cell mux103 (
    .a (net119),
    .b (net120),
    .sel (net31),
    .out (net121)
  );
  mux_cell mux104 (
    .a (net117),
    .b (net118),
    .sel (net31),
    .out (net122)
  );
  mux_cell mux105 (
    .a (net122),
    .b (net121),
    .sel (net34),
    .out (net7)
  );
  mux_cell mux106 (
    .a (net123),
    .b (net124),
    .sel (net16),
    .out (net125)
  );
  mux_cell mux107 (
    .a (net123),
    .b (net123),
    .sel (net16),
    .out (net126)
  );
  mux_cell mux108 (
    .a (net123),
    .b (net123),
    .sel (net16),
    .out (net127)
  );
  mux_cell mux109 (
    .a (net123),
    .b (net123),
    .sel (net16),
    .out (net128)
  );
  mux_cell mux110 (
    .a (net123),
    .b (net124),
    .sel (net16),
    .out (net129)
  );
  mux_cell mux111 (
    .a (net123),
    .b (net123),
    .sel (net16),
    .out (net130)
  );
  mux_cell mux112 (
    .a (net123),
    .b (net123),
    .sel (net16),
    .out (net131)
  );
  mux_cell mux113 (
    .a (net123),
    .b (net123),
    .sel (net16),
    .out (net132)
  );
  mux_cell mux114 (
    .a (net125),
    .b (net126),
    .sel (net26),
    .out (net133)
  );
  mux_cell mux115 (
    .a (net127),
    .b (net128),
    .sel (net26),
    .out (net134)
  );
  mux_cell mux116 (
    .a (net129),
    .b (net130),
    .sel (net26),
    .out (net135)
  );
  mux_cell mux117 (
    .a (net131),
    .b (net132),
    .sel (net26),
    .out (net136)
  );
  mux_cell mux118 (
    .a (net135),
    .b (net136),
    .sel (net31),
    .out (net137)
  );
  mux_cell mux119 (
    .a (net133),
    .b (net134),
    .sel (net31),
    .out (net138)
  );
  mux_cell mux120 (
    .a (net138),
    .b (net137),
    .sel (net34),
    .out (net8)
  );
  and_cell and5 (
    .a (net16),
    .b (net26),
    .out (net139)
  );
  and_cell and6 (
    .a (net31),
    .b (net34),
    .out (net140)
  );
  and_cell and7 (
    .a (net139),
    .b (net140),
    .out (net9)
  );
endmodule

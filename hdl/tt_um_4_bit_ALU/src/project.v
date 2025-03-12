/*
 * Copyright (c) 2024 Your Name
 * SPDX-License-Identifier: Apache-2.0
 */

`default_nettype none

module tt_um_4_bit_ALU (
    input  wire [7:0] ui_in,    // Dedicated inputs
    output wire [7:0] uo_out,   // Dedicated outputs
    input  wire [7:0] uio_in,   // IOs: Input path
    output wire [7:0] uio_out,  // IOs: Output path
    output wire [7:0] uio_oe,   // IOs: Enable path (active high: 0=input, 1=output)
    input  wire       ena,      // always 1 when the design is powered, so you can ignore it
    input  wire       clk,      // clock
    input  wire       rst_n     // reset_n - low to reset
);

  // All output pins must be assigned. If not used, assign to 0.
  reg [3:0]in_a;
  reg [3:0]in_b;
  reg [7:0]out;
  reg [1:0]sel;
  assign uio_out = 1;
  assign uio_oe = 1;
  assign in_a = ui_in[3:0];
  assign in_b = ui_in[7:4];
  assign uo_out = out;
  assign sel = uio_in[1:0];

   
  always @(posedge clk) begin
    case(sel)
      2'b00: out[4:0] <= in_a + in_b;
      2'b01: out[4:0] <= in_a - in_b;
      2'b10: out[4:0] <= in_a * in_b;
      2'b11: out[3:0] <= in_a / in_b;
      default: out = 0;
    endcase
  end
  

  // List all unused inputs to prevent warnings
  wire _unused = &{ena, clk, rst_n, uio_oe, uio_out, uio_in[7:2], 1'b0};

endmodule

/*
 * Copyright (c) 2025 Andrew Tudoroi
 * SPDX-License-Identifier: Apache-2.0
 */


// gds fails with error on memory init file #(
    //   parameter INIT_FILE = "memory_init.txt"
    //   )
module memory (
      input i_clk,
      input i_write_enable,
      input i_read_enable,
      input [3:0] i_write_address,
      input [3:0] i_read_address,
      input [7:0] i_write_data, 
	  input i_w_caret_strobe, 
      output reg [7:0] o_read_data
  );
	  
	  parameter CARETCHR = 8'h5f;
      localparam DISPLAY_LENGTH = 15;
	  reg [7:0]  mem [0:15];
      reg [0:0] r_shift_enable = 1'b0;
	  integer i;

      always @(posedge i_clk) begin
          if (i_write_enable == 1'b1) begin
            
			if(i_write_address >= DISPLAY_LENGTH)begin
              if (r_shift_enable == 1'b1)  
                for(i = 15; i > 0; i = i -1 )begin
                    mem[i - 1] <= mem[i];	
                end
			end

            if (i_write_address == DISPLAY_LENGTH)
                r_shift_enable <= 1'b1;

            if (i_write_address < DISPLAY_LENGTH)
                r_shift_enable <= 1'b0;

             mem[i_write_address] <= i_write_data;
              
          end
          
          if (i_read_enable == 1'b1) begin
			  // Blink recent character position 
			  if (i_read_address == i_write_address) 
			  	// Replace w_data with caret using caret strobe signal 
			  	o_read_data <= (i_w_caret_strobe == 1'b1 ) ? mem[i_read_address] : CARETCHR;
			  else
              	o_read_data <= mem[i_read_address];
          end
      end

    //   initial if (INIT_FILE) begin
    //       $readmemh(INIT_FILE, mem);
    //   end

        initial begin
        mem[0]  = 8'h54; // 'T'
        mem[1]  = 8'h49; // 'I'
        mem[2]  = 8'h4E; // 'N'
        mem[3]  = 8'h59; // 'Y'
        mem[4]  = 8'h5F; // '_'
        mem[5]  = 8'h54; // 'T'
        mem[6]  = 8'h41; // 'A'
        mem[7]  = 8'h50; // 'P'
        mem[8]  = 8'h45; // 'E'
        mem[9]  = 8'h4F; // 'O'
        mem[10] = 8'h55; // 'U'
        mem[11] = 8'h54; // 'T'
        mem[12] = 8'h5F; // '_'
        mem[13] = 8'h31; // '1'
        mem[14] = 8'h30; // '0'
        mem[15] = 8'h21; // '!'
    end
    
endmodule
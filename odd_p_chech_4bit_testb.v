`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:22:05 01/11/2019
// Design Name:   odd_p_check_4bit
// Module Name:   C:/Xilinx/14.7/ISE_DS/wtverilog/odd_p_chech_4bit_testb.v
// Project Name:  wtverilog
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: odd_p_check_4bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module odd_p_chech_4bit_testb;

	// Inputs
	reg [3:0] i;
	reg p;

	// Outputs
	wire pc;

	// Instantiate the Unit Under Test (UUT)
	odd_p_check_4bit uut (
		.pc(pc), 
		.i(i), 
		.p(p)
	);

	initial begin
		i = 4'b0010; p = 0;
		#100 i = 4'b0011;	p = 1;	
		#100 i = 4'b0111;
		#100 i = 4'b1111; p = 0;
		#100 $finish;
	end
      
endmodule


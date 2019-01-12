`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:04:09 01/11/2019
// Design Name:   even_p_check_3bit
// Module Name:   C:/Xilinx/14.7/ISE_DS/wtverilog/even_p_cjheck_3bit_testb.v
// Project Name:  wtverilog
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: even_p_check_3bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module even_p_cjheck_3bit_testb;

	// Inputs
	reg [2:0] i;
	reg p;

	// Outputs
	wire pc;

	// Instantiate the Unit Under Test (UUT)
	even_p_check_3bit uut (
		.pc(pc), 
		.i(i), 
		.p(p)
	);

	initial begin
		i = 3'b000; p = 1;
		#100 i = 3'b001; 
		#100 i = 3'b101; p = 0;
		#100 i = 3'b111;
		#100 i = 3'b110; p = 1;
		#100 $finish;
	end
      
endmodule


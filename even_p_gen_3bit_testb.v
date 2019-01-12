`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:55:18 01/11/2019
// Design Name:   even_p_gen_3bit
// Module Name:   C:/Xilinx/14.7/ISE_DS/wtverilog/even_p_gen_3bit_testb.v
// Project Name:  wtverilog
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: even_p_gen_3bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module even_p_gen_3bit_testb;

	// Inputs
	reg [2:0] i;

	// Outputs
	wire p;

	// Instantiate the Unit Under Test (UUT)
	even_p_gen_3bit uut (
		.p(p), 
		.i(i)
	);

	initial begin
		i = 3'b000;
		#100 i = 3'b001;
		#100 i = 3'b101;
		#100 i = 3'b111;
		#100 i = 3'b110;
		#100 $finish;
	end
      
endmodule


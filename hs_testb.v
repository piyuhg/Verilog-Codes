`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:47:29 01/09/2019
// Design Name:   half_sub
// Module Name:   C:/Xilinx/14.7/ISE_DS/wtverilog/hs_testb.v
// Project Name:  wtverilog
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: half_sub
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module hs_testb;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire sub;
	wire bor;

	// Instantiate the Unit Under Test (UUT)
	half_sub uut (
		.sub(sub), 
		.bor(bor), 
		.a(a), 
		.b(b)
	);

	initial begin
		a = 0; b = 0;
		#100 b = 1;
		#100 a = 1;
		#100 b = 0;
		
		#100 $finish;
			

	end
      
endmodule


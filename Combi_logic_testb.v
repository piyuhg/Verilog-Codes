`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:32:12 01/11/2019
// Design Name:   combi_logic
// Module Name:   C:/Xilinx/14.7/ISE_DS/wtverilog/Combi_logic_testb.v
// Project Name:  wtverilog
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: combi_logic
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Combi_logic_testb;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire [7:0] o;

	// Instantiate the Unit Under Test (UUT)
	combi_logic uut (
		.o(o), 
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


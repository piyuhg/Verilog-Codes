`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:05:30 01/11/2019
// Design Name:   mux_41
// Module Name:   C:/Xilinx/14.7/ISE_DS/wtverilog/mux_41_testb.v
// Project Name:  wtverilog
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux_41
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mux_41_testb;

	// Inputs
	reg [3:0] i;
	reg [1:0] s;

	// Outputs
	wire o;

	// Instantiate the Unit Under Test (UUT)
	mux_41 uut (
		.o(o), 
		.i(i), 
		.s(s)
	);

	initial begin
		i = 4'b1010;
		s = 2'b00;
		#100 s = 2'b01;
		#100 s = 2'b11;
		#100 s = 2'b10;
		#100 $finish;
	end      
endmodule


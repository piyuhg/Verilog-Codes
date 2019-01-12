`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:44:40 01/11/2019
// Design Name:   gtb3bit
// Module Name:   C:/Xilinx/14.7/ISE_DS/wtverilog/gtb3bit_testb.v
// Project Name:  wtverilog
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: gtb3bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module gtb3bit_testb;

	// Inputs
	reg [2:0] g;

	// Outputs
	wire [2:0] b;

	// Instantiate the Unit Under Test (UUT)
	gtb3bit uut (
		.b(b), 
		.g(g)
	);

	initial begin
		g = 3'b000;
		#100 g = 3'b001;
		#100 g = 3'b010;
		#100 g = 3'b011;
		#100 g = 3'b100;
		#100 g = 3'b101;
		#100 g = 3'b110;
		#100 g = 3'b111;
		#100 $finish;
	end      
endmodule


`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:22:43 01/11/2019
// Design Name:   btg3bit
// Module Name:   C:/Xilinx/14.7/ISE_DS/wtverilog/btg3bit_testb.v
// Project Name:  wtverilog
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: btg3bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module btg3bit_testb;

	// Inputs
	reg [2:0] b;

	// Outputs
	wire [2:0] g;

	// Instantiate the Unit Under Test (UUT)
	btg3bit uut (
		.g(g), 
		.b(b)
	);

	initial begin
		b = 3'b000;
		#100 b = 3'b001;
		#100 b = 3'b010;
		#100 b = 3'b011;
		#100 b = 3'b100;
		#100 b = 3'b101;
		#100 b = 3'b110;
		#100 b = 3'b111;
		#100 $finish;
	end
      
endmodule


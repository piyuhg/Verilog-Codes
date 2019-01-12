`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:34:29 01/09/2019
// Design Name:   and_gate
// Module Name:   C:/Xilinx/14.7/ISE_DS/wtverilog/and_gate_testb.v
// Project Name:  wtverilog
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: and_gate
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module and_gate_testb;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire o;

	// Instantiate the Unit Under Test (UUT)
	and_gate uut (
		.o(o), 
		.a(a), 
		.b(b)
	);
	initial begin
		$monitor("a = %b, b = %b, o = %b",a,b,o);
		end
	initial begin
		a = 0; b = 0;
		#100 b = 1;
		#100 a = 1;
		#100 b = 0;

	end
      
endmodule


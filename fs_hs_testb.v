`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:00:16 01/11/2019
// Design Name:   fs_hs
// Module Name:   C:/Xilinx/14.7/ISE_DS/wtverilog/fs_hs_testb.v
// Project Name:  wtverilog
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fs_hs
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module fs_hs_testb;

	// Inputs
	reg a;
	reg b;
	reg bin;

	// Outputs
	wire sub;
	wire bor;

	// Instantiate the Unit Under Test (UUT)
	fs_hs uut (
		.sub(sub), 
		.bor(bor), 
		.a(a), 
		.b(b), 
		.bin(bin)
	);

	initial begin
		a = 0;
		b = 0;
		bin = 0;
		#100 b = 1;
		#100 a = 1;
		#100 b = 0;
		#100 bin = 1; a = 0;
		#100 b = 1;
		#100 a = 1;
		#100 b = 0;
		#100 $finish;

	end
      
endmodule


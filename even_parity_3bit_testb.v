`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:53:29 01/11/2019
// Design Name:   even_p_gen_3bit
// Module Name:   C:/Xilinx/14.7/ISE_DS/wtverilog/even_parity_3bit_testb.v
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

module even_parity_3bit_testb;

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
		// Initialize Inputs
		i = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule


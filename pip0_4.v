`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:17:53 01/04/2019 
// Design Name: 
// Module Name:    pip0_4 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module pip0_4(q, i, clk);
	input clk;
	input [3:0]i;
	output reg [3:0]q;
	
	always @(posedge clk)
		q <= i;

endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:55:32 01/04/2019 
// Design Name: 
// Module Name:    siso_4 
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
module siso_4(q, d, clk);
	input clk;
	input d;
	output reg q;
	reg [2:0]q1;
	always @(posedge clk)
	begin
		#10	q1[0] <= d;
		#10 	q1[1] <= q1[0];
		#10	q1[2] <= q1[1];
		#10	q <= q1[2];
	end
	
endmodule

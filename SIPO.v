`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:13:34 01/07/2019 
// Design Name: 
// Module Name:    SIPO 
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
module SIPO(q, clk, d, rst);
	input d, clk, rst;
	output [3:0]q;
	reg [3:0]q1;
	always @(posedge clk)
	begin
		if(rst == 1'b1)
			q1 <= 4'b0000;
		else
			begin
				q1 <= q1 << 1'b1;
				q1[0] <= d;
			end
	end
	assign q = q1;	
endmodule


`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:42:09 01/11/2019 
// Design Name: 
// Module Name:    piso 
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
module piso(q, d, clk, rst);
	input [3:0]d;
	input clk, rst;
	output reg q;
	reg [3:0] temp;
	
	always @(posedge clk, posedge rst)
	begin
		if(rst) begin
			q <= 0;
			temp <= d;
		end
		else begin
			q <= temp[0];
			temp <= temp >> 1;
		end
	end
endmodule

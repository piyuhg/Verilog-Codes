`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:23:45 01/02/2019 
// Design Name: 
// Module Name:    decoder38 
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
module decoder38(i, o );
	input [2:0]i;
	output [7:0]o;
	
	assign o[0] = ~i[0]&~i[1]&~i[2];
	assign o[1] = i[0]&~i[1]&~i[2];
	assign o[2] = ~i[0]&i[1]&~i[2];
	assign o[3] = i[0]&i[1]&~i[2];
	assign o[4] = ~i[0]&~i[1]&i[2];
	assign o[5] = i[0]&~i[1]&i[2];
	assign o[6] = ~i[0]&i[1]&i[2];
	assign o[7] = i[0]&i[1]&i[2];
endmodule

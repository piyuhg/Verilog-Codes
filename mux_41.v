`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:22:22 12/31/2018 
// Design Name: 
// Module Name:    mux_41 
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
module mux_41(o, i , s);
	input [3:0]i;
	input [1:0]s;
	output o;
	wire w1, w2, w3, w4, w5, w6;

	not not1(w1, s[0]);
	not not2(w2, s[1]);
	and and1(w3, i[3], s[1], s[0]);
	and and2(w4, i[2], s[1], w1);
	and and3(w5, i[1], w2, s[0]);
	and and4(w6, i[0], w2, w1);
	or or1(o, w3, w4, w5, w6);
	


endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:06:24 12/31/2018 
// Design Name: 
// Module Name:    mux_21 
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
module mux_21(o, i, s);
	input [1:0]i;
	input s;
	output o;
	wire w1, w2, w3;
	
	not not1(w1, s);
	and and1(w2, i[0], w1);
	and and2(w3, i[1], s);
	or or1(o, w2, w3);
	

endmodule

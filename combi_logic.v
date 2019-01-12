`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:44:31 01/01/2019 
// Design Name: 
// Module Name:    combi_logic 
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
module combi_logic(o, a, b);
	input a, b;
	output [7:0]o;
	wire w1, w2, w3, w4, w5, w6;	
	not not1(w1, a);
	not not2(w2, b);	
	and and1(w3, w1, w2);
	and and2(w4, a, w2);
	and and3(w5, a, b);
	and and4(w6, w1, b);	
	or or1(o[0], w5, w6);
	buf buf1(o[1], w4);
	buf buf2(o[2], w3);
	or or2(o[3], w3, w4);
	buf buf3(o[4], w6);
	buf buf4(o[5], w5);
	or or3(o[6], w3, w5);
	nor nor1(o[7], w3, w5);
endmodule

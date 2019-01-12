
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:46:36 12/31/2018 
// Design Name: 
// Module Name:    full_sub 
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
module full_sub(sub, bor, a, b, bin );
	input a, b, bin;
	output sub, bor;
	wire w1, w2, w3, w4, w5;
	xor x1(w1, a, b);
	xor x2(sub, w1, bin);
	not not1(w2, a);
	and and1(w3, w2, b);
	not not2(w4, w1);
	and and2(w5, w4, bin);
	or or1(bor, w3, w5);

endmodule

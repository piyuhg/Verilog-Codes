`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:55:20 12/31/2018 
// Design Name: 
// Module Name:    fs_hs 
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
module fs_hs(sub, bor, a, b, bin );
	input a, b, bin;
	output sub, bor;
	wire w1, w2, w3;
	half_sub hs1(.sub(w1), .bor(w2), .a(a), .b(b));
	half_sub hs2(.sub(sub), .bor(w3), .a(w1), .b(bin));
	or or1(bor, w2, w3);

endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:32:26 12/31/2018 
// Design Name: 
// Module Name:    fa_ha 
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
module fa_ha(sum, carry, a, b, cin);
	input a, b, cin;
	output sum, carry;
	wire w1, w2, w3;
	half_adder ha1(w1, w2, a, b );
	half_adder ha2(sum, w3, w1, cin);
	or or1(carry, w2, w3);


endmodule

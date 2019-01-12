`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:17:56 01/01/2019 
// Design Name: 
// Module Name:    btg3bit 
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
module btg3bit(g, b);
	input [2:0]b;
	output [2:0]g;
	
	buf buf1(g[2], b[2]);
	xor xor1(g[1], b[2], b[1]);
	xor xor2(g[0], b[1], b[0]);


endmodule

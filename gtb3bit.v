`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:25:38 01/01/2019 
// Design Name: 
// Module Name:    gtb3bit 
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
module gtb3bit(b, g );
	input [2:0]g;
	output [2:0]b;
	
	buf b1(b[2], g[2]);
	xor x1(b[1], g[2], g[1]);
	xor x2(b[0], g[2], g[1], g[0]);
	
endmodule

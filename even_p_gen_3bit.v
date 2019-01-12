`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:06:51 01/01/2019 
// Design Name: 
// Module Name:    even_p_gen_3bit 
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
module even_p_gen_3bit(p, i);
	input [2:0]i;
	output p;
	
	xor xor1(p, i[2], i[1], i[0]);
	


endmodule

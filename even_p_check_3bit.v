`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:27:44 01/01/2019 
// Design Name: 
// Module Name:    even_p_check_3bit 
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
module even_p_check_3bit(pc, i, p);
	input [2:0]i;
	input p;
	output pc;
	
	xor xor1(pc, i[2], i[1], i[0], p);

endmodule

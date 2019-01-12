`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:12:04 01/01/2019 
// Design Name: 
// Module Name:    odd_p_gen_4bit 
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
module odd_p_gen_4bit(p, i );
	input [3:0]i;
	output p;
	
	xnor xnor1(p, i[3], i[2], i[1], i[0]);
	

endmodule

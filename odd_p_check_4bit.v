`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:32:24 01/01/2019 
// Design Name: 
// Module Name:    odd_p_check_4bit 
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
module odd_p_check_4bit(pc, i, p );
	input [3:0]i;
	input p;
	output pc;
	
	xnor xnor1(pc, i[3], i[2], i[1], i[0], p);

endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:05:30 01/02/2019 
// Design Name: 
// Module Name:    encoder_83 
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
module encoder_83(o,i);
	input [7:0]i;
	output [2:0]o;
	
	assign o[0] = i[1] | i[3] | i[5] | i[7] ;
	assign o[1] = i[2] | i[3] | i[6] | i[7] ;
	assign o[2] = i[4] | i[5] | i[6] | i[7] ;

endmodule

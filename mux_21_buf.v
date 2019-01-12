`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:49:11 12/31/2018 
// Design Name: 
// Module Name:    mux_21_buf 
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
module mux_21_buf(o, i, s);
	input [1:0]i;
	input s;
	output o;
	
	bufif0 buf00(o, i[0], s);
	bufif1 buf10(o, i[1], s);


endmodule

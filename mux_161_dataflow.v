`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:57:34 01/02/2019 
// Design Name: 
// Module Name:    mux_161_dataflow 
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
module mux_161_dataflow(o, i, s);
	input [15:0]i;
	input [3:0]s;
	output o;
	
	wire w1, w2, w3, w4;
	
	assign w1 = s[2]&s[1]&s[0]&i[7] | s[2]&s[1]&~s[0]&i[6] | s[2]&~s[1]&s[0]&i[5] | s[2]&~s[1]&~s[0]&i[4] | ~s[2]&s[1]&s[0]&i[3] | ~s[2]&s[1]&~s[0]&i[2] | ~s[2]&~s[1]&s[0]&i[1] | ~s[2]&~s[1]&~s[0]&i[0] ;
	assign w2 = s[0]&s[1]&i[11] | ~s[0]&s[1]&i[10] | s[0]&~s[1]&i[9] | ~s[0]&~s[1]&i[8];
	assign w3 = s[0]&s[1]&i[15] | ~s[0]&s[1]&i[14] | s[0]&~s[1]&i[13] | ~s[0]&~s[1]&i[12];
	assign w4 = ~s[2]&w2 | s[2]&w3;
	assign o = ~s[3]&w1 | s[3]&w4;

endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:49:33 01/02/2019 
// Design Name: 
// Module Name:    mux_81_dataflow 
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
module mux_81_dataflow(o, i, s);
	input [7:0]i;
	input [2:0]s;
	output o;
	
	assign o = s[2]&s[1]&s[0]&i[7] | s[2]&s[1]&~s[0]&i[6] | s[2]&~s[1]&s[0]&i[5] | s[2]&~s[1]&~s[0]&i[4] | ~s[2]&s[1]&s[0]&i[3] | ~s[2]&s[1]&~s[0]&i[2] | ~s[2]&~s[1]&s[0]&i[1] | ~s[2]&~s[1]&~s[0]&i[0] ;

endmodule

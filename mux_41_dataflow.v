`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:44:51 01/02/2019 
// Design Name: 
// Module Name:    mux_41_dataflow 
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
module mux_41_dataflow(o, i, s);
	input [3:0]i;
	input [1:0]s;
	output o;
	
	assign o = s[0]&s[1]&i[3] | ~s[0]&s[1]&i[2] | s[0]&~s[1]&i[1] | ~s[0]&~s[1]&i[0];

endmodule

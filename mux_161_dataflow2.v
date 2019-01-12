`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:17:19 01/02/2019 
// Design Name: 
// Module Name:    mux_161_dataflow2 
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
module mux_161_dataflow2(o, i, s);
	input [15:0]i;
	input [3:0]s;
	output o;	
	mux_81_dataflow mux1(w1, i[7:0], s[2:0]);
	mux_41_dataflow mux2(w2, i[11:8], s[1:0]);
	mux_41_dataflow mux3(w3, i[15:12], s[1:0]);
	mux_21_dataflow mux4(w4, {w3, w2}, s[2]);
	mux_21_dataflow mux5(o, {w4,w1}, s[3]);
endmodule

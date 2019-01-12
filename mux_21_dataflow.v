`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:46:26 01/02/2019 
// Design Name: 
// Module Name:    mux_21_dataflow 
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
module mux_21_dataflow(o, i , s);
	input [1:0]i;
	input s;
	output o;
	
	assign o = ~s&i[0] | s&i[1];

endmodule

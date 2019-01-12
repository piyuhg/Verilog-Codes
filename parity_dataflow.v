`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:31:56 01/02/2019 
// Design Name: 
// Module Name:    parity_dataflow 
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
module parity_dataflow(par,data);
	parameter size = 8 ;
	input [size-1:0]data;
	output par;
	
	assign par = ^data;


endmodule

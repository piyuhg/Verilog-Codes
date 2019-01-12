`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:52:19 01/07/2019 
// Design Name: 
// Module Name:    multiplier 
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
////////////////////////////////////////////////////////////////////////////////
//
module multiplier(prod, a, b);
	input [7:0] a, b;
	output reg [15:0] prod;
	`include "mult_func.v"
	
	always @(a, b)
	prod <= mult(a, b);
endmodule

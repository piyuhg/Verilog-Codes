`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:20:44 01/09/2019 
// Design Name: 
// Module Name:    fsm3 
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
module fsm3(o, x, clk, rst);
	input x, clk, rst;
	output reg o;
	reg [3:0] state, next_state;
	parameter A =3'b000, B = 3'b001, C = 3'b010, D = 3'b011, E = 3'b100;
	
	

endmodule

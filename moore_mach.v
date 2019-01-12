`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:54:40 01/07/2019 
// Design Name: 
// Module Name:    moore_mach 
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
module moore_mach(y, x, rst, clk);
	input x, rst, clk;
	output reg y;
	
	reg [2:0] state, next_state;
	parameter A = 3'b000, B = 3'b001, C = 3'b010, D = 3'b011, E = 3'b100;
	
	always@ (x, state)
	begin 
		case(state)
			A : next_state = x?B:A;
			B : next_state = x?C:A;
			C : next_state = x?C:D;
			D : next_state = x?E:A;
			E : next_state = x?C:A;
			default : next_state = 3'bxxx;
		endcase
	end
	
endmodule

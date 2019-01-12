`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:56:23 01/09/2019 
// Design Name: 
// Module Name:    fsm1 
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
module fsm1(o, clk, x, rst);
	input x, clk, rst;
	output reg o;
	reg [1:0] state, next_state;
	parameter A =2'b00, B = 2'b01, C = 2'b11, D = 2'b10; 
	always @(x, state) begin
		case(state)
			A : begin 
					next_state = x ? B : A;
					o = 0;
				 end
			B : begin
					next_state = x ? C : A;
					o = x ? 0 : 1;
				 end
			C : begin
					next_state = x ? D : A;
					o = x ? 0 : 1;
				 end
			D : begin
					next_state = x ? D : A;
					o = x ? 0 : 1;
				 end
		endcase
	end
	always @(posedge clk)
		begin
		if(rst)
			state <= A;
		else
			state <= next_state;
		end
endmodule

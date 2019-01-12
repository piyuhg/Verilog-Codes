`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:37:13 01/02/2019 
// Design Name: 
// Module Name:    carry_look_ahead_adder_4bit 
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
module cla_adder_4bit(sum, cout, a, b, cin  );
	input [3:0] a, b;
	input cin;
	output [3:0] sum;
	output cout;
	wire [3:0]p, g;
	half_adder ha1(p[0], g[0], a[0], b[0]);
	half_adder ha2(p[1], g[1], a[1], b[1]);
	half_adder ha3(p[2], g[2], a[2], b[2]);
	half_adder ha4(p[3], g[3], a[3], b[3]);
	
	wire c1, c2, c3;
	
	assign c1 = g[0] | cin&p[0];
	assign c2 = g[1] | p[1]&c1;
	assign c3 = g[2] | p[2]&c2;
	assign cout = g[3] | p[3]&c3;
	
	assign sum = p[3:0]^{c3, c2, c1, cin};
	
	

endmodule

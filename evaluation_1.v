`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:51:35 01/02/2019 
// Design Name: 
// Module Name:    evaluation_1 
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
module evaluation_1;
	wire [7:0]a, b;
	wire [8:0]c1, c2;
	wire c3;
	wire [15:0]d;	
	assign a = 255;
	assign b = 155;
	assign c1 = a + b;
	assign c2 = 9'b000000001 + a + b;
	assign d = {a, b};
	assign c3 = &b;
	
	
endmodule

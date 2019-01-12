`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:09:02 01/11/2019 
// Design Name: 
// Module Name:    master_slave_dff 
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
module master_slave_dff(q, d, clk);
	input d, clk;
	output reg q;
	reg temp;
	always @(posedge clk)
		temp <= d;
	always @(negedge clk)
		q <= temp;
endmodule

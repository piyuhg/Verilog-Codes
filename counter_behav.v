`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:03:19 01/04/2019 
// Design Name: 
// Module Name:    counter_behav 
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
module counter_behav(count, data_in, clk, reset, up, load);
	parameter n = 8;
	input [n-1:0]data_in;
	input reset, up, load, clk;
	output reg [n-1:0]count; 
	always @(posedge clk)
		begin
			if(reset)
				count <= 0;
			else
				if(load)
					count <= data_in;
				else
					if(up)
						count <= count + 1;
					else
						count <= count - 1;	
		end					
endmodule

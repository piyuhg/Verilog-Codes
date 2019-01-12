`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:10:45 01/02/2019 
// Design Name: 
// Module Name:    evaluation_2 
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
module evaluation_2(data);
	input [3:0] data;
	wire [3:0] ls, rs, als, ars, cls, crs;
	assign ls =  data << 1;
	assign rs =  data >> 1;
	assign als = data <<< 1;
	assign ars = $signed(data) >>> 1;
	assign cls = {data[2:0],data[3]}; 
	assign crs = {data[0],data[3:1]};

endmodule

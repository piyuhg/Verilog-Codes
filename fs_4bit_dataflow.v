`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:25:56 01/02/2019 
// Design Name: 
// Module Name:    fs_4bit_dataflow 
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
module fs_4bit_dataflow(diff, bout, a, b, bin);
	input [3:0] a, b;
	input bin;
	output [3:0] diff;
	output bout;
	
	/*assign diff[0] = a[0]^b[0]^bin;
	assign w1 = (a[0]~^b[0])&bin | ~a[0]&b[0];
	
	assign diff[1] = a[1]^b[1]^w1;
	assign w2 = (a[1]~^b[1])&w1 | ~a[1]&b[1];
	
	assign diff[2] = a[2]^b[2]^w2;
	assign w3 = (a[2]~^b[2])&w2 | ~a[2]&b[2];
	
	assign diff[3] = a[3]^b[3]^w3;
	assign bout = (a[3]~^b[3])&w3 | ~a[3]&b[3];
*/
	assign {bout, diff} = a - b - bin;

endmodule

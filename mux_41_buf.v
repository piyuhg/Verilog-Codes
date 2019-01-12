`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:54:16 12/31/2018 
// Design Name: 
// Module Name:    mux_41_buf 
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
module mux_41_buf(o, i , s );
	input [3:0]i;
	input [1:0]s;
	output o;
	wire w1, w2;
	
	bufif0 buf1(w1, i[0], s[0]);
	bufif1 buf2(w1, i[1], s[0]);
	
	bufif0 buf3(w2, i[2], s[0]);
	bufif1 buf4(w2, i[3], s[0]);
	
	bufif0 buf5(o, w1, s[1]);
	bufif1 buf6(o, w2, s[1]);
	
	

endmodule

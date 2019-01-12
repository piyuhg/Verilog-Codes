`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:38:07 12/31/2018 
// Design Name: 
// Module Name:    bufif1 
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
module bufif1(o, c, i);
	input c, i;
	output o;
	
	bufif1 buf1(o, c, i);

endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:45:54 01/02/2019 
// Design Name: 
// Module Name:    gtob_btog_3bit 
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
module gtob_btog_3bit(gout,bout, bin, gin);
	input [2:0]bin, gin;
	output [2:0]gout, bout;
	
	assign gout = {bin[2], bin[2]^bin[1],bin[1]^bin[0]};
	assign bout = {gin[2], gin[2]^gin[1],^gin};

endmodule

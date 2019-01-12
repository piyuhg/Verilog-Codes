`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:41:24 12/31/2018 
// Design Name: 
// Module Name:    half_sub 
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
module half_sub(sub, bor, a, b  );
	input a, b;
	output sub, bor;
	wire w1;
	xor xor1(sub, a, b);
	not not1(w1, a);
	and and1(bor, w1, b);

endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:25:00 12/31/2018 
// Design Name: 
// Module Name:    full_adder 
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
module full_adder(
    input a,
    input b,
    input cin,
    output sum,
    output carry
    );
	 wire w1, w2, w3;
	 xor x1(w1, a, b);
	 xor x2(sum, w1, cin);
	 and a1(w2, a, b );
	 and a2(w3, cin, w1);
	 or or1(carry, w2, w3);


endmodule

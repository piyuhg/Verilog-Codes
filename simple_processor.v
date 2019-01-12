`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:35:15 01/07/2019 
// Design Name: 
// Module Name:    simple_processor 
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
module simple_processor(instruction, outp);
	input [31:0] instruction;
	output [7:0] outp;
	reg [7:0] outp;
	reg func;
	reg [7:0] op1, op2;
	function [16:0] decode_add;
		input [31:0] instr;
		reg add_func;
		reg [7:0] opcode, opr1, opr2;
	begin
		opcode = instr[31:24];
		opr1 = instr[7:0];
		case(opcode)
			8'b10001000 : begin
								add_func = 1;
								opr2 = instr[15:8];
							  end
			8'b10001001 : begin
								add_func = 0;
								opr2 = instr[15:8];
							  end
			8'b10001010 : begin
								add_func = 1;
								opr2 = 8'b00000001;
							  end						
			default :	 begin
								add_func = 1;
								opr2 = instr[15:8];
							  end
		endcase
		decode_add = {add_func, opr2, opr1};
	end
	endfunction
	
	always@(instruction)
	begin
		{func, op1, op2} = decode_add(instruction);
		if(func == 1)
			outp = op1 + op2;
		else
			outp = op1 - op2;
	end
endmodule

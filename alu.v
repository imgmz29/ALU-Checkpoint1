module alu(data_operandA, data_operandB, ctrl_ALUopcode, ctrl_shiftamt, data_result, isNotEqual, isLessThan, overflow);

   input [31:0] data_operandA, data_operandB;
   input [4:0] ctrl_ALUopcode, ctrl_shiftamt;

   output [31:0] data_result;
   output isNotEqual, isLessThan, overflow;



   wire cout;
	wire second_out;
   add_sub add_sub1(data_operandA, data_operandB, ctrl_ALUopcode[0], cout, data_result, overflow, second_out);
endmodule
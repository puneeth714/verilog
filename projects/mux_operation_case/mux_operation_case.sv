module mux_operation_case(clk,op_code,a_in,b_in,result_out);
input clk;
input [1:0] op_code;
input [3:0] a_in,b_in;
output reg[3:0] result_out;
always_ff @( posedge clk)
case(op_code)
2’d0 : result_out <= a_in | b_in;
2’d1 : result_out <=a_in ˆ b_in;
2’d2 : result_out <= a_in & b_in;
default : result_out <= ~a_in;
endcase
endmodule
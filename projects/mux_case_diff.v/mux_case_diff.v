module mux_case_diff(a_in,b_in,s,clk,out);
input clk;
input [7:0]a_in;
input [7:0]b_in;
input [1:0]s;
output reg [7:0]out;
always @(posedge clk)
begin
case(s)
2'd0:out<=a_in^b_in;
2'd1:out<=a_in&b_in;
2'd2:out<=a_in | b_in;
default:out<=~a_in;
endcase
end
endmodule
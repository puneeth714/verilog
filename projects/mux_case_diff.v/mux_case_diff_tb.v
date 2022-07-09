`include "mux_case_diff.v"
module mux_case_diff_tb;
reg [7:0]a_in;
reg [7:0]b_in;
reg [1:0]s;
reg clk;
wire [7:0]out;
//module instantiation mux_case_diff
mux_case_diff mux(a_in,b_in,s,clk,out);
initial begin 
$dumpfile("check.vcd");
$dumpvars(0,mux_case_diff_tb);

clk=0;
s=0;
a_in=8'b0000_1010;
b_in=8'b1010_1100;
end
//clock generation

always #10 clk=~clk;

//test
always @(clk)
begin

$monitor(a_in,b_in,out);
s=~s;
a_in=a_in+1'b1;
b_in=a_in+1'b1;
end
initial #400 $finish;
endmodule

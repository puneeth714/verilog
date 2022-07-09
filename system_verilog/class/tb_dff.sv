// Code your testbench here
// or browse Examples
`include "d_ff.sv"
module tb;
bit clk,reset,d_in;
logic q,q_bar;
d_ff F1(.clk(clk),.reset(reset),.d_in(d_in),.q(q),.q_bar(q_bar));
always #5 clk = clk+1;
initial begin
reset = 1;
#50ns;
reset = 0;
end
initial begin
d_in = 0;
#10ns;
d_in = 1;
#20ns;
d_in = 0;
#50ns;
d_in = 1;
end
initial begin
#200ns;
;
end
endmodule

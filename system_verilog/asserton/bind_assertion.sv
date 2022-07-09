module bindAssertion;

logic clk,rst_n;
logic [3:0] count;
logic t;

concurrentAssertion cA(.*);
bind concurrentAssertion : cA assertionFileExample aFE(.*);
//Syntax : bind <DUT-module> : <DUT-instance-name> <assertion-module> <assertion-instance> (<ports-association>)

always #5 clk = ~clk;

initial
begin
clk = 1'b0;
rst_n = 1'b0;
#20 rst_n = 1'b1;
#480 ();
end

initial
begin
(, rst_n = %0d, count = %0d, t = %0d,rst_n,count,t);
end

endmodule

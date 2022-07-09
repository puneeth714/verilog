module concurrentAssertion
(input logic clk,rst_n,
output logic [3:0] count,
output logic t);

always_ff @(posedge clk,negedge rst_n)
begin
if(~rst_n)
begin
count <= 0;
end

 else
begin
count <= count + 1;
end
end

assign t = &count;

endmodule

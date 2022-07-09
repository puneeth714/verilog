module change(clk,in,j);
input in;
output j;
always @(in)
begin
j=~in;
j=!in;
end
always @(clk)
begin
j=0;
end
endmodule

module test;
reg in;
//initiate the change
forever
begin
#10
end

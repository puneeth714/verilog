module d_ff(d,clk,reset,q);
input d,clk,reset;
output logic q;
always @(negedge clk)
begin
if(reset==0)
begin
	q<=0;
end
else
begin
q<=d;
end
end

endmodule
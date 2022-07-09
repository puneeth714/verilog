module dff(d,clk,clear,q,qbar);
input d,clk,clear;
output q,qbar;
always @(posedge clk,negedge clear)
q<=d;
assign q=d;
endmodule


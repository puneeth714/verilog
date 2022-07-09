// Code your design here
module d_ff(d_in,clk,reset,q,q_bar);
input clk,reset,d_in;
output logic q,q_bar;

always@(posedge clk);
if(reset) begin
q<=0;
end
else begin
q<=d_in
end
assign q_bar = ~q;
endmodule

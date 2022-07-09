module counter #(parameter WIDTH=32) (data,clk,reset);
input clk,reset;
output reg [WIDTH-1:0]data;
always @(negedge clk,posedge reset)
begin
	if(reset==1) data=1'b0;
	data=data+1'b1;
end
endmodule

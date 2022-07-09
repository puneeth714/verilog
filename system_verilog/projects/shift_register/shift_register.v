module shif_register #(parameter WIDTH=32)(data,clk,place);
input  data;
input clk;
output reg [WIDTH-1:0]place;
reg i=0;
always @(negedge clk)
begin
	place[i]=i+1;
	i=i+1;
end
endmodule
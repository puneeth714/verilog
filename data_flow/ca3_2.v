//Concatenate two binary nos 4’b1001 and 4’b1111 and display the output in verilog
module concatenate(a,b,c);
input [3:0] a,b;
output [7:0] c;
assign c={a,b};
endmodule

module concat();
reg [3:0] a,b;
wire [7:0] c;
concatenate a1(a,b,c);
initial 
begin
$monitor("%b",c);
a=4'b1001;
b=4'b1111;
end
endmodule
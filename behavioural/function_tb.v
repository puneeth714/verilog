module function_tb;
`include "function_1.v"
reg [7:0]a;
wire b;
find_parity f1(a,b);
forever
begin
a=8'b10100010;
#5;
a=8'b11010101;
#5;
a=8'b11100010;
end
endmodule

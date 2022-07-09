
module swith(a,b);
input a;
output b;
reg b;
always @* begin
    case(a)
    0:b=1;
    1:b=0;
    endcase
end
endmodule

module test;
reg a;
wire b;
swith sw(a,b);
initial begin
    $monitor("a=%b,b=%b",a,b);
    a=0;
    #10;
    a=1;
    #10;
end
endmodule
module check(a,b,c);
input  a,b;
output  c;
integer d,e,f;
assign a=10,b=20,c=a+b;
initial begin
        d=a+b;
        $display(d);
    join
end
endmodule

module test;
reg a,b;
wire c;
check c1(a,b,c);
initial
$monitor(c);
begin
#10; a=10;b=10;
end
endmodule

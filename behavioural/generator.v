module generated(a,b,c,sum,carry);
input a,b,c;
output sum,carry;
genvar k;
generate for(k=0;k<10;k=k+1)
begin
xor(sum,a,b);
and(carry,a,b);
end
endgenerate
endmodule

module test;
reg a,b,c;
wire sum,carry;

generated g(a,b,c,sum,carry);

initial begin
$monitor(a,b,c,sum,carry);
#10 ;
end
endmodule

module race_case;

initial begin
$monitor("a= %d,b=%d",a,b );
b<=a;

a<=b;

end
reg a=1;
reg b=0;
endmodule

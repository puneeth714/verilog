module ambiguity;
reg a,b,c,d;
initial
begin
    $monitor(a,b,c,d);

a = 1'b0;
c = b;
end
initial
begin
    $monitor(a,b,c,d);
b = 1'b1;
d = a;
end
endmodule
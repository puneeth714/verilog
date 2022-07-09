module SR_FlipFlop(s,r,q,qbar);
input s,r;
output q,qbar;
wire a,b;
buf b1(a,qbar);
buf b2(b,q);
nand n1(q,s,a);
nand n2(qbar,r,b);
endmodule

module test_sr;
reg s,r;
wire q,qbar;
SR_FlipFlop s1(s,r,q,qbar);
initial
begin
    $monitor("%d %d %d %d",s,r,q,qbar);
    #5;s=1;r=0;
    #5;s=0;r=1;
    #5;s=0;r=0;
    #5;s=1;r=1;
end
endmodule
module full_sub(a,b,bin,d,bout);
input a,b,bin;
output d,bout;
wire w1,w2,w3,w4,w5;
xor(w1,a,b);
xor(w2,w1,bin);
not(w3,a);
and(w4,w3,b);
not(w5,w1);
and(w6,bin,w5);
nor(bout,w4,w6);    
endmodule


module test_fs1;
reg a,b,din;
wire s,bout;
full_sub s1(a,b,din,s,cout);

initial begin
$dumpfile("wave.vcd");
        $dumpvars(0, test_fs1);
    a=0;b=0;din=0;#100;
    a=0;b=0;din=1;#100;
     a=0;b=1;din=0;#100;
     a=0;b=1;din=1;#100;
     a=1;b=0;din=0;#100;
     a=1;b=0;din=1;#100;
     a=1;b=1;din=0;#100;
     a=1;b=0;din=1;#100;
      a=1;b=1;din=1;#100;


end
endmodule
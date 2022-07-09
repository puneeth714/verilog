//Design a 2x4 decoder using verilog
module two_to_4_decoder(a0,a1,d0,d1,d2,d3);
input a0,a1;
output d0,d1,d2,d3;
wire w1,w2;
not not_a0(w1,a0);
not not_a1(w2,a1);
and not_a0_to_not_a1(d0,w1,w2);
and a0_to_not_a1(d1,w2,a0);
and not_a0_to_a1(d2,w1,a1);
and a0_to_a1(d3,a0,a1);
endmodule



module test_decoder;
reg a0,a1;
wire d0,d1,d2,d3;
two_to_4_decoder test(a0,a1,d0,d1,d2,d3);
initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, test_decoder);

    $monitor("a0 = %b a1= %b d0= %b d1= %b d2 =%b d3 = %b ",a0,a1,d0,d1,d2,d3);

    a0=0;a1=0;#100;
    a0=0;a1=1;#100;
    a0=1;a1=0;#100;
    a0=1;a1=1;#100;

end
endmodule
    
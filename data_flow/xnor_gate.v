module xnor_gate(a,b,c);
    input a;
    input b;
    output c;
    
    assign c=~(a^b);
endmodule

module xnor_test;
    reg a;
    reg b;
    wire c;
    xnor_gate a1(a,b,c);
    initial begin
    // $dumpfile("check.vcd");
    // $dumpvars(0,xnor_test);
    a=0;b=0;#100;
    a=0;b=1;#100;
    a=1;b=0;#100;
    a=1;b=1;#100;

    end
    
endmodule



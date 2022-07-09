module xor_gate(a,b,c);
    input a;
    input b;
    output c;
    // assign c = a^b;
    assign c = a*~b+~a*b;
endmodule

module xor_bench;
    reg a;
    reg b;
    wire c;

    xor_gate inst1(a,b,c);
    initial begin
    $dumpfile("check.vcd");
    $dumpvars(0,xor_bench);
    a=0;b=0;#100;
    a=0;b=1;#100;
    a=1;b=0;#100;
    a=1;b=1;#100;

    end
    
endmodule



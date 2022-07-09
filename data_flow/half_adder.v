module half_adder(a,b,c,d);
    input a;
    input b;
    output c;
    output d;
    assign c = a^b;
    assign  d = a&b;
endmodule

module adder;
    reg a;
    reg b;
    wire c;
    wire d;
    half_adder test(a,b,c,d);
    initial begin
    $dumpfile("check.vcd");
    $dumpvars(0,adder);
    a=0;b=0;#100;
    a=0;b=1;#100;
    a=1;b=0;#100;
    a=1;b=1;#100;

    end
    
endmodule
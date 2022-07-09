module full_adder(a,b,Cin,Cout,Sum);
    input a;
    input b;
    input Cin;
    output Cout;
    output Sum;
    assign Sum=a^b^Cin;
    assign Cout=a&b|b&Cin|Cin&a;
endmodule

module f_adder;
    reg a;
    reg b;
    reg Cin;
    wire Sum;
    wire Cout;
    full_adder test1(a,b,Cin,Cout,Sum);
    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, f_adder);
        a=0;
        b=0;
        Cin=0;
        #100;
        a=0;
        b=0;
        Cin=1;
        #100;
        a=0;
        b=1;
        Cin=0;
        #100;
        a=0;
        b=1;
        Cin=1;
        #100;
        a=1;
        b=0;
        Cin=0;
        #100;
        a=1;
        b=0;
        Cin=1;
        #100;
        a=1;
        b=1;
        Cin=0;
        a=1;b=1;Cin=1;#100;
        #100;
        // #6000 $finish;
    end
endmodule
//Design a 4x1 mux using verilog
module  mux_4to1 (
    a,b,c,d,s1,s2,y
);
    input a,b,c,d,s1,s2;
    output y;
    // assign y=s2?((s1?a:b):(s1?c:d);
    assign y=s2?(s1?a:b):(s1?c:d);

endmodule


module testbench;
reg a,b,c,d,s1,s2;
wire y;
mux_4to1 a1(a,b,c,d,s1,s2,y);
initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, testbench);

    $monitor("a = %b b= %b c= %b d= %b s1 =%b s2 = %b y=%b",a,b,c,d,s1,s2,y);
    
    a=0;b=1;c=0;d=1;s1=0;s2=0;#100;
    a=0;b=1;c=0;d=1;s1=0;s2=1;#100;
    a=0;b=1;c=0;d=1;s1=1;s2=0;#100;
    a=0;b=1;c=0;d=1;s1=1;s2=1;#100;

    // $display("a = %b b= %b c= %b d= %b s1 =%b s2 = %b y=%b",a,b,c,d,s1,s2,y);
end
    
endmodule
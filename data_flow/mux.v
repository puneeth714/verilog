module Mux4_1 (
    a,
    b,
    c,
    d,
    s1,
    s2,
    out
);
  input a, b, c, d, s1, s2;
  output out;
  reg out;
// Create a switch statement
always @(*)

case({s1,s2})
    2'd0: out=a;
    2'd1: out=b;
    2'd2: out=c;
    2'd3: out=d;
    default:$display("Fuck");
endcase
endmodule

module testMuxt;
reg a,b,c,d,s1,s2;
wire out;
Mux4_1 tester(a,b,c,d,s1,s2,out);
initial begin
    // $dumpfile("out.vcd");
    // $dumpvars(testMuxt,x);
    $monitor(out);
    #10 ; a=1;b=0;c=0;d=0;s1=0;s2=1;
    #10 ; a=0;b=1;c=0;d=0;s1=0;s2=1;
    #10 ; a=0;b=0;c=1;d=0;s1=0;s2=1;
    #10 ; a=0;b=0;c=0;d=1;s1=0;s2=1;

    #10 ; a=1;b=0;c=0;d=0;s1=1;s2=0;
    #10 ; a=0;b=1;c=0;d=0;s1=1;s2=0;
    #10 ; a=0;b=0;c=1;d=0;s1=1;s2=0;
    #10 ; a=0;b=0;c=0;d=1;s1=1;s2=0;


end
endmodule
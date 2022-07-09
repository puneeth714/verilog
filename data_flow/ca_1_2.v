module function2 (P,Q,R,S,F);
input P,Q,R,S;
output F;
//F=QRS+~QR~S+~P~RS+Q~RS
assign  F = Q & R & S | ~Q & R & ~S | ~P & ~R & S | Q & ~R & S;

endmodule


//Test bench
module test_and;
reg p,q,r,s;
wire f;

  function2 a1(p,q,r,s,f);
  initial
  begin
    $dumpfile("check.vcd");
    $dumpvars(0,test_and);
    $monitor(p);
    p=0;q=0;r=0;s=0; #100;
    p=0;q=0;r=0;s=1; #100;
    p=0;q=0;r=1;s=0; #100;
    p=0;q=0;r=1;s=1; #100;
    p=0;q=1;r=0;s=0; #100;
    p=0;q=1;r=0;s=1; #100;
    p=0;q=1;r=1;s=0; #100;
    p=0;q=1;r=1;s=1; #100;
    p=1;q=0;r=0;s=0; #100;
    p=1;q=0;r=0;s=1; #100;
    p=1;q=0;r=1;s=0; #100;
    p=1;q=0;r=1;s=1; #100;
    p=1;q=1;r=0;s=0; #100;
    p=1;q=1;r=0;s=1; #100;
    p=1;q=1;r=1;s=0; #100;
    p=1;q=1;r=1;s=1; #100;

        



  end
endmodule



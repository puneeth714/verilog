module and_gate(a,b,c);
  input a;
  input b;
  output c;
  //data flow modelling
  assign c = a&b | b&~a;

endmodule

//Test bench
module test_and;
  reg a;
  reg b;
  wire c;
  

  and_gate a1(a,b,c);
  initial
  begin
    $dumpfile("check.vcd");
    $dumpvars(0,test_and);

    a=0;
    b=0;
    #100 
    a=0;
    b=1;
    #100;
    a=1;
    b=0;
    #100;
    a=1;
    b=1;
    #100;


  end
endmodule













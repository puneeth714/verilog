module function1(x, y, z, f);
input x,
y,
z;
output f;
// here F = xy + yz + x 'z
assign f = (x & y) | (y & z )| (~x & z);

endmodule


//Test bench
module test_and;
reg x,y,z;
wire f;

  function1 a1(x,y,z,f);
  initial
  begin
    $dumpfile("check.vcd");
    $dumpvars(0,test_and);
        x=0;y=0;z=0;#100;
    x=0;y=0;z=1;#100;
     x=0;y=1;z=0;#100;
     x=0;y=1;z=1;#100;
     x=1;y=0;z=0;#100;
     x=1;y=0;z=1;#100;
     x=1;y=1;z=0;#100;
     x=1;y=0;z=1;#100;
    x=1;y=1;z=1;#100;



  end
endmodule













// Design a F=x'y'+yz+xz using gate level modelling in verilog
module function1(x,y,z,f);
    input x,y,z;
    output wire1,wire2,wire3,wire4,f;
    not(wire1 , x);
    and(wire2,wire1,y);
    and(wire3,y,z);
    and(wire4,z,x);
    or(f,wire2,wire3,wire4);

endmodule


module function_test;
reg x,y,z;
wire f;
function1 f1(x,y,z,f);

initial begin
$dumpfile("wave.vcd");
        $dumpvars(0, function_test);
    $monitor("x = %b , y= %b , z= %b results %b",x,y,z,f);
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
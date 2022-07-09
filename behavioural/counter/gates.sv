module nand_gate(out,in1,in2,in3);
input in1,in2,in3;
output out;
supply1 vcc;
supply0 gnd;
wire w1,w2;
pmos p1(out,in1,vcc);
pmos p2(out,in2,vcc);
pmos p3(out,in3,vcc);

nmos n1(out,in1,w1);
nmos n2(out,in2,w2);
nmos n3(out,in3,gnd);
endmodule

module test;
reg in1,in2,in3;
wire out;
nand_gate n1(out,in1,in2,in3);
initial begin 
    $monitor(out);
    in1=0; in2=0;in3=1;
    #5 in1=1;in2=1;in3=1;
end
endmodule
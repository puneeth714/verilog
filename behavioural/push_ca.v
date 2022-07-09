module push(in,out);
input in;
output out;
//create wires a1,a2,a3
wire a1,a2;

// first not generate
not #(10)(a1,in);
// second not generate
not #(10)(a2,a1);
//first xor generate
xor #(20)(out,in,a2);
endmodule

module test_push;
reg in=0;
wire out;
//instance of push
push p(in,out);
//generate a 20 unit delay signal

initial
forever
begin
in=#100 ~in;
end
initial begin
$dumpfile("check.vcd");
$dumpvars(0,test_push);
$monitor(in,out);
end
initial begin
#5000
$finish;
end
endmodule

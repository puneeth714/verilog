module sys(in1,in2,out);
input logic in1,in2;
output logic out;
assign out=in1+in2;
initial begin
    $display("%b %b %b",in1,in2,out);
end
endmodule

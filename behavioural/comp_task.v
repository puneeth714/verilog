//using task funtion for comparing given two 16 bit values as inputs
module compp_task(out,in1,in2);
input [15:0]in1,in2;
output [15:0]out;
reg [15:0]out;

always @(in1 or in2)
begin
//call task for all operations to compare i.e compare whether in1<in2 or in1==in2 or in1>in2
compp(out,in1,in2);
end
task compp;
begin

    begin
    if (in1==in2)
    begin
    $display("%d is equal to %d",in1,in2);
    out=in1;
    end
    else if(in1>in2)
    begin
    $display("%d is greater than %d",in1,in2);
    end
    else
    begin
    $display("%d is less than than %d",in1,in2);

    end
    end
end
endtask
endmodule

module test_comp;
reg  [15:0]in1,[15:0]in2;
wire [15:0]out;
compp_task c(out,in1,in2);
initial
begin
#5; in1=15'b1010100100100101; in2=15'b1010100100100101;
end
endmodule

module test1(clk,out);
input clk;
output out;
reg out;
integer a=10;

    always @(negedge clk) begin:done
        if(a==100)
        begin
            $display("Done");
            $finish;
         end
        else
        begin
            a=a+1;
        end
    end
endmodule

module test_test;
reg clk=0;
wire out;
test1 t(clk,out);
initial
begin
$dumpfile("check.vcd");
    $dumpvars(0,test_test);
end
initial

forever begin
    
    clk=#5 ~clk;
end
endmodule
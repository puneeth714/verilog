// Write a Verilog code to add the first 50 natural numbers 
// with the use of repeat loop in behavioral modeling. 
// (Note: It is mandatory to use for  loop for getting this output)
//in verilog code
module sum_even();
integer i, sum;
initial begin
    sum = 0;
    for(i=0; i<50; i=i+2) begin
        sum = sum + i;
    end
   
    $display("sum = %d", sum);
end
endmodule
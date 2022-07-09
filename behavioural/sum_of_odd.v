//Write a program to calculate the sum of all odd numbers between 0 to 10 and finally add your roll no. into the final sum. (Note: Make use of for loop in verilog
module sum_odd_numbers();
integer  roll_number = 29;
integer i, sum;
initial begin
    sum = 0;
    for(i=1; i<=10; i=i+2)
    begin
        sum = sum + i;
    end
    $display("Sum of odd numbers between 1 to 10 is %d", sum);
    $display("Roll number is %d", roll_number);
    $display("Sum of odd numbers between 0 to 10 and roll number is %d", sum+roll_number);
end
endmodule
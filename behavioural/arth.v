module add(num1,num2);
input num1,num2;
output out;
assign out= num1+num2;
initial begin
$display("%d+%d=%d",num1,num2,out);
end
endmodule

module substract(num1,num2);
input num1,num2;
output out;
assign out= num1-num2;
initial begin
$display("%d-%d=%d",num1,num2,out);
end
endmodule

module multiply(num1,num2);
input num1,num2;
assign out=num1+num2;
initial begin
$display("%d*%d=%d",num1,num2,out);
end

endmodule

module divide(num1,num2);
input num1,num2;
output out;
assign out= num1/num2;
initial begin
$display("%d/%d=%d",num1,num2,out);
end

endmodule

module test_calc;
reg num1=1,num2=1;
add a1(num1,num2);
substract s1(num1,num2);
multiply m1(num1,num2);
divide d1(num1,num2);
initial begin
    num1=0;
    num2=1;
    // repeat block of size 100
    repeat(100)
    begin
        #5 num1= num1+1;
        #5 num2= num2+1;
    end
end
endmodule

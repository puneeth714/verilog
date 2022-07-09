module check_1(a,b,sum);
input a,b;
output sum;
assign sum=a^b;
endmodule

module check_1_tb;
reg a,b;
wire sum;
check_1 add(a,b,sum);
initial begin
#5 a=0;b=0;
#10 a=1;b=1;
#15 a=1;b=0;
end
endmodule
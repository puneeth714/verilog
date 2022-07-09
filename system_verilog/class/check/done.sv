module done;
initial begin
int a=0;
while(a<10) begin
$display("%d",a);
$finish;
end
end
endmodule

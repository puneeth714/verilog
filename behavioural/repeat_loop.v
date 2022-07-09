module repeat_loop;
reg a=0;
repeat 20;
begin
$display("value is %s",a);
a=a+1;
end
endmodule

module foreve;
reg a=1;
initial
forever
begin
 a= #20 ~a;
end
endmodule

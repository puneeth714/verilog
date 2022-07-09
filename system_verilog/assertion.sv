module mux_2_1_assert(
input logic sel a,b,
output logic out);
always_comb
begin
assert (^sel!==1'bx)
else $error("sel=x");
if(sel==0)
out=a;
else
out=b;
end
endmodule

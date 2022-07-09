module shiftoperator();

reg [3:0]a;

initial begin
a=4'b1001;

$display("a before shift = %4o",a);
a= a>>1;
$display("a after shift = %4o" , a);

end 
endmodule
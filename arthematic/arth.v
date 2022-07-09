module operator();
initial begin
	$display("6+4=%d",6+4);
	$display("1'bx<=9 = %b",1'bx<9);
	$display("3'b0x1===3'b01x gives = %b",3'b0x1==3'b01x);
	$display("3'b10x==4 gives = %b",3'b10x==4);
	$display("3'b101==5 gives = %b",3'b101==5);
end
endmodule



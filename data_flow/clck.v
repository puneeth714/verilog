module clck(clk);
output clk;
reg clk;
always wait (posedge clk) #5 clk=~clk;
endmodule   
module assertion_ALU_tb;
logic [3:0] data_out;
logic cout;
logic [3:0] x, y;
logic [2:0] select;
assertion_ALU ALU(.*); // Instantiate the DUT
initial begin
repeat(4) begin
x=(); // unsigned random number generator
y=();
select=();
#5 (x=%bty=%btdata_out=%btcout=%b,x,y,data_out,cout);
end
(x=%bty=%btsel=%btdata_out=%btcout=%b,x,y,select,data_out, cout); // print events
#10 x=4'b10x1;
#10 x=4'b1010;select=3'b101;
#10 y=4'bxx01;
#10 y=4'b0001;
#10 select=3'b01x;
end
endmodule

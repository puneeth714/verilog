module counter_tb;
reg clk,reset;
wire [31:0]data;
counter c1(data,clk,reset);
initial begin
 clk=0;

 end
always #10 clk= ~clk;
initial 
begin
$monitor("%d ",data);

 #2000 $finish;
 end
endmodule
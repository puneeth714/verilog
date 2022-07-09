module counter_up_down #(parameter DATA_WIDTH=4)(clk,rst,up_down,out);
input clk,rst,up_down;
output reg [DATA_WIDTH-1:0]out;
always @(*) 
begin
if(rst==0) out<=0;
if(up_down==1) out<=out+1;
if(up_down==0) out<=out-1;
end
endmodule

module counter_tb;
reg clk,rst,up_down;
wire [3:0]out;
counter_up_down counter(clk,rst,up_down,out);
initial begin 
clk=0;
rst=0;
up_down=1;
end
always #10 clk=!clk;
initial begin
#200 rst=1;
#200 up_down=0;
#100 rst=1;
#20 up_down=1;
end

endmodule


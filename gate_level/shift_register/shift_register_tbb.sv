`include "gate_level/shift_register/shift_register.sv";
module shift_register_tb;
reg clk;
wire out;
shift_register s1(clk,out);
initial begin clk=0; end
always #10 clk=!clk;
initial #2000 $stop;
endmodule

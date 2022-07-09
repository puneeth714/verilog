`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/30/2021 10:17:12 AM
// Design Name: 
// Module Name: Full_adder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

// Full adder using half adder
module Full_adder(a, b, c, sum, carry);
input a, b, c;
output sum, carry;
wire w1, w2, w3;

ha H1(a, b, w1, w2);
ha H2(w1, c, sum, w3);
or O1(carry, w3, w2);

endmodule

// Half adder using basic gates
module ha(a, b, sum, c);
input a, b;
output sum,c;

xor X1(sum, a, b);
and A1(c, a, b);

endmodule



// Test bench
module Full_adder_tb();
reg a, b, c;
wire sum, carry;
Full_adder FA1(a, b, c, sum, carry);

initial
begin

a = 0; b = 1; c = 1;
#5 a = 1; b = 1; c = 0;
#5 a = 0; b = 1; c = 1;
#5 $stop;

end
endmodule

module assertion_ALU(
output logic [3:0] data_out,
output logic cout,
input logic [3:0] x, y,
input logic [2:0] select);
parameter ADD = 3'b000,
SUB = 3'b001,
INR = 3'b010,
DCR = 3'b011,
CMP = 3'b100,
AND = 3'b101,
OR = 3'b110,
XOR = 3'b111;
always_comb begin
assert (^select !== 1'bx) // xor all the select bits together and make sure none are an X
else (select = X); // If that test fails log an error
assert (^({x,y}) !== 1'bx) // xor all the x and y bits together and make sure none are an X
else (Inputs == X); // If that test fails log an error
case(select)
ADD: {cout, data_out} = x + y;
SUB: {cout, data_out} = x - y;
INR: {cout, data_out} = x + 1'b1;
DCR: {cout, data_out} = x - 1'b1;
CMP: begin data_out = ~x; cout = 1'b0; end
AND: begin data_out = x & y; cout = 1'b0; end
OR: begin data_out = x | y; cout = 1'b0; end
XOR: begin data_out = x ^ y; cout = 1'b0; end
endcase
end
endmodule

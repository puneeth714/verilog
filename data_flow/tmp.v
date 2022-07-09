module adder_full(a, b, cin, s, c);
    input a;
    input b;
    input cin;
    output s;
    output c;
    wire w1,w2,w3;

xor(s,a,b,cin);
and(w1,a,b);
and(w2,b,cin);
and(w3,a,cin);
or(c,w1,w2,w3);

endmodule


module adder_four_bit(a,b,cin,s,c);

input [3:0]a ;
input [3:0]b ;
input cin ;
output [3:0]s;
output c;
wire c1,c2,c3;

adder_full f2(a[0], b[0], cin, s[0], c1);
adder_full f3(a[1], b[1], c1,  s[1], c2);
adder_full f4(a[2], b[2], c2,  s[2], c3);
adder_full f5(a[3], b[3], c3,  s[3], c );

endmodule

module test_fourbitadder;
reg [3:0]a;
reg [3:0]b;
reg cin;
wire [3:0]s;
wire c;

adder_four_bit b1(a,b,cin,s,c);
initial begin 
$monitor("%b and %b",s,c);

a=4'b1111;b=4'b1111;cin=4'b0000;
end
endmodule





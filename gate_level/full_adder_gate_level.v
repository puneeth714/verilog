module full_adder(a,b,cin,s,cout);
input a,b,cin;
output s,cout;
wire w1,w2,w3;
xor(w1,a,b);
and(w2,w1,cin);
and(w3,a,b);
xor(s,w1,cin);
or(c,w2,w3);
endmodule

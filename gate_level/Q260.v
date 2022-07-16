module fun(a, b, c, d, e);
input a,b,c;
output d,e;
wire w1, w2, w3;

or O1(w1, a, b);
and A1(w2, b, c);
not N1(w3, w1);

or O2(d, w3, w2);
xor X1(e, w2, c);
endmodule




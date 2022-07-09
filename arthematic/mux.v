module mux_211(
    a,b,s,y
);
    input a,b,s;
    output y;
    assign y=s?a:b;

endmodule

module  mux_4to1 (
    a,b,c,d,s1,s2,y
);
    input a,b,c,d,s1,s2;
    output y;
    // assign y=s2?((s1?a:b):(s1?c:d);
    assign y=s2?(s1?a:b):(s1?c:d);

endmodule
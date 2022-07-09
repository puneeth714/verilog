module testbech;
reg a,b,c,d,s1,s2;
wire y;
mux_4to1 a1(a,b,c,d,s1,s2,y);
initial begin
    a=0;b=0;c=0;d=1;s1=1;s2=1;
    display("a = %b b= %b c= %b d= %b s1 =%b s2 = %b y=%b",a,b,c,d,s1,s2,y);
end
    
endmodule
module if_else_mux(p0,p1,p2,p3,s1,s2,out);
input p0,p1,p2,p3,p4,s1,s2;
output out;
reg out;

always @*
begin
        $monitor("p0=%b,p1=%b,p2=%b,p3=%b,p4=%b,s1=%b,s2=%b,out=%b",p0,p1,p2,p3,p4,s1,s2,out);
case ({s1,s2})
	2'b00:out=p0;
        2'b00:out=p1;                  
        2'b00:out=p2;                  
        2'b00:out=p3;
endcase

end
endmodule

module mux_test;
reg p0,p1,p2,p3,p4,s1,s2;
wire out;
//Instance
if_else_mux mux(p0,p1,p2,p4,s1,s2,out);
initial
begin
$monitor(out);
#5; p0=1;p1=0;p2=0;p3=0;s1=0;s2=0;
#5; p0=0;p1=1;p2=0;p3=0;s1=0;s2=1;
#5; p0=0;p1=0;p2=1;p3=0;s1=1;s2=0;
#5; p0=0;p1=0;p2=0;p3=1;s1=1;s2=1;
end
endmodule                  


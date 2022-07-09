module mux_if_else(p,s1,s2,out);
input p[0:3],s1,s2;
output out;
reg out;
initial begin
        out=0;
        if(s1==0 && s2==0)
        out=p[0];
        else if(s1==0 && s2==1)
        out=p[1];
        else if(s1==1 && s2==0)
        out=p[2];
        else if(s1==1 && s2==1)
        out=p[3];

end

endmodule

module test_mux;
reg p[0:3],s1,s2;
wire out;
//instance
mux_if_else p1(.p(p),.s1(s1),.s2(s2),.out(out));
initial 
begin
#5;p[0]=1;p[1]=0;p[2]=0;p[3]=0;s1=0;s2=0;
#5;p[0]=0;p[1]=1;p[2]=0;p[3]=0;s1=0;s2=0;
#5;p[0]=0;p[1]=0;p[2]=1;p[3]=0;s1=0;s2=0;
#5;p[0]=0;p[1]=0;p[2]=0;p[3]=1;s1=0;s2=0;
#5;p[0]=0;p[1]=0;p[2]=0;p[3]=0;s1=1;s2=0;
#5;p[0]=0;p[1]=0;p[2]=0;p[3]=0;s1=0;s2=1;
#5;p[0]=0;p[1]=0;p[2]=0;p[3]=0;s1=1;s2=1;
#5;p[0]=0;p[1]=0;p[2]=0;p[3]=0;s1=0;s2=0;
end
endmodule
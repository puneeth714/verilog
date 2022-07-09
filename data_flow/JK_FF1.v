// create jk flip flop module
module jk_ff(j,k,clk,q,qbar,reset);
input j,k,clk,reset;
output q,qbar;
reg q,qbar;
always @(posedge clk)
begin
    case({j,k})
    2'b00:begin q=1 ;qbar=0; end
    2'b01:begin q=0;qbar=1; end
    2'b10:begin q=1;qbar=0; end
    2'b11:begin q=0;qbar=1;end
    endcase
end
endmodule

module testJK;
reg clk,reset,j,k;
wire q,qbar;
jk_ff jk(j,k,clk,q,qbar,reset);

initial begin
    $monitor(q,qbar);
    #5 j=0;k=0;reset=0;
    #5 j=1;k=0;reset=0;
    #5 j=0;k=1;reset=0;
    #5 j=1;k=1;reset=0;
    #5 j=0;k=0;reset=1;
    #5 j=1;k=0;reset=1;
    #5 j=0;k=1;reset=1;
    #5 j=1;k=1;reset=1;
    
end
//create clk

always @*
begin
    $monitor(clk);

    #5 clk=~clk;
end
endmodule
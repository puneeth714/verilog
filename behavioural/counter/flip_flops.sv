module flip_flops(j,k,clk,rst,q,qbar);
intput j,k,clk,rst;
output q,qbar;
reg q,qbbar;
always @*
begin
    case({j,k})
    00:begin q=0;qbar=1;end
    01:begin q=1;qbar=0;end
    endcase
end
endmodule
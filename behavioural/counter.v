module counter (clk,clear,q,q_bar);
input clk,clear;
output [3:0]q,q_bar;
reg [3:0]q,q_bar;
//for clock or clear
 
always @(posedge clk or negedge clear) begin
    if(clear==1)
    begin
        q=0;
    end
    else
    begin
        q=q+1;
        q_bar=~q;
    end
end

endmodule

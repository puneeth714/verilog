module counter(Q,clear,clock);
input clear,clock;
output [3:0]Q;
reg Q=1'd0;
always @(posedge clear or negedge clock) 
begin
    $display("Output is %d",Q);
    Q=Q+1;
end
endmodule
module counter_tb;
reg clear,clock;
wire [3:0]Q;
counter a1(Q,clear,clock);
initial begin
    forever begin
        #5 clock=~clock;
        #5 clear=~clear;
    end
end
always @(posedge clock or negedge clear) begin
    $finish;
end
endmodule
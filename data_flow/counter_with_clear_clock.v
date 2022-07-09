module counter_clear_clock(Q,clear,clock);
input clear,clock;
output [3:0]Q;
reg [3:0]Q=1'd0;
    always @(negedge clock or posedge clear)
    begin
        if(clear==1)
        begin
            Q=0;
        end
        else
        begin
            Q=Q+1;
        end
    
end
endmodule

module test;
reg clear,clock;
wire [3:0]Q;
counter_clear_clock c1(Q,clear,clock);
initial begin
    $monitor("%d",Q);
    #5 clear=0; clock=1;
    #5 clock=0;
    #5 clock=1;
    #5 clock=0;
    #5 clock=1;
    #5 clock=0;
    #5 clock=1;
    #5 clock=0;
    #5 clock=1;
    #5 clock=0;
    forever begin
        #5 clock=~clock;
    end
end
initial begin
    if (Q==4'b1010)
    begin
        clear=0;
    end
end
initial begin
    #5000 $display("Done");
    $finish;
end
endmodule
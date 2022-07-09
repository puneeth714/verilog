//sr flip flop using case statement
module SR_FlipFlop(
    input J,
    input K,
     input clk,
    output q,
    output qbar
     );
reg q,qbar;


always@(posedge clk)
begin
    case({J,K})
    2'b0_0:q<=q;
    2'b0_1:q<=1'b0;
    2'b1_0:q<=1'b1;
    2'b1_1:q<=1'bz;
endcase
end

endmodule

module SRflipflopTB;
    reg J,K,clk;
    wire q,qbar;

    SR_FlipFlop test (
        .J(J), 
        .K(K), 
        .clk(clk), 
        .q(q), 
        .qbar(qbar)
    );
initial clk = 0;
    always #10 clk = ~clk;
    initial begin
        $monitor(q,qbar);

        J = 0;K = 0;clk = 0;#100;
        J=0;K=1;#100
        J=1;K=0;#100
        J=1;K=1; 
        $finish;

    end
      
endmodule

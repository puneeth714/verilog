module JK_flip_flop (
    j,
    clk,
    k,
    Q,
    Qbar
);
input j, clk, k;
output Q, Qbar;
wire w1, w2,a,b;
nand #(5) n1 (w1, j, Qbar, clk);
nand #(5) n2 (w2, k, Q, clk);
buf b1(a,Qbar);
buf b2(b,Q);
nand #(5) n3 (Q, w1, a);
nand #(5) n4 (Qbar, w2, b);
endmodule

module test_JK;
  reg j, clk, k;
  wire Q, Qbar;
  JK_flip_flop jk (
      .j(j),
      .clk(clk),
      .k(k),
      .Q(Q),
      .Qbar(Qbar)
  );

  initial begin
    $dumpfile("test_JK.vcd");
    $dumpvars(0, jk);
    $display("j=%d,k=%d,Q=%d,Qbar=%d", j, k, Q, Qbar);
    #5 j = 0;
    k   = 0;
    clk = 0;
    $display("j=%d,k=%d,Q=%d,Qbar=%d", j, k, Q, Qbar);
    #5 j = 0;
    k   = 0;
    clk = 1;
    $display("j=%d,k=%d,Q=%d,Qbar=%d", j, k, Q, Qbar);
    #5 j = 1;
    k   = 0;
    clk = 0;
    $display("j=%d,k=%d,Q=%d,Qbar=%d", j, k, Q, Qbar);
    #5 j = 1;
    k   = 0;
    clk = 1;
    $display("j=%d,k=%d,Q=%d,Qbar=%d", j, k, Q, Qbar);
    #5 j = 0;
    k   = 1;
    clk = 0;
    $display("j=%d,k=%d,Q=%d,Qbar=%d", j, k, Q, Qbar);
    #5 j = 0;
    k   = 1;
    clk = 1;

    $display("j=%d,k=%d,Q=%d,Qbar=%d", j, k, Q, Qbar);
  end
endmodule

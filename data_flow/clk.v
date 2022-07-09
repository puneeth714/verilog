module clock (
    clk
);
  output clk;
  reg clk = 1;
  always #5 clk = !clk;
  always @(negedge clk) begin
    #20 $display("%t", $time);
    #20 $display("%d", clk);
  end
  always @(negedge clk) #100000000 $finish;
endmodule


module Level_1 (
    clk
);
  output clk;
  reg clk = 0;
  integer a = 0;
  always #5 clk = !clk;
  initial
        begin
                $monitor("%d", a);
        end
  always wait(clk) a = a + 10;
endmodule

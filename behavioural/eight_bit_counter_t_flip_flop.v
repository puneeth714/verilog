// Design an 8-bit counter using T flip-flops, extending the above structure to 8-bits Your design needs to be hierarchical, using a T flip-flop in behavioral modeling, and rest either in dataflow or gate-level modeling. Assign Clock input, Clear_n, Enable, and Q
module Counter8Bit(
    clk,
    clear_n,
    enable,
    q
);
input clk;
input clear_n;
input enable;
output q;


// T flip-flop
Tff8Bit tff(
    .clk(clk),
    .clear_n(clear_n),
    .enable(enable),
    .q(q)
);


endmodule


//Test bench for the 8-bit counter
module Counter8BitTest(
    clk,
    clear_n,
    enable,
    q
);


// Inputs
input clk;
input clear_n;
input enable;
output q;


// Output Verification
initial begin
    $dumpfile("counter8bit.vcd");
    $dumpvars(0, Counter8Bit);
end


// Testbench
Counter8Bit tb(
    .clk(clk),
    .clear_n(clear_n),
    .enable(enable),
    .q(q)
);


// Clock generation
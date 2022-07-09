// constuct a ripple counter in verilog
module ripple_counter(
    input clk,
    input reset,
    input [7:0] count_in,
    output [7:0] count_out
);
    
endmodule
//testbench for ripple_counter in verilog
module testbench_ripple;
reg clk;
reg reset;
reg [7:0] count_in;
wire [7:0] count_out;
ripple_counter ripple_counter_inst(
    clk,
    reset,
    count_in,
    count_out
);
//monitor the output

initial
 begin
     //display and format the input and output
        $display("count_in = %d", count_in);
        clk = 0;
        reset = 1;
        count_in = 0;
        $display("count_out = %d", count_out);
        //wait for a clock cycle
        #5;
        clk = 1;
        reset = 0;
        count_in = 1;
        $display("count_out = %d", count_out);
    end
endmodule
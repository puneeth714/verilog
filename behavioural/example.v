// ripple ccounter using t flip flops with reset
module ripple_counter_tff_reset(
        input clk,
        input reset,
        input [7:0] count,
        output [7:0] count_out,
        output [7:0] count_out_next
        );

    wire [7:0] count_out_next_reg;
    wire [7:0] count_out_reg;
    integer i;
    initial begin
        count_out_next_reg <= count;
        count_out_reg <= count;
    end
    endmodule

//test bench for ripple counter
module ripple_counter_tff_reset_testbench;
    input clk;
    input reset;
    input [7:0] count;
    output [7:0] count_out;
    output [7:0] count_out_next;
    ripple_counter_tff_reset ripple_counter_tff_reset_inst(
            .clk(clk),
            .reset(reset),
            .count(count),
            .count_out(count_out),
            .count_out_next(count_out_next)
            );
    initial begin
        count_out <= 0;
        count_out_next <= 0;
        count <= 0;
        #10;
        count_out_next <= count_out_next_reg;
        count_out <= count_out_reg;
        #10;
        count_out_next <= count_out_next_reg;
        count_out <= count_out_reg;
        #10;
        count_out_next <= count_out_next_reg;
        count_out <= count_out_reg;
        #10;
        count_out_next <= count_out_next_reg;
        count_out <= count_out_reg;
        #10;
        count_out_next <= count_out_next_reg;
        count_out <= count_out_reg;
        #10;
        count_out_next <= count_out_next_reg;
        count_out <= count_out_reg;
        #10;
        count_out_next <= count_out_next_reg;
        count_out <= count_out_reg;
        #10;
        count_out_next <= count_out_next_reg;
        count_out <= count_out_reg;
        #10;
        count_out_next <= count_out_next_reg;
        count_out <= count_out_reg;
        #10;
        count_out_next <= count_out_next_reg;
        count_out <= count_out_reg;
        end
endmodule
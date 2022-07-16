module shift_register #(parameter DATA_WIDTH=8)(clk,reset,out);
input clk,reset;
output [DATA_WIDTH-1:0]out;
logic [DATA_WIDTH-1:0]out;
genvar i;
generate
for(i=0;i<DATA_WIDTH-1;i=i+1)
begin :generate_vals
    //there is a d_ff module which has d,clk,reset as inputs and q as output
    if(i==0)
    begin : first_ff
        d_ff d(out[DATA_WIDTH-1],clk,reset,out[i]);
    end
    else if (i!=DATA_WIDTH-1)   
    begin: Middle_ff
        d_ff d1(out[i-1],clk,reset,out[i]);
    end
    else
    begin : Last_ff
        d_ff d2(out[i-1],clk,reset,out[i]);
    end
    end

endgenerate
endmodule
module shift_register_tb;
logic clk,reset;
wire [7:0] out;
shift_register s(clk,reset,out);
initial begin
reset=0;
clk=0;
#100 reset=1;
#10 reset=0;
end
always #10 clk=~clk;
initial begin
    $monitor("%b",out);
    #1000 $finish;
end
endmodule
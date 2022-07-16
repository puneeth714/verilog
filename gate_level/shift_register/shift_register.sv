module shift_register #(parameter SIZE=10)(clk,out);
input  clk;
output  out;

logic w1[SIZE-1:0];
genvar d_ff_count;
generate
    for(d_ff_count=0;d_ff_count<SIZE;d_ff_count++) 
    begin: DFF_CREATE
        if(d_ff_count==0)
        begin
            d_ff d(out,clk,w1[d_ff_count]);
        end
        else if(d_ff_count!=9)        
        begin
            d_ff d1(w1[d_ff_count-1],clk,w1[d_ff_count]);
        end
         //BUG_FIX : THe else statement should have d_ff_count-1 insted to get the wire from previous register.
		  else
		  begin
		  d_ff d2(w1[d_ff_count-1],clk,out);
		  end
    end
endgenerate
endmodule

module d_ff(d,clk,q);
input d,clk;
output reg q;
always @(posedge clk)
    q <= d;
endmodule

// module dff_tb;
// reg d,clk;
// wire q,q_bar;
// d_ff d1(d,clk,q);
// initial begin
//     d=0;
//     clk=0;

// end
// always #10 clk=!clk;
// initial begin
//     $dumpfile("check.vcd");
//     $dumpvars(0,dff_tb);
//     $monitor(d,clk,q);
//     d=0;
//     #20;
//     d=1;
//     #20;
//     d=0;
//     #20;
//     d=1;
// end
// initial begin 
//     #300 $finish;
// end
// endmodule


module shift_register_tb;
reg clk;
wire out;
shift_register s1(clk,out);
initial begin clk=0; end
always #10 clk=!clk;
initial 
begin

    $monitor("clk=%d ,out=%d",clk,out);
#2000 $stop;
end
endmodule

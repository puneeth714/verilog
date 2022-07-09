// Design a NOT  gate from NAND  gate level modelling in verilog
module not_from_nand (
    in1,out
);
    input in1;
    output out;
    nand(out,in1,in1);
    
endmodule


module test_not;
reg in1;
wire out;
not_from_nand i1(in1,out);

initial begin
$dumpfile("wave.vcd");
        $dumpvars(0, test_not);
    $monitor("input is %b output is %b ",in1,out);
    in1=0;#100;
    in1=1;#100;

    


end
endmodule
module SR(q,qbar,reset,set);
input reset,set;
output q,qbar;
nand #(1)(q,reset,qbar);
nand #(1)(qbar,set,q);
endmodule

module test_SR;
reg reset,set;
wire q,qbar;
SR i(q,qbar,reset,set);
initial 
forever begin
    set<=#10 ~set;
    reset<=#100 ~reset;
    #10000 $finish;
end
initial begin
    $dumpfile("check.vcd");
$dumpvars(0,test_SR);
end
endmodule
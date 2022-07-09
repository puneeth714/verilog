class generator;
rand int generator;
constraint gen {generator >100; generator <200;generator%9==0}
endclass

module inline_constr;
initial begin
packet pkt;
pkt = new();
repeat(2) begin
pkt.randomize() with { addr == 8;};
$display("\taddr = %0d data = %0d",pkt.addr,pkt.data);
end
end
endmodule
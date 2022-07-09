module assertionFileExample
(input clk,rst_n,t,
input [3:0] count);

 property not15;
@(posedge clk)
disable iff(~rst_n) //If and only if rst = 0, then disable next statement
(count < 15 |-> ~t);
endproperty

 property is15;
@(posedge clk)
disable iff(~rst_n)
(count == 15 |-> t);
endproperty

assert property(not15)
(not15 pass);
else
(not15 fail);

 assert property(is15)
(is15 pass);
else
(is15 fail);

endmodule

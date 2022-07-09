module check_true;
reg[15:0] num;
//initial block
integer i=0;
initial begin
    num=16'b0000_1000_0000_0000;
    while(i<=15) begin:start
        if (num[i]==1)
        begin
            fork
                $display("The number is at %d",i);
                $finish;
            join
        end
        else
        begin
            i=i+1;
        end
    end

end
endmodule
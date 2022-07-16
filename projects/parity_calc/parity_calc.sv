module parity_calc #(parameter WIDTH=10) (stream,clk,out);
    input [WIDTH-1:0] stream;
    input clk;
    output logic out;
    logic tmp=0;

    // check  the even parity of the stream and output the result
    always @(clk)
    begin

        for(int i=0;i<WIDTH;i++)
        begin
            tmp+=stream[i];
        end
        out=tmp;
        tmp=0;
    end
endmodule


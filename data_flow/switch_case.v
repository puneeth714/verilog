// get binary number and display corresponding digital number using switch case
module switchCase(binaryNumber,out);
input [1:0]binaryNumber;
output [16:0]out;
reg [16:0]out;

always @* 
begin
        $display("%b",binaryNumber);

    case (binaryNumber)
        2'b00:out=0;
        2'b01:out=1;
        2'b10:out=0;
        2'b11:out=1;
        default:out=11;
    endcase

end

endmodule

module testSwitchCase;
reg [1:0]binaryNumber;
wire [16:0]out;
switchCase sw(binaryNumber,out);
initial begin
    $monitor("binaryNumber=%b,out=%b",binaryNumber,out);
    binaryNumber=2'b00;
    #10;
    binaryNumber=2'b01;
    #10;
    binaryNumber=2'b10;
    #10;
    binaryNumber=2'b11;
    #10;
end
endmodule
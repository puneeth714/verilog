module encoder #(parameter WIDTH = 8)
  (input clk, input reset, input [WIDTH-1:0] in, output reg [WIDTH-1:0] out);
  always @(posedge clk) begin
    if (reset) begin
      out <= 0;
    end else begin
      out <= in;
    end
  end
endmodule
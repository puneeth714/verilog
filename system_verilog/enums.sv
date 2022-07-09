module enums;

typedef enum {False,True} bad;
initial begin
bad answer;
answer=True;
$display(answer);
end
endmodule

module tb;
string str1 = "Good Morning";

initial begin
$display("%s", str1);
$display("%s",{str1,str1});
$display("%s",{3{str1}});
end
endmodule
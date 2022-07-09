module array;
integer arr[10][10][10];

initial begin
integer a=10;
integer b=10;
integer c=10;

foreach(a[i]) begin
foreach(b[i]) begin
foreach(c[i]) begin
arr[a][b][c]=$random;
$display(arr[a][b][c]);
end
end
end
end
endmodule

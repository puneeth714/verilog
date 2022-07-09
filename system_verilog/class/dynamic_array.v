module dynmaic_array;
bit [7:0]d_array[][];
initial begin
d_array = new[4];
/*for(int row=0;row<5;row++) begin
d_array[row] = new[3];
end
for (int row=0;row<4;row++) begin
for(int col=0;col<3;col++) begin
d_array[row][col] = ;
(td_array[%0d][%0d] = %0d,row,col,d_array[row][col]);
end
end*/
foreach(d_array[i])
d_array[i]=new[3];
foreach(d_array[i,j]) begin
d_array[i][j] = ;
(td_aaray[%0d,%0d] = %0d,i,j, d_array[i][j]);
end
end
endmodule

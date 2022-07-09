module arrays;
//create an array a;
integer a[];
int i=0;
always 
begin
    if(i==100) $finish;
    a[i]=$random(4);
    i++;
end
initial
begin
    
    $monitor(a);
end
initial 
begin
     #1000;
    $finish;
end

endmodule

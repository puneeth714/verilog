module assoc_array;
int a[*];

initial
begin
$display("%d", a.size);
a[22]=890;
a[55]=678;
a[90]=785;

$display("%d", a.size);
$display("%p",a);

a.delete(55);

$display("%d", a.size);

a.delete();

$display("%d", a.size);
end
endmodule
module dyn_array;
int d[];

initial

begin

$display("%d", d.size);

d=new[5];

$display("%d", d.size);

d[0]=22;
d[3]=67;

$display("%d", d[0]);
$display("%p", d);

d.delete();

$display("%d", d.size);
end
endmodule
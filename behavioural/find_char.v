module find_char;
//initialize variables
reg [0:60*8]string;
integer i=1;
//set string to "Hi i am puneeth"
initial 
begin
    string="Hi you puneeth";
    $display("string is %s",string);
    //find the index of 'i'
    while(i<60)
    begin
        $display("i is found at %d",string[i*8]);
        if(string[i]=="i")
        begin
            fork
                $display("i is found at %d",string[i]);
                
            join
        
    end
    i=i+1;
    $display("%d",i);
    end
end

endmodule
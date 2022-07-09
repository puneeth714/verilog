module function_half_adder(a,b,sum,carry);
input a,b;
output sum,carry;
function summer;
input a,b;
summer = a^b;
endfunction
function carry_gen;
input a,b;
carry_gen=a+b;
endfunction
endmodule

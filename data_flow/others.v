module function1(X,F,D,N);
	input X,F,D;
	output N;
	assign N= (F & D) | (F & X) |(~F | D) |(~D | F);
endmodule
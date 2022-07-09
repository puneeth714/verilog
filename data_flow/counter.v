module counter (
    clk,
    clear,
    q
);
  input clk, clear;
  output [3:0] q;
  T_FF t1 (
      q[0],
      clk,
      reset
  );
  T_FF t2 (
      q[1],
      q[0],
      clear
  );
  T_FF t3 (
      q[2],
      q[1],
      clear
  );
  T_FF t4 (
      q[3],
      q[2],
      clear
  );
endmodule

module T_FF (
    out,
    clk,
    clear
);
  input clk, clear;
  output out;
  D_FF d (
      q,
      ~clk,
      reset
  );
endmodule

module D_FF (
    out,
    clk,
    clear
);
  input clk, clear;
  output out;
  wire cbar, sbar, s, r, rbar;
  assign sbar = ~clear;
  assign s = (cbar * ~clk * sbar);
  assign r = (~clk * s * rbar);
  assign rbar = ~(~q * cbar * r);
  assign q = ~(s * qbar);
  assign qbar = ~(r * cbar * q);
endmodule

module testbench;
  reg clk, clear;
  wire [3:0] q;
  counter c (
      clk,
      clear,
      q
  );
  initial begin
    $monitor("%d and clk is %d clear is %d", q, clk, clear);
    clear=0;
    clk=0;
    #10;
    clk=1;
    #10;
    clk=0;

    #10;
    clear=1;
    #10;
    clear=0;
    #10;
    clk=1;
    #10;
    clk=0;

  end
endmodule

module shift(
  input [3:0] x, 
  output [3:0] l_shift, r_shift
);
  assign l_shift = x << 1;
  assign r_shift = x >> 1;

endmodule

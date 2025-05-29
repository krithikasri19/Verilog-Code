module bitwise_ops(
  input [3:0] x,
  input [3:0] y,
  output [3:0] not_x, and_xy, or_xy, xor_xy, xnor_xy
);

  assign not_x   = ~x;
  assign and_xy  = x & y;
  assign or_xy   = x | y;
  assign xor_xy  = x ^ y;
  assign xnor_xy = x ^~ y;

endmodule

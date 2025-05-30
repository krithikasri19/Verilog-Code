module comparator(
  input [3:0] a, b,
  output ceq, clt, cgt);

  assign ceq = (a == b);
  assign clt = (a < b);
  assign cgt = (a > b);

endmodule

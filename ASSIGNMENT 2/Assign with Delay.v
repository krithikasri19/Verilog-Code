module delayed_add(
  input [3:0] a, b,
  output [3:0] sum
);
  assign #5 sum = a + b;

endmodule

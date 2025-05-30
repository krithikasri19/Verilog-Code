module zero_one_detect(
  input [3:0] x, 
  output zero, one
);
  assign zero = ~(|x);
  assign one  = &x;

endmodule

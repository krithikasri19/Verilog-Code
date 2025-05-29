module replicate(
  input a, 
  input [1:0] b, 
  input [1:0] c,
  output [6:0] y);
  assign y = {a, {4{b[0]}}, c[1]};

endmodule

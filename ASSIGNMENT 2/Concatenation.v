module concat(
  input [1:0] b, c, 
  input a, 
  output [3:0] y
);
  assign y = {a, b[0], c[1]};

endmodule

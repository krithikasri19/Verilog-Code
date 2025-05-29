module parity(
  input [8:0] x, 
  output ep, op
);
  assign ep = ^x;
  assign op = ~ep;

endmodule

module implicit_net(
  input a, 
  input b
);
  assign out = a | b; // out is implicitly declared as wire

endmodule

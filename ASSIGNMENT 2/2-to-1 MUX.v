module mux2(
  input a, b, sel, 
  output y
);
  assign y = sel ? b : a;

endmodule

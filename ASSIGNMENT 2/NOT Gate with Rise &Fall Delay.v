module not_gate(
  input a, 
  output y
);
  assign #(3,5) y = ~a;
endmodule

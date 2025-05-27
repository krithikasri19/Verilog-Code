// dataflow modelling

module not_gate(
  input a,
  output y
);
  assign y = ~a;
endmodule

// behavioral modelling

module not_gate(
  input a, 
  output y
);
  always @ (*)
    begin 
      y = ~a;
    end
endmodule

// structural modelling

module not_gate(
  input a, 
  output y
);

  not n1 (y,a);
endmodule

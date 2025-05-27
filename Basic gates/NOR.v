// dataflow modelling

module nor_gate(
  input a,
  input b,
  output y
);

  assign y = ~ (a | b);

endmodule

// behavioral modelling

module nor_gate(
  input a,
  input b,
  output y
);
  always @ (*)
    begin
      y = ~ (a | b);
    end

endmodule

// structural modelling

module nor_gate(
  input a,
  input b,
  output y
);

  nor no1 ( y,a,b);

endmodule

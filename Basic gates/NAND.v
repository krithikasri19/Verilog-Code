// dataflow modelling

module nand_gate(
  input a,
  input b,
  output y
);
  assign y = ~(a & b);

endmodule

// behavioral modelling

module nand_gate(
  input a,
  input b,
  output y
);
  always @ (*)
    begin 
      y = ~ (a & b );
    end

endmodule

// structural modelling

module nand_gate(
  input a,
  input b,
  output y
);
  nand na1 (y,a,b);

endmodule

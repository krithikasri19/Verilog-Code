// dataflow modelling

module xor_gate(
  input a,
  input b,
  output y
);
  assign y = a ^ b;

endmodule

// behavioral modelling

module xor_gate(
  input a,
  input b,
  output y
);
  always @ (*)
    begin 
      y = a ^ b;
    end

endmodule

// structural modelling

module xor_gate(
  input a,
  input b,
  output y
);

  xor x1 (y,a,b);

endmodule

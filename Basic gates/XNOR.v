// dataflow modelling
module xnor_gate(
  input a,
  input b,
  output y
);

  assign y = ~ (a ^ b);

endmodule

//behavioral modelling

module xnor_gate(
  input a,
  input b,
  output y
);
  always @ (*)
    begin 
      y = ~ (a ^ b);
    end

endmodule

//structural modelling

module xnor_gate(
  input a,
  input b,
  output y
);

  xnor x2 (y,a,b);

endmodule

//Dataflow modelling

module and_gate(
  input a,
  input b,
  output y
);

  assign y = a & b;
endmodule

//behavioral modelling

module and_gate(
  input a,
  input b,
  output y
);
  always @ (*)
    begin 
      y = a & b;
    end
endmodule

//structural modelling

module and_gate(
  input a,
  input b,
  output y
);
  and a1 (y,a,b);

endmodule

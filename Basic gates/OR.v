// dataflow modelling

module or_gate(
  input a,
  input b, 
  output y
);
assign y=a|b;
endmodule

// behavioral modelling 

module or_gate(
  input a,
  input b, 
  output y
);
  always @ (*)
    begin 
      y = a | b;
    end
endmodule

//structural modelling

module or_gate(
  input a,
  input b, 
  output y
);

  or o1 ( y,a,b);

endmodule

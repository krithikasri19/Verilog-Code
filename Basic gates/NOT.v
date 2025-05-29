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

//test bench

//test bench

module not_tb;
reg a;
wire y;
  xor_gate dut(.a(a),
               .y(y)
              );
initial begin
  $display("XOR GATE TRUTH TABLE");
  $monitor("A : %b     OUT : %b ",a,y);
a = 0 ;  #10 ;
a = 1 ;  #10 ;
$finish;
end
//TO VIEW WAVEFORMS
initial begin
  $dumpfile("xor_gate.vcd");
  $dumpvars(0,xor_tb);
end
endmodule

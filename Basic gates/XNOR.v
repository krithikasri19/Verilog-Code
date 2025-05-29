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


//test bench

module xnor_tb;
reg a,b;
wire y;
  xnor_gate dut(.a(a),
               .b(b),
               .y(y)
              );
initial begin
  $display("XNOR GATE TRUTH TABLE");
  $monitor("A : %b B : %b     OUT : %b ",a,b,y);
a = 0 ; b = 0 ; #10 ;
a = 0 ; b = 1 ; #10 ;
a = 1 ; b = 0 ; #10 ;
a = 1 ; b = 1 ; #10 ;
$finish;
end
//TO VIEW WAVEFORMS
initial begin
  $dumpfile("xnor_gate.vcd");
  $dumpvars(0,xnor_tb);
end
endmodule

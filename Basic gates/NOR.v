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

//test bench

module nor_tb;
reg a,b;
wire y;
  nor_gate dut(.a(a),
               .b(b),
               .y(y)
              );
initial begin
  $display("NOR GATE TRUTH TABLE");
  $monitor("A : %b B : %b     OUT : %b ",a,b,y);
a = 0 ; b = 0 ; #10 ;
a = 0 ; b = 1 ; #10 ;
a = 1 ; b = 0 ; #10 ;
a = 1 ; b = 1 ; #10 ;
$finish;
end
//TO VIEW WAVEFORMS
initial begin
  $dumpfile("nor_gate.vcd");
  $dumpvars(0,nor_tb);
end
endmodule

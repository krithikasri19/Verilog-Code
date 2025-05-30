module mux4(
  input [1:0] sel, 
  input a, b, c, d, 
  output y
);
  assign y = sel == 2'b00 ? a :
             sel == 2'b01 ? b :
             sel == 2'b10 ? c : d;

endmodule

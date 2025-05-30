module demux(
  input in, 
  input [1:0] sel, 
  input en, 
  output [3:0] out
);
  assign out[0] = en & (sel == 2'b00) ? in : 0;
  assign out[1] = en & (sel == 2'b01) ? in : 0;
  assign out[2] = en & (sel == 2'b10) ? in : 0;
  assign out[3] = en & (sel == 2'b11) ? in : 0;

endmodule

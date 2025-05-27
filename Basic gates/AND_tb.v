module and_tb;
reg a,b;
wire y;
  and_gate dut(.a(a),.b(b),.y(y));
initial begin
$display("AND GATE TRUTH TABLE");
  $monitor("A : %b B : %b     OUT : %b ",a,b,y);
a = 0 ; b = 0 ; #10 ;
a = 0 ; b = 1 ; #10 ;
a = 1 ; b = 0 ; #10 ;
a = 1 ; b = 1 ; #10 ;
$finish;
end
//TO VIEW WAVEFORMS
initial begin
$dumpfile("and_gate.vcd");
$dumpvars(0,and_tb);
end
endmodule

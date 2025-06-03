//Design code
module counter(
  input clk,
  output reg [2:0] count
);
  initial 
  count = 0;
  always @(posedge clk)
    count <= count + 1;
endmodule

//testbench
module counter_tb;
  reg clk;
  wire [2:0] count;
  counter uut (clk,count);
  initial begin
    clk = 0;
    
  end
  initial begin
    repeat (8) begin
      #5 clk = 1;  // Rising edge
      #5 clk = 0;  // Falling edge
      $display("Time=%t | Count=%d", $time, count);
      $dumpfile("cad.vcd");
      $dumpvars(0,counter_tb);
    end
    $finish;
  end
endmodule

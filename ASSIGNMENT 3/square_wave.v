// design code
module square_wave_generator(
output reg signal);
  initial begin
    signal = 0;
    forever #5 signal = ~signal;
  end
endmodule


//testbench
module square_wave_generator_tb;
  wire signal;
  square_wave_generator uut(signal);

  initial begin
    $dumpfile("cad.vcd");
   $dumpvars(0,square_wave_generator_tb);
    #100 $finish;  // Run the simulation for 100 time units
  end
endmodule




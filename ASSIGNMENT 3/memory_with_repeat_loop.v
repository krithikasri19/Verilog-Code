//design code
module memory_init;
  reg [7:0] mem [0:15];  
  integer i;

  initial begin
    i = 0;
    repeat (16) begin
      mem[i] = i * 8'h11;
      i = i + 1;
    end
  end
endmodule

//test bench
module tb_memory_init;
  reg [7:0] mem [0:15];
  integer i;
  memory_init uut();
  initial begin
    #5;
    $display("Memory Contents After Initialization:");
    for (i = 0; i < 16; i = i + 1) begin
      $display("mem[%0d] = %h", i, uut.mem[i]);
    end
    $finish;
  end
endmodule

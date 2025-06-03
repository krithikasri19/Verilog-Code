//design code
module bit_counter (
  input [3:0] in,
  output reg [2:0] count
);

  integer i;

  always @(*) begin
    count = 0;
    for (i = 0; i < 4; i = i + 1) begin
      if (in[i] == 1'b1)
        count = count + 1;
    end
  end

endmodule

//test bench

module bit_counter_tb;
  reg [3:0] in;
  wire [2:0] count;

  // Instantiate the design
  bit_counter uut (
    .in(in),
    .count(count)
  );

  initial begin
    $dumpfile("bit_counter.vcd");
    $dumpvars(0, bit_counter_tb);

    in = 4'b0000; #10;
    $display("in = %b, count = %d", in, count);

    in = 4'b0001; #10;
    $display("in = %b, count = %d", in, count);

    in = 4'b1010; #10;
    $display("in = %b, count = %d", in, count);

    in = 4'b1111; #10;
    $display("in = %b, count = %d", in, count);

    $finish;
  end

endmodule

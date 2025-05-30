module compare_xz;
  reg [3:0] a = 4'b1x01;
  reg [3:0] b = 4'b1x01;

  initial begin
    $display("a == b  : %b", a == b);  // Returns false (x is unknown)
    $display("a === b : %b", a === b); // Returns true (bitwise comparison)
  end

endmodule

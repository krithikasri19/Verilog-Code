module div_mod_demo;
  reg signed [7:0] s_a = -25;
  reg signed [7:0] s_b = 4;
  reg [7:0] u_a = 25;
  reg [7:0] u_b = 4;

  initial begin
    $display("Signed: %0d / %0d = %0d, %% = %0d", s_a, s_b, s_a/s_b, s_a%s_b);
    $display("Unsigned: %0d / %0d = %0d, %% = %0d", u_a, u_b, u_a/u_b, u_a%u_b);
  end
endmodule

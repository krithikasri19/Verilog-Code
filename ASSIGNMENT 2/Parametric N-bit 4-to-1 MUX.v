module mux4_param #(parameter N = 4)(input [N-1:0] a, b, c, d,
                                     input [1:0] sel,
                                     output [N-1:0] y);

  assign y = sel == 2'b00 ? a :
             sel == 2'b01 ? b :
             sel == 2'b10 ? c : d;

endmodule

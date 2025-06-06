// design code
module single_port(write_ena,din,addres,clk,rst,dout);
  input [5:0]addres;
  input write_ena,clk,rst;
  input [7:0]din;
  output reg [7:0] dout;
  reg [7:0]mem[31:0];
  reg [5:0]address_mem;
  
  always@(posedge clk) begin
    if(write_ena)
      mem[addres]<=din;
    else
      address_mem<=addres;
  end
  assign dout = mem[address_mem];
endmodule

//  testbench code
module single_port_tb;
  reg [5:0]addres;
  reg write_ena,clk,rst;
  reg [7:0]din;
  wire[7:0] dout;
  
  single_port uut(
    .addres(addres),
    .din(din),
    .clk(clk),
    .dout(dout),
    .write_ena(write_ena)
  );
  initial clk=0;
   always #5 clk =~clk;
   initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars();
      #0;
      write_ena = 0;
      addres=0;
      din = 0;
      
      #10
      write_ena = 1;
      for(int i=0;i<8;i=i+1) begin
        din = i*10;
        addres  = i;
        #10;
      end
      #10 write_ena=0;
      for(int i=0;i<8;i=i+1)begin
        addres = i;
        
        #10 $display ("read %0b: data_out = %b",i,dout);
      end
      
      
      $finish;
    end
endmodule

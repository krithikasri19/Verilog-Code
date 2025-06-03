//design code
module count_ones(
input [3:0] data,output  [2:0] y);

  integer i,count;
  always@(*) begin 
     i=0;
     count = 0;
    
    while (i < 4) begin
      if (data[i] == 1)
        count= count + 1;
      else
        count+=0;
      i = i + 1;
    end
  end
  
  assign y=count;
endmodule

//test bench
module count_ones_tb;
  reg [3:0] data ;  // Example input
  wire [2:0]y;
  integer i;
  count_ones uut (.data(data),.y(y));
    initial begin
      data=0;
      $monitor("Input = %b, Number of 1s = %d", data, y);
      $dumpfile("count_ones.vcd");
      $dumpvars(0,count_ones_tb);
 
    for(i=0;i<8;i=i+1)
    #5 data=i;
  end  
endmodule

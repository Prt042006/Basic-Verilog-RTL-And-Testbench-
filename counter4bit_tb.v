module test ;
  wire [3:0] count ;
  reg clk,reset;
  
  count16 dut (clk,reset,count);
  
  initial begin
	clk=0;
    reset =1;
    #30 reset =0;
    forever  #5 clk =~clk;
  end 
    
  initial begin 
    #300;
    $finish;
  end
  initial begin 
    $monitor ("time=%t ,count=%b",$time,count);
  end
endmodule 

// Code your testbench here
// or browse Examples
module test ;
  
  wire sum , cout;
  reg [0:2] xr;
  
  fullAdder d (.a(xr[0]), .b(xr[1]), .cin(xr[2]), .sum(sum), .cout(cout));
  initial begin
    integer i;
    xr = 3'b0;
    for (i =0; i<8; i++) begin
        #10;
        xr=i;
    end
    #10
    if ({cout,sum}!== xr[0]+xr[1]+xr[2]) begin 
      $display("error at time %t",$time);
    end
    $finish;
  end;
  initial begin 
      
    $monitor("time=%t, xr[0]=%b, xr[1]=%b, xr[2]=%b, cout=%b, sum=%b",$time, xr[0], xr[1], xr[2], cout, sum);
   
  end
endmodule

module test ;
  
  wire diff , bout;
  reg [2:0] xr;
  
  fullSubb dut (.a(xr[2]), .b(xr[1]), .bin(xr[0]), .d(diff), .bout(bout));
  initial begin
    integer i;
    xr = 3'b0;
    for (i =0; i<8; i++) begin
        #10;
        xr=i;
    end
    #10;
    $finish;
  end
  initial begin 
      
    $monitor("time=%t, xr[2]=%b, xr[1]=%b, xr[0]=%b, diff=%b, bout=%b",$time, xr[2], xr[1], xr[0], diff, bout);
   
  end
endmodule

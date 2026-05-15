module test ;
  
  reg [7:0]xr;
  wire [2:0]out;
  encoder823 dut (.in(xr), .out(out) );
  initial begin
    integer i;
    // xr = 3'b0;
    for (i =0; i<8; i++) begin
        #10;
      xr=$urandom_range(999,444);
    end
    
    $finish;
  end
  initial begin 
      
    $monitor("time=%t, xr=%b, out=%b",$time, xr, out);
   
  end
endmodule

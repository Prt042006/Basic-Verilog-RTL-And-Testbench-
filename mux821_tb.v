module test ;
  
  reg [7:0]xr;
  reg [2:0] s;
  wire out;
  mux821 dut (.a(xr), .s(s), .out(out) );
  initial begin
    integer i;
   // xr = 3'b0;
    for (i =0; i<16; i++) begin
        #10;
        s=i;
      xr=$urandom_range(999,444);
    end
    
    $finish;
  end
  initial begin 
      
    $monitor("time=%t, xr=%b, s=%b, out=%b",$time, xr, s, out);
   
  end
endmodule

module fullSubb (a, b, bin, bout, d);
  input a,b,bin;
  output d, bout;
  assign {bout,d} = a - b -bin;
  
endmodule

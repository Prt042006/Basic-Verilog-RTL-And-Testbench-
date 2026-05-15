module fullAdder (a, b, cin, cout, sum);
  input a,b,cin;
  output sum, cout;
  assign {cout,sum} = a + b + cin;
endmodule

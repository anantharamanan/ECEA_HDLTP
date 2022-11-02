module half_add(a,b,sum,cout); 
  input a,b;
  output sum,cout;
 

  xor x1(sum,a,b);
  and a1(cout,a,b);
endmodule 
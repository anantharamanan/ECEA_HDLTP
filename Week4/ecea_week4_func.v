module func(a,b,c,x);
input a,b,c;
output x;
wire t1,t2,t3;

and a1(t1,a,b);
and a2(t2,a,c);
and a3 (t3,a,b,c);

assign x=t1|t2|t3;
endmodule
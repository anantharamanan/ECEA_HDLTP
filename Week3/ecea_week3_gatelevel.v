module fulladd_gate(a,b,cin,sum,cout);
input a,b;
input cin;
output sum;
output cout;

wire t1,t2,t3,t4,t5;
xor(t1,a,b);
xor(sum,t1,cin);
and(t2,a,b);
and(t3,b,cin);
and(t4,cin,a);
or(t5,t2,t3);
or(cout,t5,t4);
endmodule
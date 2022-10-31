primitive udp_sum(sum,a,b,cin);
input a,b,cin;
output sum;
table
    0 0 0:0;
    0 0 1:1;
    0 1 0:1;
    0 1 1:0;
    1 0 0:1;
    1 0 1:0;
    1 1 0:0;
    1 1 1:1;
endtable
endprimitive


primitive udp_carry(cout,a,b,c);
input a,b,c;
output cout;
table
    0 0 0:0;
    0 0 1:0;
    0 1 0:0;
    0 1 1:1;
    1 0 0:0;
    1 0 1:1;
    1 1 0:1;
    1 1 1:1;
endtable
endprimitive

module full_adder(a,b,cin,sum,cout);
input a,b,cin;
output sum,cout;
udp_sum(sum,a,b,cin);
udp_carry(cout,a,b,cin);
endmodule


module full_addtb;
reg a,b,cin;
wire sum,cout;
fulladder  DUT(a,b,cin,cout,sum);
 initial begin
   $monitor($time,"a=%b b=%b cin=%b sum=%b cout=%b",a,b,cin,sum,cout);
   $dumpvars(0);
   $dumpfile("adder_res.vcd");
   #1 a=0;b=0;cin=0;
   #1 cin=1;
   #1 a=0;b=1;cin=0;
   #1 cin=1;
   #1 a=1;b=0;cin=0;
   #1 cin=1;
   #1 a=1;b=1;cin=0;
   #1 cin=1;
 end
endmodule
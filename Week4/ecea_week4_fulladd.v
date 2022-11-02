
module fulladder(a,b,cin,cout,sum);
input a,b,cin;
output cout,sum;

assign sum=a^b^cin;
assign cout=(a&b)|(b&cin)|(cin&a);
endmodule
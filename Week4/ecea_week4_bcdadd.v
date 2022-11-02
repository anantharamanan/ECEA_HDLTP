module bcd_adder(a,b,cin,sum,cout);
input [3:0] a,b;
input cin;
output  [3:0] sum;
output cout;
reg [4:0] s2;
assign sum=s2[3:0];
assign cout=s2[4];
always @(*)
begin
 s2=a+b+cin;
 if (s2>9)
    s2=s2+6;
end
endmodule
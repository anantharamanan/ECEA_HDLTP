module Jk(J,k,reset,clk,q);
input J,k,clk,reset;
output reg q;

always @(posedge clk)
if (reset==0)
    q<=0;
else
    if(J==0 & k==0)
        q<=q;
    else if(J==0 & k==1)
        q<=0;
    else if(J==1 & k==0)
        q<=1;
    else if(J==0 & k==1)
        q<=~q;
endmodule
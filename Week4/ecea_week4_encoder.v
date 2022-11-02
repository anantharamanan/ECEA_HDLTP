module encoder(en,a,y);
input en;
input [7:0] a;
output reg [2:0] y;
always @(en,a)
if (en==0)
    if(a[7]==1) y=3'b111;
    else if(a[6]==1) y=3'b110;
    else if (a[5]==1) y=3'b101;
    else if (a[4]==1) y=3'b100;
    else if (a[3]==1) y=3'b011;
    else if (a[2]==1) y=3'b010;
    else if (a[1]==1) y=3'b001;
    else y=3'b000;
else
 y=3'bzzz;


endmodule
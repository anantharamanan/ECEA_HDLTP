module counter(clk,count,clear);
input clk,clear;
output reg [3:0] count;

always @(posedge clk)
begin
    if(clear)
        count <=4'b0;
    else
        count <=count+1;
end
endmodule
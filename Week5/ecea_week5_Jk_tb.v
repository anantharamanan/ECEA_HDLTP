module Jk_tb;
reg J,k,clk,reset;
wire q;
Jk dut(J,k,reset,clk,q);
initial  clk=1'b0;
always #5 clk=~clk;

initial
begin 
    $monitor($time,"J=%b,k=%b,reset=%b,q=%b",J,k,reset,q);
         reset=0;J=0;k=0;
    #100 reset=1;J=1;k=0;
    #100 reset=1;J=0;k=1;
    #100 reset=1;J=1;k=1;

    $finish;
end
endmodule
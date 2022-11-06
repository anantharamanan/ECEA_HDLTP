module counter_tb;
reg clk,clear;
wire [3:0] count;

counter dut(clk,count,clear);

initial clk=1'b0;
always #5 clk=~clk;


initial
begin 
    $monitor($time,"count=%b",count);
    clear=1'b1;
    #15 clear=1'b0;
    #200 clear=1'b1;

    #10$finish;

end
endmodule
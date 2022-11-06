module DFF_tb;
reg d,reset,clk;
wire q;
 dff DUT(d,q,clk,reset);
 initial begin
  clk=0;
  forever #5 clk = ~clk;  
end
initial
 begin 
    $monitor($time,"d=%b,reset=%b,q=%b",d,reset,q);
      reset=0; d <= 0;
      #100; reset=1; d <= 1;
      #100; d <= 0;
      #100; d <= 1;
      #100;reset=0;

    $finish;
 end
endmodule
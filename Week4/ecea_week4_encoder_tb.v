module enc_tb;
 reg [7:0] a;
 reg en;
 wire [2:0] y;

encoder dut(en,a,y);
initial 
begin
    $monitor("a=%b,y=%b,en=%b",a,y,en);

    en=1;#5
    en=0;a=8'b10000000;#5
    en=0;a=8'b00001000;#5
    en=0;a=8'b00100000;#5

    $finish;



 end
endmodule
module mux_tb;
 wire out;
 reg [3:0] in;
 reg [1:0] sel;
 mux dut(in,sel,out);

 initial
 begin 

    $monitor("in=%b,out=%b,sel=%b",in,out,sel);
    in=4'b1111;sel=2'b01;#1
    in=4'b1001;sel=2'b11;#1
    in=4'b1000;sel=2'b00;#1
    in=4'b0100;sel=2'b01;
 end
endmodule
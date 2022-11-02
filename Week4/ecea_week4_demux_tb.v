module demux_tb;
reg [1:0] sel;
reg in;
wire [3:0] out;
demux dut (in,out,sel);
initial 
begin 
    $monitor("in=%b,sel=%b,out=%b",in,sel,out);
    in=0;sel=2'b00;#1
    in=1;sel=2'b10;#1
    in=1;sel=2'b01;#1
    in=0;sel=2'b11;
    $finish;
end

endmodule
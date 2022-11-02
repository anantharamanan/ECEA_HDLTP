module decode_tb;
reg en,a,b;
wire [3:0]y;

decoder DUT(en,a,b,y);
initial 
begin 
    $monitor("en=%b,a=%b,b=%b,y=%b",en,a,b,y);
    
    en=1;#5
    en=0;a=0;b=0;#5
    en=0;a=0;b=1;#5
    en=0;a=1;b=0;#5
    en=0;a=1;b=1;#5

    $finish;


end

endmodule
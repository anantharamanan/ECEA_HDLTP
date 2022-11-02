module func_tb;
reg a,b,c;
wire x;

func dut(a,b,c,x);
initial
begin 
    $monitor("a=%b,b=%b,c=%b,x=%b",a,b,c,x);
    a=0;b=0;c=0;#5
    c=1;#5
    a=0;b=1;c=0;#5
    c=1;#5
    a=1;b=0;c=0;#5
    c=1;#5
    a=1;b=1;c=0;#5
    c=1;#5

    $finish;
end


endmodule
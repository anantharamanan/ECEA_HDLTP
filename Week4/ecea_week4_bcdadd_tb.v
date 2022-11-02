module bcdadd_tb;
reg [3:0] a,b;
reg cin;
wire [3:0] sum;
wire cout;
 bcd_adder dut(a,b,cin,sum,cout);
 initial
 begin
    $monitor("a=%b,b=%b,cin=%bsum=%b,cout=%b",a,b,cin,sum,cout);
    a=4'b1000;b=4'b0001;cin=0;#5
    a=4'b1001;b=4'b1000;cin=1;#5;
    a=4'b0010;b=4'b0010;cin=1;

    $finish;

  end
endmodule
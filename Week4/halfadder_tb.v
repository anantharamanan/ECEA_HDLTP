module halfadder_tb;
    wire sum,cout;
    reg a,b;
    half_add DUT(a,b,sum,cout);
    initial begin
        $monitor($time,"A=%b,B=%b,S=%b,C=%b",a,b,sum,cout);
        #1 a=0;b=0;
        #1 b=1;
        #1 a=1;b=0;
        #1 b=1;
    end
endmodule
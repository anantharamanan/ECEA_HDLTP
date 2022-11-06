module shiftregister_tb;
reg A,clk,clr;
wire E;
sr dut(clr,clk,A,E);
initial begin
    clk=1'b0;
    #2 clr=0;
    #5 clr=1;
end

always #5 clk=~clk;
initial
begin #2
    repeat(2)
 begin
    $monitor($time,"A=%b,E=%b",A,E);
 #10 A=0;
 #10 A=0;
 #10 A=1;
 #10 A=1;
 end

end
initial begin
    $dumpfile("shift_register.vcd");
    $dumpvars(0,shiftregister_tb);
    #200 $finish;
end
endmodule
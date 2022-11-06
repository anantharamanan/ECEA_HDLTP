module dff(d,q,clk,reset);
    input d,reset,clk;
    output  reg q;
    
    always @(posedge clk)
    begin
        if(reset==0)
            q<=0;
        else
            q<=d;

     end

endmodule
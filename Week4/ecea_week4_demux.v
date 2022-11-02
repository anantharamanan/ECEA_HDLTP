module demux(in,out,sel);
input [1:0] sel;
input in;
output reg  [3:0] out;


always @(sel,in)
case(sel)
    2'b00 : begin 
        out[0]=in;
        out[3:1]=0;
        end
    2'b01: begin 
        out[1]=in;
        out[0]=0;
    end
    2'b10: begin 
        out[2]=in;
        out[1:0]=0;
    end
    2'b11:begin 
        out [3]=1;
        out [2:0]=0;
    end
endcase

endmodule
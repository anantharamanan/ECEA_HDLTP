module sr(clr,clk,A,E);
input A,clk,clr;
output reg E;
reg B,C,D;
always @(posedge clk or negedge clr)
begin
  if(!clr)
  begin
    B=0;C=0;D=0;E=0;
  end
  else
  begin
    E=D;
    D=C;
    C=B;
    B=A;
  end
end
endmodule
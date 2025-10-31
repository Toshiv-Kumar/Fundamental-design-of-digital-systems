module dff 
(
input clk, din,
output reg q, qbar
);
 
always@(posedge clk)
begin
q    <= din;
qbar <= ~din;
end
 
 
endmodule

`timescale 1ns / 1ps
 
module tb;
 
reg clk = 0, din = 0;
wire q,qbar;
integer i = 0;
 
dff dut (clk, din , q, qbar);
 
always #5 clk = ~clk;
 
initial begin
 
for(i =0; i < 20; i= i+1)
begin
@(posedge clk);
din = $urandom();
end
 
end
 
initial begin
#250;
$finish();
end
 
 
endmodule

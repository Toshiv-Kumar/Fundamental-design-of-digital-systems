`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.11.2025 01:01:57
// Design Name: 
// Module Name: TB
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module TB();
reg din;
reg clk=1'b0;
reg rst;
wire dout;
fsm_moore dut(din, clk, rst, dout);
always #5 clk=~clk;

initial begin
    #3 rst=1'b1;
    #10 rst=1'b0; din=1'b1;
    #10 din=1'b0;
    #10 din=1'b0;
    #10 din=1'b1;
    #10 din=1'b0;
    #10 din=1'b0;
    #10 din=1'b1;
    

#10 $finish;
end

endmodule

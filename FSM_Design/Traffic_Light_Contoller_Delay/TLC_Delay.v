`timescale 1ns / 1ps
 
 
module top(
    input clk,rst,
    output reg r,g,y
    );
    
 reg [1:0] state,next_state;
 
 integer count;
 initial begin
 state = 0;
 count = 0;
 next_state = 0;
 end   
 
 parameter start = 0;
 parameter red = 1;
 parameter green = 2;
 parameter yellow = 3;
   
 
always@(posedge clk or posedge rst)
begin
if(rst == 1'b1)
state <= start;
else
begin
case(state)
red : 
begin
if(count < 6) begin
count <= count + 1;
state <= red;
end
else begin
count <= 0;
state <= yellow;
end
end
 
yellow : 
begin
if(count < 6) begin
count <= count + 1;
state <= yellow;
end
else begin
count <= 0;
state <= green;
end
end
 
green : 
begin
if(count < 6) begin
count <= count + 1;
state <= green;
end
else begin
count <= 0;
state <= red;
end
end
 
default : state <= red;
endcase
end    
end
 
always@(state)
begin
case(state)
start : 
begin
r = 0;
g = 0;
y = 0;
end
 
red : 
begin
r = 1;
g = 0;
y = 0;
end
 
yellow : 
begin
r = 0;
g = 0;
y = 1;
end
 
green : 
begin
r = 0;
g = 1;
y = 0;
end
 
default : 
begin
r = 0;
g = 0;
y = 0;
end
endcase
end
endmodule

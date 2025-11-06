`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.11.2025 19:30:21
// Design Name: 
// Module Name: fsm_moore
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

//Mealy machine 1-Process 
module fsm_moore(
input din,
input clk,
input rst,
output reg dout
    );
    
    parameter s0 = 0, s1 = 1, s2 = 2, s3 = 3;
    reg [1:0]state = s0;

always@(posedge clk) begin
    if(rst) state<=s0;
    else begin
        case(state)
        s0: begin dout<=0; 
            if(din==1'b1) state<=s1;
            else state<=s0;
              end
        s1: begin dout<=0;
            if(din==1'b0) state<=s2;
            else state<=s1;
            end
        s2: begin dout<=0;
            if(din==1'b0) state<=s3;
            else state<=s1; 
            end
        s3: begin
            if(din==1'b0) begin dout<=0; state<=s0 ;  end
            else begin dout<=1; state<=s1;    end
        
        end
        default: state<=s0;
        endcase
        end
    end
endmodule

`timescale 1ns/1ps
module TB;
    reg a, b, clk, rst;
    wire s;
    
    serial_Adder_31 dut(
    a,
    b, 
    rst,
    clk,
    s);
    
    always #5 clk=~clk;
    initial 
    begin
        rst=1'b1;
        clk=1'b0;
        $monitor($time, "clk=%b rst=%b a=%b b=%b s=%b", clk, rst, a, b, s);         
        #6 rst=1'b0;
        #50 $finish;
        end
        
     initial 
     begin      
        #14 a=1; b=1; 
        # 10 a=1; b=0;
        # 10 a=0; b=1;
        # 10 a=0; b=0;
        end
        
        endmodule
    

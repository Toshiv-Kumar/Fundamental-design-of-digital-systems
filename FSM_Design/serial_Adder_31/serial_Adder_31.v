module serial_Adder_31(
    input a,
    input b, 
    input rst,
    input clk,
    output reg s);
    reg PSC, NSC;
    parameter carry_state_0 = 1'b0, carry_state_1 = 1'b1;
    
    always @(posedge clk or posedge rst) begin
        if (rst) PSC<=carry_state_0;
        else PSC<=NSC;
    
    end
    
    always @ (PSC, a, b) begin
        case (PSC) 
            carry_state_0: begin
                NSC = (a & b) ? carry_state_1: carry_state_0;
                s = (a ^ b);
                end
            carry_state_1: begin
                NSC = (a | b) ? carry_state_1 : carry_state_0;
                s = (a==b) ? 1'b1 : 1'b0;
                end
            default: begin
                NSC = carry_state_0;
                s=1'b0;
                end

                
    
        endcase
    
    end
    
    endmodule

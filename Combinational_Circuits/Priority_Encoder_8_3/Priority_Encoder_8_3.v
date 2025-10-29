module priority_encoder_8to3(a, b, c, d, y);
input [7:0] y;
output reg a, b, c, d;

always @(*)
begin
    casez(y)
        8'b1???????: begin a=1; b=1; c=1; d=1; end
        8'b01??????: begin a=1; b=1; c=0; d=1; end
        8'b001?????: begin a=1; b=0; c=1; d=1; end
        8'b0001????: begin a=1; b=0; c=0; d=1; end
        8'b00001???: begin a=0; b=1; c=1; d=1; end
        8'b000001??: begin a=0; b=1; c=0; d=1; end
        8'b0000001?: begin a=0; b=0; c=1; d=1; end
        8'b00000001: begin a=0; b=0; c=0; d=1; end
        default:     begin a=0; b=0; c=0; d=0; end
    endcase
end
endmodule

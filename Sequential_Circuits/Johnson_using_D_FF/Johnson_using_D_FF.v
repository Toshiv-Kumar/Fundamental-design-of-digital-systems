module d_flipflop (
    input d,
    input clk,
    input reset,
    output reg q
);
    always @(posedge clk or posedge reset) begin
        if (reset)
            q <= 0;
        else
            q <= d;
    end
endmodule


module johnson_counter_4bit (
    input clk,
    input reset,
    output [3:0] q
);
    wire [3:0] d;

    assign d[3] = ~q[0];
    assign d[2] = q[3];
    assign d[1] = q[2];
    assign d[0] = q[1];

    d_flipflop D0 (.d(d[0]), .clk(clk), .reset(reset), .q(q[0]));
    d_flipflop D1 (.d(d[1]), .clk(clk), .reset(reset), .q(q[1]));
    d_flipflop D2 (.d(d[2]), .clk(clk), .reset(reset), .q(q[2]));
    d_flipflop D3 (.d(d[3]), .clk(clk), .reset(reset), .q(q[3]));
endmodule

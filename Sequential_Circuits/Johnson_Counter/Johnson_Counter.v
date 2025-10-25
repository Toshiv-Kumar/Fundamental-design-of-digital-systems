module Johnson_Counter(
	input clk,
	input rst,
	output reg [1:0]q
);

always@(posedge clk) begin
	if (rst) q<=2'b00;
	else begin
	q[1]<=~q[0];
	q[0]<=q[1];

end


end
endmodule

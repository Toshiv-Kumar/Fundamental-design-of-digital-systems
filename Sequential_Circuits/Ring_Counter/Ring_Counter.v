module Ring_Counter(
	input clk,
	input rst,
	output [1:0]q
);

always(posedge clk) begin
	if (rst) q<=2'b01;
	else begin
	q[1]<=q[0];
	q[0]<=q[1];

end


end
endmodule

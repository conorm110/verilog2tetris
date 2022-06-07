module program_counter (
	input [15:0] in,
	input reset,
	input load,
	input inc,
	input clk,
	output reg [15:0] out
);

always @(posedge clk)
begin
	out = out + 1;
	if (load == 1'b1)
	begin
		out = in;
	end
	if (reset == 1'b1)
	begin
		out = 16'b0000000000000000;
	end
end

endmodule
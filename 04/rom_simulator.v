module rom_simulator (
	input clk,
	input [14:0] address,
	output reg [15:0] data
);
always @(posedge clk)
begin
	if (address == 15'b000000000000000)
	begin
		data = 16'b0000000000000101;
	end
	if (address == 15'b000000000000001)
	begin
		data = 16'b1110110000010000;
	end
	if (address == 15'b000000000000010)
	begin
		data = 16'b0000000000000101;
	end
	if (address == 15'b000000000000011)
	begin
		data = 16'b0000000000000101;
	end
	if (address == 15'b000000000000100)
	begin
		data = 16'b0000000000000101;
	end
	if (address == 15'b000000000000101)
	begin
		data = 16'b0000000000000101;
	end
	if (address == 15'b000000000000110)
	begin
		data = 16'b1110110000000111;
	end
end
endmodule
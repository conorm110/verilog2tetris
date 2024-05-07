module verilog2tetris (
	input clk_50,
	input rst, 
	input key,
	output [2:0] led
);

wire clk_3Hz;
clk_divider _clk_divider(
	.in(clk_50),
	.out(clk_3Hz)
);

HackComputer _HackComputer(
	.clk(clk_3Hz),
	.n_reset(rst),
	.key(key),
	.led(led)
);


endmodule 
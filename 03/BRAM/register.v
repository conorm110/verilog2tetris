module register (
	input [15:0] in,
	input clk,
	input load,
	output [15:0] out
);


reg [15:0] data;
wire [15:0] cdata;

assign out = data;

wire [15:0] mmm;
assign mmm = data;

n2tmux16 n2tmux_instance_a (
	.a(mmm),
	.b(in),
	.sel(load),
	.out(cdata)
);

always @(posedge clk)
begin
	#10 data = cdata;
end

endmodule
module bram_ram_16k (
	input [15:0] in,
	input [14:0] address,
	input clk,
	input load,
	output [15:0] out
);
wire lda;
wire ldb;
wire ldc;
wire ldd;
wire [15:0] outa;
wire [15:0] outb;
wire [15:0] outc;
wire [15:0] outd;

dmux_4_way dmux_4_way_inst_a (
	.in(load),
	.sel(address[13:12]),
	.a(lda),
	.b(ldb),
	.c(ldc),
	.d(ldd)
);

bram_ram_4k bram_ram_4k_a (
	.address(address[11:0]),
	.in(in),
	.clk(clk),
	.load(lda),
	.out(outa)
);
bram_ram_4k bram_ram_4k_b (
	.address(address[11:0]),
	.in(in),
	.clk(clk),
	.load(ldb),
	.out(outb)
);
bram_ram_4k bram_ram_4k_c (
	.address(address[11:0]),
	.in(in),
	.clk(clk),
	.load(ldc),
	.out(outc)
);
bram_ram_4k bram_ram_4k_d (
	.address(address[11:0]),
	.in(in),
	.clk(clk),
	.load(ldd),
	.out(outd)
);

n8WayMux16 n8WayMux16_a (
	.a(outa),
	.b(outb),
	.c(outc),
	.d(outd),
	.e(outa),
	.f(outb),
	.g(outc),
	.h(outd),
	.sel(address[13:12]),
	.out(out)
);

endmodule
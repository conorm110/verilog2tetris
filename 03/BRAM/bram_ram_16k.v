module bram_ram_16K (
	input [15:0] in,
	input [13:0] address,
	input clk,
	input load,
	output [15:0] out
);

wire lda;
wire ldb;
wire ldc;
wire ldd;
wire lde;
wire ldf;
wire ldg;
wire ldh;
wire [15:0] outa;
wire [15:0] outb;
wire [15:0] outc;
wire [15:0] outd;
wire [15:0] oute;
wire [15:0] outf;
wire [15:0] outg;
wire [15:0] outh;

dmux_8_way dmux_8_way_a (
	.in(load),
	.select(address[13:12]),
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
	.sel(address[13:12]),
	.out(out)
);



endmodule
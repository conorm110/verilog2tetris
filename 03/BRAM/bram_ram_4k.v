module bram_ram_4k (
	input [15:0] in,
	input [11:0] address,
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
	.select(address[11:9]),
	.a(lda),
	.b(ldb),
	.c(ldc),
	.d(ldd),
	.e(lde),
	.f(ldf),
	.g(ldg),
	.h(ldh)
);

bram_ram_512 bram_ram_512_inst_a (
	.in(in),
	.address(address[8:0]),
	.clk(clk),
	.load(lda),
	.out(outa)
);
bram_ram_512 bram_ram_512_inst_b (
	.in(in),
	.address(address[8:0]),
	.clk(clk),
	.load(ldb),
	.out(outb)
);
bram_ram_512 bram_ram_512_inst_c (
	.in(in),
	.address(address[8:0]),
	.clk(clk),
	.load(ldc),
	.out(outc)
);
bram_ram_512 bram_ram_512_inst_d (
	.in(in),
	.address(address[8:0]),
	.clk(clk),
	.load(ldd),
	.out(outd)
);
bram_ram_512 bram_ram_512_inst_e (
	.in(in),
	.address(address[8:0]),
	.clk(clk),
	.load(lde),
	.out(oute)
);
bram_ram_512 bram_ram_512_inst_f (
	.in(in),
	.address(address[8:0]),
	.clk(clk),
	.load(ldf),
	.out(outf)
);
bram_ram_512 bram_ram_512_inst_g (
	.in(in),
	.address(address[8:0]),
	.clk(clk),
	.load(ldg),
	.out(outg)
);
bram_ram_512 bram_ram_512_inst_h (
	.in(in),
	.address(address[8:0]),
	.clk(clk),
	.load(ldh),
	.out(outh)
);


n8WayMux16 n8WayMux16_a (
	.a(outa),
	.b(outb),
	.c(outc),
	.d(outd),
	.e(oute),
	.f(outf),
	.g(outg),
	.h(outh),
	.sel(address[8:6]),
	.out(out)
);
endmodule
module bram_ram_8 (
	input [15:0] in,
	input [2:0] address,
	input clk,
	input load,
	output [15:0] out
);

dmux_8_way dmux_inst_a (
	.in(load),
	.select(address),
	.a(la),
	.b(lb),
	.c(lc),
	.d(ld),
	.e(le),
	.f(lf),
	.g(lg),
	.h(lh)
);

wire la;
wire lb;
wire lc;
wire ld;
wire le;
wire lf;
wire lg;
wire lh;
wire oa; 
wire ob; 
wire oc; 
wire od; 
wire oe; 
wire of; 
wire og; 
wire oh;

n8WayMux16 n8waymux16insta (
	.a(oa),
	.b(ob),
	.c(oc),
	.d(od),
	.e(oe),
	.f(of),
	.g(og),
	.h(oh),
	.sel(address),
	.out(out)
);


register reg_a (
	.in(in),
	.clk(clk),
	.load(la),
	.out(oa)
);
register reg_b (
	.in(in),
	.clk(clk),
	.load(lb),
	.out(ob)
);

register reg_c (
	.in(in),
	.clk(clk),
	.load(lc),
	.out(oc)
);

register reg_d (
	.in(in),
	.clk(clk),
	.load(ld),
	.out(od)
);
register reg_e (
	.in(in),
	.clk(clk),
	.load(le),
	.out(oe)
);
register reg_f (
	.in(in),
	.clk(clk),
	.load(lf),
	.out(of)
);

register reg_g (
	.in(in),
	.clk(clk),
	.load(lg),
	.out(og)
);

register reg_h (
	.in(in),
	.clk(clk),
	.load(lh),
	.out(oh)
);


endmodule
module n8WayMux16(
    input [15:0] a,
    input [15:0] b,
	 input [15:0] c,
	 input [15:0] d,
	 input [15:0] e,
	 input [15:0] f,
	 input [15:0] g,
	 input [15:0] h,
    input [2:0] sel,
    output [15:0] out
    );

wire res_ab;
wire res_cd;
wire res_ef;
wire res_gh;

n2tmux16 mux16inst_a (
	.a(a),
	.b(b),
	.sel(sel[0]),
	.out(res_ab)
);

n2tmux16 mux16inst_b (
	.a(c),
	.b(d),
	.sel(sel[0]),
	.out(res_cd)
);

n2tmux16 mux16inst_c (
	.a(e),
	.b(f),
	.sel(sel[0]),
	.out(res_ef)
);

n2tmux16 mux16inst_d (
	.a(g),
	.b(h),
	.sel(sel[0]),
	.out(res_gh)
);

wire res_abcd;
wire res_efgh;

n2tmux16 mux16inst_e (
	.a(res_ab),
	.b(res_cd),
	.sel(sel[1]),
	.out(res_abcd)
);

n2tmux16 mux16inst_f (
	.a(res_ef),
	.b(res_gh),
	.sel(sel[1]),
	.out(res_efgh)
);

n2tmux16 mux16inst_g (
	.a(res_abcd),
	.b(res_efgh),
	.sel(sel[2]),
	.out(out)
);

	 
endmodule 
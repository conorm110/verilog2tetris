/**
Copyright 2022 Conor Mika

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

   http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
**/

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

wire [15:0] res_ab;
n2tmux16 n2tmux16_a (
	.a(a),
	.b(b),
	.sel(sel[0]),
	.out(res_ab)
);
wire [15:0] res_cd;
n2tmux16 n2tmux16_b (
	.a(c),
	.b(d),
	.sel(sel[0]),
	.out(res_cd)
);
wire [15:0] res_abcd;
n2tmux16 n2tmux16_c (
	.a(res_ab),
	.b(res_cd),
	.sel(sel[1]),
	.out(res_abcd)
);

wire [15:0] res_ef;
n2tmux16 n2tmux16_d (
	.a(e),
	.b(f),
	.sel(sel[0]),
	.out(res_ef)
);
wire [15:0] res_gh;
n2tmux16 n2tmux16_e (
	.a(g),
	.b(h),
	.sel(sel[0]),
	.out(res_gh)
);
wire [15:0] res_efgh;
n2tmux16 n2tmux16_f (
	.a(res_ef),
	.b(res_gh),
	.sel(sel[1]),
	.out(res_efgh)
);

n2tmux16 n2tmux16_g (
	.a(res_abcd),
	.b(res_efgh),
	.sel(sel[2]),
	.out(out)
);

	 
endmodule 
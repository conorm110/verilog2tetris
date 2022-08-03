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

module bram_ram_8 (
	input [15:0] in,
	input [2:0] address,
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
	.select(address),
	.a(lda),
	.b(ldb),
	.c(ldc),
	.d(ldd),
	.e(lde),
	.f(ldf),
	.g(ldg),
	.h(ldh)
);

register register_a (
	.in(in),
	.clk(clk),
	.load(lda),
	.out(outa)
);
register register_b (
	.in(in),
	.clk(clk),
	.load(ldb),
	.out(outb)
);
register register_c (
	.in(in),
	.clk(clk),
	.load(ldc),
	.out(outc)
);
register register_d (
	.in(in),
	.clk(clk),
	.load(ldd),
	.out(outd)
);
register register_e (
	.in(in),
	.clk(clk),
	.load(lde),
	.out(oute)
);
register register_f (
	.in(in),
	.clk(clk),
	.load(ldf),
	.out(outf)
);
register register_g (
	.in(in),
	.clk(clk),
	.load(ldg),
	.out(outg)
);
register register_h (
	.in(in),
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
	.sel(address),
	.out(out)
);



endmodule
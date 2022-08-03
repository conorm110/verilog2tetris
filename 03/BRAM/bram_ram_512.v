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

module bram_ram_512 (
	input [15:0] in,
	input [8:0] address,
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
	.select(address[8:6]),
	.a(lda),
	.b(ldb),
	.c(ldc),
	.d(ldd),
	.e(lde),
	.f(ldf),
	.g(ldg),
	.h(ldh)
);

bram_ram_64 bram_ram_64_a (
	.address(address[5:0]),
	.in(in),
	.clk(clk),
	.load(lda),
	.out(outa)
);
bram_ram_64 bram_ram_64_b (
	.address(address[5:0]),
	.in(in),
	.clk(clk),
	.load(ldb),
	.out(outb)
);
bram_ram_64 bram_ram_64_c (
	.address(address[5:0]),
	.in(in),
	.clk(clk),
	.load(ldc),
	.out(outc)
);
bram_ram_64 bram_ram_64_d (
	.address(address[5:0]),
	.in(in),
	.clk(clk),
	.load(ldd),
	.out(outd)
);
bram_ram_64 bram_ram_64_e (
	.in(in),
	.clk(clk),
	.load(lde),
	.out(oute)
);
bram_ram_64 bram_ram_64_f (
	.address(address[5:0]),
	.in(in),
	.clk(clk),
	.load(ldf),
	.out(outf)
);
bram_ram_64 bram_ram_64_g (
	.address(address[5:0]),
	.in(in),
	.clk(clk),
	.load(ldg),
	.out(outg)
);
bram_ram_64 bram_ram_64_h (
	.address(address[5:0]),
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
	.sel(address[8:6]),
	.out(out)
);



endmodule
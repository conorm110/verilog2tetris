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

/*
 * Add16 - Adds two 16-bit values.
 * The most-significant carry bit is ignored.
 *
 *
 * IN a[16], b[16];
 * OUT out[16];
 *
 */
	 
module Add16(
    input [15:0] a,
    input [15:0] b,
    output [15:0] out
);

    wire couta;
    FullAdder full_adder_inst_a
    (
        .a(a[0]),
        .b(b[0]),
        .c(0),
        .sum(out[0]),
        .carry(couta)
    );

    wire coutb;
    FullAdder full_adder_inst_b
    (
        .a(a[1]),
        .b(b[1]),
        .c(couta),
        .sum(out[1]),
        .carry(coutb)
    );

    wire coutc;
    FullAdder full_adder_inst_c
    (
        .a(a[2]),
        .b(b[2]),
        .c(coutb),
        .sum(out[2]),
        .carry(coutc)
    );

    wire coutd;
    FullAdder full_adder_inst_d
    (
        .a(a[3]),
        .b(b[3]),
        .c(coutc),
        .sum(out[3]),
        .carry(coutd)
    );

    wire coute;
    FullAdder full_adder_inst_e
    (
        .a(a[4]),
        .b(b[4]),
        .c(coutd),
        .sum(out[4]),
        .carry(coute)
    );

    wire coutf;
    FullAdder full_adder_inst_f
    (
        .a(a[5]),
        .b(b[5]),
        .c(coute),
        .sum(out[5]),
        .carry(coutf)
    );

    wire coutg;
    FullAdder full_adder_inst_g
    (
        .a(a[6]),
        .b(b[6]),
        .c(coutf),
        .sum(out[6]),
        .carry(coutg)
    );

    wire couth;
    FullAdder full_adder_inst_h
    (
        .a(a[7]),
        .b(b[7]),
        .c(coutg),
        .sum(out[7]),
        .carry(couth)
    );

    wire couti;
    FullAdder full_adder_inst_i
    (
        .a(a[8]),
        .b(b[8]),
        .c(couth),
        .sum(out[8]),
        .carry(couti)
    );

    wire coutj;
    FullAdder full_adder_inst_j
    (
        .a(a[9]),
        .b(b[9]),
        .c(couti),
        .sum(out[9]),
        .carry(coutj)
    );

    wire coutk;
    FullAdder full_adder_inst_k
    (
        .a(a[10]),
        .b(b[10]),
        .c(coutj),
        .sum(out[10]),
        .carry(coutk)
    );

    wire coutl;
    FullAdder full_adder_inst_l
    (
        .a(a[11]),
        .b(b[11]),
        .c(coutk),
        .sum(out[11]),
        .carry(coutl)
    );

    wire coutm;
    FullAdder full_adder_inst_m
    (
        .a(a[12]),
        .b(b[12]),
        .c(coutl),
        .sum(out[12]),
        .carry(coutm)
    );

    wire coutn;
    FullAdder full_adder_inst_n
    (
        .a(a[13]),
        .b(b[13]),
        .c(coutm),
        .sum(out[13]),
        .carry(coutn)
    );

    wire couto;
    FullAdder full_adder_inst_o
    (
        .a(a[14]),
        .b(b[14]),
        .c(coutn),
        .sum(out[14]),
        .carry(couto)
    );

    wire coutp;
    FullAdder full_adder_inst_p
    (
        .a(a[15]),
        .b(b[15]),
        .c(couto),
        .sum(out[15]),
        .carry(coutp)
    );

endmodule
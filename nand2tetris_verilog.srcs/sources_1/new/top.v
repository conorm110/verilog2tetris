`timescale 1ns / 1ps
module top(
input [15:0] x,
input [15:0] y,
input zx,
input nx,
input zy,
input ny,
input f,
input no,
output [15:0] out,
output zr,
output ng
);

alu16 alu16_init (
    .x(x),
    .y(y),
    .zx(zx),
    .nx(nx),
    .zy(zy),
    .ny(ny),
    .f(f),
    .no(no),
    .out(out),
    .zr(zr),
    .ng(ng)
);

endmodule
`timescale 1ns / 1ps
module top(
input clk,
input [15:0] x_sim,
input [15:0] y_sim,
input zx_sim,
input nx_sim,
input zy_sim,
input ny_sim,
input no_sim,
input f_sim,
output zr_sim,
output ng_sim,
output [15:0] out_sim
);

alu16 alu16_init (
    .x(x_sim),
    .y(y_sim),
    .clk(clk),
    .zx(zx_sim),
    .nx(nx_sim),
    .zy(zy_sim),
    .ny(ny_sim),
    .f(f_sim),
    .no(np_sim),
    .out(out_sim),
    .zr(zr_sim),
    .ng(ng_sim)
);



endmodule

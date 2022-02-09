`timescale 1ns / 1ps
module top(
output led_outgood,
output led_zrgood,
output led_nggood
);


wire [15:0] out;
wire zr;
wire ng;

alu16 alu16_init (
    .x(16'b1111000011110000),
    .y(16'b1111111100000000),
    .zx(1'b1),
    .nx(1'b1),
    .zy(1'b0),
    .ny(1'b0),
    .f(1'b0),
    .no(1'b1),
    .out(out),
    .zr(zr),
    .ng(ng)
);

assign led_outgood = out & 16'b0000000011111111;
assign led_zrgood = zr & 1'b0;
assign led_nggood = ng & 1'b0;

endmodule

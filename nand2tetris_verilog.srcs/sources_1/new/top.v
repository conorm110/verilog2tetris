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
    .x(16'b0000000000000101),
    .y(16'b0000000000000001),
    .zx(1'b0),
    .nx(1'b0),
    .zy(1'b0),
    .ny(1'b0),
    .f(1'b1),
    .no(1'b0),
    .out(out),
    .zr(zr),
    .ng(ng)
);

// Compare output of ALU to expected output
wire out_cmp = 16'b0000000000000110;
wire zr_cmp  = 1'b0;
wire ng_cmp  = 1'b0;

assign led_outgood = (out & out_cmp) | (~out & ~out_cmp);
assign led_zrgood = (zr & zr_cmp) | (~zr & ~zr_cmp);
assign led_nggood = (ng & ng_cmp) | (~ng & ~ng_cmp);

endmodule

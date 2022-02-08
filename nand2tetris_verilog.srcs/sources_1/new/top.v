`timescale 1ns / 1ps
module top(
input clk,
input [3:0] sw,
input btn,
output [3:0] led
);


reg [15:0] init_x;
always@(posedge clk)
begin
    init_x[0] = sw[0];
    init_x[1] = sw[1];
    init_x[2] = sw[2];
    init_x[3] = sw[3];
end

reg [15:0] init_y = 16'b0000000000000110;
reg init_zx = 1'b0;
reg init_nx = 1'b0;
reg init_zy = 1'b0;
reg init_ny = 1'b0;
reg init_f = 1'b1;
reg init_no = 1'b0;

wire [15:0] init_out;
wire init_zr;
wire init_ng;

alu16 alu16_init (
    .x(init_x),
    .y(init_y),
    .clk(clk),
    .zx(init_zx),
    .nx(init_nx),
    .zy(init_zy),
    .ny(init_ny),
    .f(init_f),
    .no(init_no),
    .out(init_out),
    .zr(init_zr),
    .ng(init_ng)
);

assign led[0] = init_out[0];
assign led[1] = init_out[1];
assign led[2] = init_out[2];
assign led[3] = init_out[3];

endmodule

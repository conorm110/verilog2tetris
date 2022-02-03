`timescale 1ns / 1ps
module top(
input clk,
output reg led
);

reg [15:0] init_x = 16'b0000000000000000;
reg [15:0] init_y = 16'b1111111111111111;
reg init_zx = 1'b1;
reg init_nx = 1'b1;
reg init_zy = 1'b1;
reg init_ny = 1'b0;
reg init_f = 1'b1;
reg init_no = 1'b0;

reg output_test = 16'b1111111111111111 ;
reg zr_test = 1'b0;
reg ng_test = 1'b1;

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

always@(posedge clk)
begin
    if (output_test == init_out && zr_test == init_zr && ng_test == init_ng)
    begin
        led = 1'b1;
    end
    if (output_test != init_out || zr_test != init_zr || ng_test != init_ng)
    begin
        led = 1'b0;
    end
end
    

endmodule

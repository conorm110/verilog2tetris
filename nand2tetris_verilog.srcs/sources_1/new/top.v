`timescale 1ns / 1ps
module top(
input clk,
output reg led
);

reg [15:0] init_x = 16'b0000000000010001;
reg [15:0] init_y = 16'b0000000000000011;
reg init_zx = 1'b1;
reg init_nx = 1'b1;
reg init_zy = 1'b1;
reg init_ny = 1'b1;
reg init_f = 1'b1;
reg init_no = 1'b1;

reg output_test = 16'b0000000000000001;
reg zr_test = 1'b0;

wire [15:0] init_out;
wire init_zr;

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
    .zr(init_zr)
);

always@(posedge clk)
begin
    if (output_test == init_out && zr_test == init_zr)
    begin
        led = 1'b1;
    end
    if (output_test != init_out || zr_test != init_zr)
    begin
        led = 1'b0;
    end
end
    

endmodule

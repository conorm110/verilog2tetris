`timescale 1ns / 1ps
/**
 * The ALU (Arithmetic Logic Unit).
 * Computes one of the following functions:
 * x+y, x-y, y-x, 0, 1, -1, x, y, -x, -y, !x, !y,
 * x+1, y+1, x-1, y-1, x&y, x|y on two 16-bit inputs, 
 * according to 6 input bits denoted zx,nx,zy,ny,f,no.
 * In addition, the ALU computes two 1-bit outputs:
 * if the ALU output == 0, zr is set to 1; otherwise zr is set to 0;
 * if the ALU output < 0, ng is set to 1; otherwise ng is set to 0.
 */

// Implementation: the ALU logic manipulates the x and y inputs
// and operates on the resulting values, as follows:
// if (zx == 1) set x = 0        // 16-bit constant
// if (nx == 1) set x = !x       // bitwise not
// if (zy == 1) set y = 0        // 16-bit constant
// if (ny == 1) set y = !y       // bitwise not
// if (f == 1)  set out = x + y  // integer 2's complement addition
// if (f == 0)  set out = x & y  // bitwise and
// if (no == 1) set out = !out   // bitwise not
// if (out == 0) set zr = 1
// if (out < 0) set ng = 1

module alu16(
input [15:0] x,
input [15:0] y,
input clk,
input zx,
input nx,
input zy,
input ny,
input f,
input no,
output reg [15:0] out,
output reg zr
    );

reg [15:0] x_reg;
reg [15:0] y_reg;
reg [15:0] out_reg;

wire [15:0] add16_out_temp;

add16 add16_inst_a
(
    .ain(x_reg),
    .bin(y_reg),
    .sout(add16_out_temp)
);

always@(posedge clk)
begin
    if (zx == 1'b1)
    begin
       x_reg = 16'b0000000000000000; 
    end
    if (zx == 1'b0)
    begin
        x_reg = x;
    end
    if (nx == 1'b1)
    begin
        x_reg = 16'b1111111111111111 ^ x_reg;
    end
    if (zy == 1'b1)
    begin
       y_reg = 16'b0000000000000000; 
    end
    if (zy == 1'b0)
    begin
        y_reg = y;
    end
    if (ny == 1'b1)
    begin
        y_reg = 16'b1111111111111111 ^ y_reg;
    end
    
    if (f == 1'b1)
    begin
        out_reg = add16_out_temp;
    end
    if (f == 1'b0)
    begin
        out_reg = x_reg && y_reg;
    end
    
    if (no == 1'b1)
    begin
        out = 16'b1111111111111111 ^ out_reg;
        
    end
    if (no == 1'b0)
    begin
        out = out_reg;
    end
    if (out == 16'b0000000000000000)
    begin
        zr = 1'b1;
    end
    if (out != 16'b0000000000000000)
    begin
        zr = 1'b0;
    end
    
end

endmodule

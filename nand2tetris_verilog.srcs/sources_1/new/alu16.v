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

wire [15:0] new_x;
wire [15:0] new_y;

assign new_x[0] = ((x[0] & (~zx)) ^ (nx));
assign new_x[1] = ((x[1] & (~zx)) ^ (nx));
assign new_x[2] = ((x[2] & (~zx)) ^ (nx));
assign new_x[3] = ((x[3] & (~zx)) ^ (nx));
assign new_x[4] = ((x[4] & (~zx)) ^ (nx));
assign new_x[5] = ((x[5] & (~zx)) ^ (nx));
assign new_x[6] = ((x[6] & (~zx)) ^ (nx));
assign new_x[7] = ((x[7] & (~zx)) ^ (nx));
assign new_x[8] = ((x[8] & (~zx)) ^ (nx));
assign new_x[9] = ((x[9] & (~zx)) ^ (nx));
assign new_x[10] = ((x[10] & (~zx)) ^ (nx));
assign new_x[11] = ((x[11] & (~zx)) ^ (nx));
assign new_x[12] = ((x[12] & (~zx)) ^ (nx));
assign new_x[13] = ((x[13] & (~zx)) ^ (nx));
assign new_x[14] = ((x[14] & (~zx)) ^ (nx));
assign new_x[15] = ((x[15] & (~zx)) ^ (nx));

assign new_y[0] = ((y[0] & (~zy)) ^ (ny));   
assign new_y[1] = ((y[1] & (~zy)) ^ (ny));   
assign new_y[2] = ((y[2] & (~zy)) ^ (ny));   
assign new_y[3] = ((y[3] & (~zy)) ^ (ny));   
assign new_y[4] = ((y[4] & (~zy)) ^ (ny));   
assign new_y[5] = ((y[5] & (~zy)) ^ (ny));   
assign new_y[6] = ((y[6] & (~zy)) ^ (ny));   
assign new_y[7] = ((y[7] & (~zy)) ^ (ny));   
assign new_y[8] = ((y[8] & (~zy)) ^ (ny));   
assign new_y[9] = ((y[9] & (~zy)) ^ (ny));   
assign new_y[10] = ((y[10] & (~zy)) ^ (ny)); 
assign new_y[11] = ((y[11] & (~zy)) ^ (ny)); 
assign new_y[12] = ((y[12] & (~zy)) ^ (ny)); 
assign new_y[13] = ((y[13] & (~zy)) ^ (ny)); 
assign new_y[14] = ((y[14] & (~zy)) ^ (ny)); 
assign new_y[15] = ((y[15] & (~zy)) ^ (ny)); 

wire [15:0] addout;
wire [15:0] andout;
add16 add16_alu_a ( .ain(new_x), .bin(new_y), .sout(addout));
assign andout = new_x & new_y;

wire [15:0] preout;
mux16 mux16_alu_a( .a(andout),.b(addout),.sel(f),.out(preout));
assign out[0] =  preout[0] ^ no;
assign out[1] =  preout[1] ^ no;
assign out[2] =  preout[2] ^ no;
assign out[3] =  preout[3] ^ no;
assign out[4] =  preout[4] ^ no;
assign out[5] =  preout[5] ^ no;
assign out[6] =  preout[6] ^ no;
assign out[7] =  preout[7] ^ no;
assign out[8] =  preout[8] ^ no;
assign out[9] =  preout[9] ^ no;
assign out[10] = preout[10] ^ no;
assign out[11] = preout[11] ^ no;
assign out[12] = preout[12] ^ no;
assign out[13] = preout[13] ^ no;
assign out[14] = preout[14] ^ no;
assign out[15] = preout[15] ^ no;

assign ng = out[15];
assign zr = ~(|out);

endmodule
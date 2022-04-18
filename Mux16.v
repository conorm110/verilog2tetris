// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/01/Mux16.hdl

/**
 * Mux16 - 16 bit multiplexor. If sel==1 then out=b else out=a.
 *
 * IN a[16], b[16], sel;
 * OUT out[16];
 */
 
module Mux16(
    input [15:0] a,
    input [15:0] b,
    input sel,
    output [15:0] out
    );

Mux mux16_a(.a(a[0]),.b(b[0]),.sel(sel),.out(out[0]));
Mux mux16_b(.a(a[1]),.b(b[1]),.sel(sel),.out(out[1]));
Mux mux16_c(.a(a[2]),.b(b[2]),.sel(sel),.out(out[2]));
Mux mux16_d(.a(a[3]),.b(b[3]),.sel(sel),.out(out[3]));
Mux mux16_e(.a(a[4]),.b(b[4]),.sel(sel),.out(out[4]));
Mux mux16_f(.a(a[5]),.b(b[5]),.sel(sel),.out(out[5]));
Mux mux16_g(.a(a[6]),.b(b[6]),.sel(sel),.out(out[6]));
Mux mux16_h(.a(a[7]),.b(b[7]),.sel(sel),.out(out[7]));
Mux mux16_i(.a(a[8]),.b(b[8]),.sel(sel),.out(out[8]));
Mux mux16_j(.a(a[9]),.b(b[9]),.sel(sel),.out(out[9]));
Mux mux16_k(.a(a[10]),.b(b[10]),.sel(sel),.out(out[10]));
Mux mux16_l(.a(a[11]),.b(b[11]),.sel(sel),.out(out[11]));
Mux mux16_m(.a(a[12]),.b(b[12]),.sel(sel),.out(out[12]));
Mux mux16_n(.a(a[13]),.b(b[13]),.sel(sel),.out(out[13]));
Mux mux16_o(.a(a[14]),.b(b[14]),.sel(sel),.out(out[14]));
Mux mux16_p(.a(a[15]),.b(b[15]),.sel(sel),.out(out[15]));

endmodule
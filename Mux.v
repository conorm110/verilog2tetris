// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/01/Mux.hdl

/*
 * Mux - Multiplexor. If sel==1 then out=b else out=a.
 *
 * IN a, b, sel;
 * OUT out;
 */

module Mux(
    input a,
    input b,
    input sel,
    output out
    );
wire nsel;
wire aansel;
wire basel;

assign nsel = ~sel;
assign aansel = a & nsel;
assign basel = b & sel;
assign out = aansel | basel;
endmodule
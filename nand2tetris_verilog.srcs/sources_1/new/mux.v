`timescale 1ns / 1ps

/** 
 * Multiplexor:
 * out = a if sel == 0
 *       b otherwise
 */

module mux(
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
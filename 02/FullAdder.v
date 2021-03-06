// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/02/FullAdder.hdl

/**
 * FullAdder - Computes the sum of three bits.
 *
 * IN a, b, c;  // 1-bit inputs
 * OUT sum,     // Right bit of a + b + c
 *     carry;   // Left bit of a + b + c
 */

module FullAdder(
    c,
    a,
    b,
    sum,
    carry
    );
    
input c;
input a;
input b;
output sum;
output carry;

wire halfadder_a_BIT1;
wire halfadder_a_BIT2;
wire halfadder_a_SUM;
wire halfadder_a_CARRY;
wire halfadder_b_BIT1;
wire halfadder_b_BIT2;
wire halfadder_b_SUM;
wire halfadder_b_CARRY;

HalfAdder half_adder_inst_a
(
    .a(a),
    .b(b),
    .sum(halfadder_a_SUM),
    .carry(halfadder_a_CARRY)
);

HalfAdder half_adder_inst_b
(
    .a(halfadder_b_BIT1),
    .b(c),
    .sum(halfadder_b_SUM),
    .carry(halfadder_b_CARRY)
);


// Internal Wires
assign halfadder_b_BIT1 = halfadder_a_SUM;

// External Wires
assign sum = halfadder_b_SUM;
assign carry = halfadder_a_CARRY || halfadder_b_CARRY;

endmodule
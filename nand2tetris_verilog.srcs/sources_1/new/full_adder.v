`timescale 1ns / 1ps

/**
 * Computes the sum of three bits.
 */

module full_adder(
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

halfadder half_adder_inst_a
(
    .a(halfadder_a_BIT1),
    .b(halfadder_a_BIT2),
    .sum(halfadder_a_SUM),
    .carry(halfadder_a_CARRY)
);

halfadder half_adder_inst_b
(
    .a(halfadder_b_BIT1),
    .b(halfadder_b_BIT2),
    .sum(halfadder_b_SUM),
    .carry(halfadder_b_CARRY)
);


// Internal Wires
assign halfadder_b_BIT1 = halfadder_a_SUM;

// External Wires
assign a = halfadder_a_BIT1;
assign b = halfadder_a_BIT2;
assign c = halfadder_b_BIT2;
assign sum = halfadder_b_SUM;
assign carry = halfadder_a_CARRY || halfadder_b_CARRY;

endmodule
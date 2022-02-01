`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/01/2022 08:03:10 AM
// Design Name: 
// Module Name: full_adder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module full_adder(
    c_in,
    a_in,
    b_in,
    s_out,
    c_out
    );
    
input c_in;
input a_in;
input b_in;
output s_out;
output c_out;

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
    .i_bit1(halfadder_a_BIT1),
    .i_bit2(halfadder_a_BIT2),
    .o_sum(halfadder_a_SUM),
    .o_carry(halfadder_a_CARRY)
);

halfadder half_adder_inst_b
(
    .i_bit1(halfadder_b_BIT1),
    .i_bit2(halfadder_b_BIT2),
    .o_sum(halfadder_b_SUM),
    .o_carry(halfadder_b_CARRY)
);


// Internal Wires
assign halfadder_b_BIT1 = halfadder_a_SUM;

// External Wires
assign a_in = halfadder_a_BIT1;
assign b_in = halfadder_a_BIT2;
assign c_in = halfadder_b_BIT2;
assign s_out = halfadder_b_SUM;
assign c_out = halfadder_a_CARRY || halfadder_b_CARRY;

endmodule

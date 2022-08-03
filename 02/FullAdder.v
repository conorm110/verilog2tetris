/**
Copyright 2022 Conor Mika

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

   http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
**/

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
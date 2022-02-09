`timescale 1ns / 1ps

/**
 * Computes the sum of two bits.
 */

module halfadder 
  (
   a,
   b,
   sum,
   carry
   );
 
  input  a;
  input  b;
  output sum;
  output carry;
 
  assign sum   = a ^ b;  // bitwise xor
  assign carry = a & b;  // bitwise and
 
endmodule // half_adder
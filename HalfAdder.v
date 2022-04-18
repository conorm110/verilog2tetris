// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/02/HalfAdder.hdl

/**
 *  HalfAdder - Computes the sum of two bits
 *
 * IN a, b;    // 1-bit inputs
 * OUT sum,    // Right bit of a + b 
 *     carry;  // Left bit of a + b
 */

module HalfAdder  
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
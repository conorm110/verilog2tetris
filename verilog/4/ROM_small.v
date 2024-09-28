module ROM_small (
	input [3:0] address,
    input clock,
    output reg [15:0] data
);

reg [15:0] memory [0:15]; // 16x16-bit memory array

initial begin
      // Initialize memory with desired values
      memory[0] = 16'hea90;
memory[1] = 16'he320;
memory[2] = 16'hee88;
memory[3] = 16'he7d0;
memory[4] = 16'h0001;
memory[5] = 16'hea87;
memory[6] = 16'h0000;
memory[7] = 16'h0000;
memory[8] = 16'h0000;
memory[9] = 16'h0000;
memory[10] = 16'h0000;
memory[11] = 16'h0000;
memory[12] = 16'h0000;
memory[13] = 16'h0000;
memory[14] = 16'h0000;
memory[15] = 16'h0000;

end

always @(posedge clock) begin
    // Read data from memory based on the address
    data <= memory[address];
end

endmodule

/**
Alternate between incrementing R0 and R1 so that R0 only ever 
	contains odd numbers and R1 only ever contains even numbers
	
memory[0] = 16'heaa0;
memory[1] = 16'he7d0;
memory[2] = 16'he308;
memory[3] = 16'hefe0;
memory[4] = 16'he7d0;
memory[5] = 16'he308;
memory[6] = 16'hea90;
memory[7] = 16'hfc10;
memory[8] = 16'h0000;
memory[9] = 16'hea87;
memory[10] = 16'h0000;
memory[11] = 16'h0000;
memory[12] = 16'h0000;
memory[13] = 16'h0000;
memory[14] = 16'h0000;
memory[15] = 16'h0000;
**/

/**
Increment R0 using M=M+1 and 0;JMP for basic test
memory[0] = 16'heaa0;
memory[1] = 16'hfdc8;
memory[2] = 16'hea87;
memory[3] = 16'h0000;
memory[4] = 16'h0000;
memory[5] = 16'h0000;
memory[6] = 16'h0000;
memory[7] = 16'h0000;
memory[8] = 16'h0000;
memory[9] = 16'h0000;
memory[10] = 16'h0000;
memory[11] = 16'h0000;
memory[12] = 16'h0000;
memory[13] = 16'h0000;
memory[14] = 16'h0000;
memory[15] = 16'h0000;
**/

/**
Starting with A=0, set each word in memory to contain its
	address plus one
	
memory[0] = 16'hea90;
memory[1] = 16'he320;
memory[2] = 16'he7d0;
memory[3] = 16'he308;
memory[4] = 16'hefe0;
memory[5] = 16'hea87;
memory[6] = 16'h0000;
memory[7] = 16'h0000;
memory[8] = 16'h0000;
memory[9] = 16'h0000;
memory[10] = 16'h0000;
memory[11] = 16'h0000;
memory[12] = 16'h0000;
memory[13] = 16'h0000;
memory[14] = 16'h0000;
memory[15] = 16'h0000;
**/

/** 
Fill every memory address with -1
memory[0] = 16'hea90;
memory[1] = 16'he320;
memory[2] = 16'hee88;
memory[3] = 16'he7d0;
memory[4] = 16'h0001;
memory[5] = 16'hea87;
memory[6] = 16'h0000;
memory[7] = 16'h0000;
memory[8] = 16'h0000;
memory[9] = 16'h0000;
memory[10] = 16'h0000;
memory[11] = 16'h0000;
memory[12] = 16'h0000;
memory[13] = 16'h0000;
memory[14] = 16'h0000;
memory[15] = 16'h0000;

**/

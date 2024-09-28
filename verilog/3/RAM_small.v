module RAM_small (
    input clk,
	 input rst,
	 
	 input [11:0]      ain_PORT_A,
    input [15:0]      din_PORT_A,
    input             we_PORT_A,
    output reg [15:0] dout_PORT_A,
	 
	 input [11:0]      ain_PORT_B,
	 input             rq_PORT_B,
	 output reg [15:0] dout_PORT_B,
	 
	 
    output reg [15:0] r0
);

integer i;

reg [15:0] memory [0:128]; // 16x16-bit memory array

always @(posedge clk) begin
    dout_PORT_A <= memory[ain_PORT_A];
    r0 <= memory[0];
	 if (we_PORT_A == 1'b1) begin
		memory[ain_PORT_A] = din_PORT_A;
	 end
	 if (rq_PORT_B == 1'b1) begin
		dout_PORT_B = memory[ain_PORT_B];
	 end
	 
	 if (rst) begin
			 for (i = 0; i < 129; i = i + 1) begin
				  memory[i] = 16'b0;
			 end
	 end
end


endmodule
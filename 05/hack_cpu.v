module hack_cpu (
	input clk,
	
	input [15:0] inM,
	input [15:0] instruction,
	input reset,
	
	output [15:0] outM,
	output writeM,
	output [14:0] addressM,
	output [14:0] pc
);

wire aInstructionSignal = ~instruction[15]; // A Instruction control signal; true if this is an A Instruction
wire cInstructionSignal = instruction[15]; // C Instruction control signal; true if this is a C Instruction

assign writeM = cInstructionSignal & instruction[3];
wire dRegisterLoad = cInstructionSignal & instruction[4];
wire tempARegisterLoad = cInstructionSignal & instruction[5];
wire aRegisterLoad = aInstructionSignal | tempARegisterLoad;

reg [15:0] dRegisterOut;
always @(posedge clk)
begin
	if(dRegisterLoad)
	begin
		dRegisterOut <= aluOut;
	end
end

wire [15:0] aRegisterIn;
n2tmux16 Mux16_aluOut_instruction (
	.a(aluOut),
	.b(instruction),
	.sel(aInstructionSignal),
	.out(aRegisterIn)
);

reg [15:0] aRegisterOut;
always @(posedge clk)
begin
	if(aRegisterLoad)
	begin
		aRegisterOut <= aRegisterIn;
	end
end
assign addressM = aRegisterOut[14:0];

wire [15:0] aluInputY;
n2tmux16 Mux16_aRegisterOut_inM (
	.a(aRegisterOut),
	.b(inM),
	.sel(instruction[12]),
	.out(aluInputY)
);


wire [15:0] aluOut;
wire zrOut;
wire ngOut;
ALUn2t alu_inst_a (
	.x(dRegisterOut),
	.y(aluInputY),
	.zx(instruction[11]),
	.nx(instruction[10]),
	.zy(instruction[9]),
	.ny(instruction[8]),
	.f(instruction[7]),
	.no(instruction[6]),
	.out(aluOut),
	.zr(zrOut),
	.ng(ngOut)
);
assign outM = aluOut;

wire zrOrNgOut = zrOut | ngOut;
wire gOut = ~zrOrNgOut;
wire gOrZrOut = gOut | zrOut;
wire notZrOut = ~zrOut;

wire pcLoadTemp;
n2tmux8way n2tmux8way_inst (
	.data0(1'b0),
	.data1(gOut),
	.data2(zrOut),
	.data3(gOrZrOut),
	.data4(ngOut),
	.data5(notZrOut),
	.data6(zrOrNgOut),
	.data7(1'b1),
	.sel(instruction[2:0]),
	.result(pcLoadTemp)
);

wire pcLoad = cInstructionSignal & pcLoadTemp;
wire pcInc = ~pcLoad;

wire [15:0] pc_out;
wire pc_clk;
assign pc_clk = ~clk;
cpu_pc cpu_pc_inst (
	.clock(pc_clk),
	.cnt_en(pcInc),
	.data(aRegisterOut),
	.sclr(reset),
	.sload(pcLoad),
	.q(pc_out)
);
assign pc = pc_out[14:0];

endmodule
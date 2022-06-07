module hack_cpu (
	input clk,
	input [15:0] instr_bus,
	input [15:0] data_in_bus,
	input reset,
	output [15:0] data_out_bus,
	output write_enable,
	output [14:0] data_address_bus,
	output [14:0] instruction_address_bus
);

wire [15:0] areg_in_bus;
wire [15:0] areg_out_bus;
wire [15:0] alu_out_bus;
wire [15:0] alu_y_bus;
wire [15:0] alu_x_bus;
wire zr;
wire ng;
wire [15:0] pc_out_bus;
assign data_address_bus = areg_out_bus[14:0];
assign data_out_bus = alu_out_bus;
assign instruction_address_bus = pc_out_bus[14:0];
assign write_enable = instr_bus[15] & instr_bus[3];

n2tmux16 mux16_areg_in (
	.a(alu_out_bus),
	.b(instr_bus),
	.sel(~instr_bus[15]),
	.out(areg_in_bus)
);

register a_register (
	.in(areg_in_bus),
	.clk(clk),
	.load(~instr_bus[15] | instr_bus[5]),
	.out(areg_out_bus)
);

n2tmux16 mux16_y_in (
	.a(areg_out_bus),
	.b(data_in_bus),
	.sel(instr_bus[15] & instr_bus[12]),
	.out(alu_y_bus)
);

register d_register (
	.in(alu_out_bus),
	.clk(clk),
	.load(instr_bus[15] & instr_bus[4]),
	.out()
);

ALUn2t alu_inst_a (
	.x(alu_x_bus),
	.y(alu_y_bus),
	.zx(instr_bus[11]),
	.nx(instr_bus[10]),
	.zy(instr_bus[9]),
	.ny(instr_bus[8]),
	.f(instr_bus[7]),
	.no(instr_bus[6]),
	.out(alu_out_bus),
	.zr(zr),
	.ng(ng),
);

wire pos = ~ng;
wire nzr = ~zr;
wire jgt = instr_bus[15] & instr_bus[0];
wire posnzr = pos & nzr;
wire ld1 = jgt & posnzr;
wire jeq = instr_bus[15] & instr_bus[1];
wire ld2 = jeq & zr;
wire jlt = instr_bus[15] & instr_bus[2];
wire ld3 = jlt & ng;
wire ldt = ld1 | ld2;
wire ld = ld3 | ldt;


program_counter pc_inst (
	.in(areg_out_bus),
	.reset(reset),
	.load(ld),
	.inc(1'b1),
	.clk(clk),
	.out(pc_out_bus)
);

endmodule
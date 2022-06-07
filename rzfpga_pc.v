module rzfpga_pc (
	// System IO
	input clk50,
	
	// General IO
	input key0,
	input key1,
	input key2,
	input key3,
	
	// SDRAM
	inout DQ0,
	inout DQ1,
	inout DQ2,
	inout DQ3,
	inout DQ4,
	inout DQ5,
	inout DQ6,
	inout DQ7,
	inout DQ8,
	inout DQ9,
	inout DQ10,
	inout DQ11,
	inout DQ12,
	inout DQ13,
	inout DQ14,
	inout DQ15,
	output SDA0,
	output SDA1,
	output SDA2,
	output SDA3,
	output SDA4,
	output SDA5,
	output SDA6,
	output SDA7,
	output SDA8,
	output SDA9,
	output SDA10,
	output SDA11,
	output SDBS0,
	output SDBS1,
	output SDLDQM,
	output SDUDQM,
	output SDCKE,
	output SDCLK,
	output SDCS,
	output SDRAS,
	output SDCAS,
	output SDWE,
	output led1,
	output led2,
	output led3,
	output led4,
	
	// VGA
	output pix0,
	output pix1,
	output pix2,
	output hsyncout,
	output vsyncout
);


wire [15:0] data_out_bus;
wire [14:0] data_address_bus;
wire [14:0] instruction_address_bus;
assign led1 = data_address_bus[0];
assign led2 = data_address_bus[1];
assign led3 = data_address_bus[2];
assign led4 = data_address_bus[3];
wire we;
hack_cpu cpu (
	.clk(clk50),
	.instr_bus(16'b0000000000000001),
	.data_in_bus(16'b000000000000), // eventually needs to be ram out
	.reset(1'b0), // set to a button after debuging
	.data_out_bus(data_out_bus),
	.write_enable(we),
	.data_address_bus(data_address_bus),
	.instruction_address_bus(instruction_address_bus)
);

endmodule
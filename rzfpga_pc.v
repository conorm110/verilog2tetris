module rzfpga_pc (
	// System IO
	input clk50,
	input reset,
	input [3:0] key,
	output [3:0] led,
	
	// VGA
	output reg [2:0] vga_c,
	output hsyncout,
	output vsyncout,
	
	inout [15:0] sd_dq,  
	output [11:0] sd_a,
	output [1:0] sd_bs,
	output [1:0] sd_dqm,
	output sd_cke,
	output sd_clk,
	output sd_cs,
	output sd_ras,
	output sd_cas,
	output sd_we,
	
	// LCD
	output lcd_rs,
	output lcd_rw,
	output lcd_e,
	inout [7:0] lcd_d,
	
	// tubeeeee
	output [3:0] dig,
	output [7:0] seg
	
);
wire [3:0] inv_led;
assign led = ~inv_led;

wire clk_cpu;


assign clk_cpu = counter[11];
reg [24:0] counter = 25'b0_0000_0000_0000_0000_0000_0000;
reg cpu_clk_inhibit = 0;
always@(posedge clk50)
begin
	if (~cpu_clk_inhibit)
	begin
		counter <= counter + 1;
	end
end

reg [15:0] seven_seg_in;
seven_seg_controller seven_seg_controller_inst (
	.clk50(clk50),
	.num(seven_seg_in),
	.dig(dig),
	.seg(seg)
);
always @(posedge clk_cpu)
begin
	if (ram_we_cpu)
	begin
	seven_seg_in <= ram_in_cpu;
	end
end

wire [15:0] rom_out;
wire [14:0] rom_addr;
rom_quartus_ip rom_quartus_ip_inst (
	.address(rom_addr),
	.clock(clk_cpu),
	.q(rom_out)
);

wire [15:0] ram_in_cpu;
wire ram_we_cpu;
wire [14:0] ram_addr_cpu;
wire [14:0] rom_addr_temp;
hack_cpu cpu (
	.clk(clk_cpu),
	.hlt(inDisplayArea),
	.inM(data_output),
	.instruction(rom_out),
	.reset(~reset),
	.outM(ram_in_cpu),
	.writeM(ram_we_cpu),
	.addressM(ram_addr_cpu),
	.pc(rom_addr)
);

assign sdram_buffer_addr_in = ram_addr_cpu;
assign sdram_buffer_data_in = ram_in_cpu;
assign sdram_buffer_rw_in = ram_we_cpu;

reg req_state = 1'b0;
always @(posedge clk50)
begin
	if (sdram_buffer_empty && req_state == 1'b0)
	begin
		sdram_buffer_wrreq <= 1'b1;
		req_state <= 1'b1;
	end
	if (req_state == 1'b1)
	begin
		sdram_buffer_wrreq <= 1'b0;
		req_state <= 1'b0;
	end
end

wire [19:0] sdram_buffer_addr_in;
wire [15:0] sdram_buffer_data_in;
wire sdram_buffer_rw_in;
reg sdram_buffer_wrreq;
wire [15:0] data_output;
wire [19:0] current_address;
wire sdram_buffer_empty;
wire sdram_buffer_full;
ram_manager ram_manager_inst (
	.clk50(clk50),
	.clk100_0ds(mem_clk),
	.sd_dq(sd_dq),
	.sd_a(sd_a),
	.sd_bs(sd_bs),
	.sd_dqm(sd_dqm),
	.sd_cke(sd_cke),
	.sd_clk(sd_clk),
	.sd_cs(sd_cs),
	.sd_ras(sd_ras),
	.sd_cas(sd_cas),
	.sd_we(sd_we),
	.sdram_buffer_addr_in(sdram_buffer_addr_in),
	.sdram_buffer_data_in(sdram_buffer_data_in),
	.sdram_buffer_rw_in(sdram_buffer_rw_in),
	.sdram_buffer_wrreq(sdram_buffer_wrreq),
	.data_output(data_output),
	.current_address(current_address),
	.sdram_buffer_empty(sdram_buffer_empty),
	.sdram_buffer_full(sdram_buffer_full)
);



wire inDisplayArea;
hvsync_generator hvsync_generator_inst (
	.clk50(clk50),
	.vga_h_sync(hsyncout),
	.vga_v_sync(vsyncout),
	.inDisplayArea(inDisplayArea)
);

endmodule
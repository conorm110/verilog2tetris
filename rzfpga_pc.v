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
	output [7:0] lcd_d,
	
	// tubeeeee
	output [3:0] dig,
	output [7:0] seg
	
);
wire [3:0] inv_led;
assign led = ~inv_led;

wire clk_cpu;

assign lcd_d[2:0] = vga_c;
assign lcd_d[3] = hsyncout;
assign lcd_d[4] = vsyncout;


assign clk_cpu = counter[5];
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

reg req_state = 1'b0;
always @(posedge mem_clk)
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

reg [19:0] sdram_buffer_addr_in;
wire [15:0] sdram_buffer_data_in;
wire sdram_buffer_rw_in;
reg sdram_buffer_wrreq;
wire [15:0] data_output;
wire [19:0] current_address;
wire sdram_buffer_empty;
wire sdram_buffer_full;
wire mem_clk;
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



wire pixel_clk;
wire inDisplayArea;
wire [9:0] CounterX;
wire [9:0] CounterY;
hvsync_generator hvsync_generator_inst (
	.clk50(clk50),
	.vga_h_sync(hsyncout),
	.vga_v_sync(vsyncout),
	.inDisplayArea(inDisplayArea),
	.CounterX(CounterX),
	.pixel_clk(pixel_clk),
	.CounterY(CounterY)
);


reg [2:0] attempt_color;
always @(pixel_clk)
begin
	if (inDisplayArea)
	begin
		vga_c <= attempt_color;
	end
	else
	begin
		vga_c <= 3'b000;
	end
end

wire [3:0] gpu_mux_sel;
assign gpu_mux_sel = next_addr[3:0];
wire color_out;
n2tmux16way n2tmux16way_inst_a (
	.data0(pixel_chunk[0]),
	.data1(pixel_chunk[1]),
	.data2(pixel_chunk[2]),
	.data3(pixel_chunk[3]),
	.data4(pixel_chunk[4]),
	.data5(pixel_chunk[5]),
	.data6(pixel_chunk[6]),
	.data7(pixel_chunk[7]),
	.data8(pixel_chunk[8]),
	.data9(pixel_chunk[9]),
	.data10(pixel_chunk[10]),
	.data11(pixel_chunk[11]),
	.data12(pixel_chunk[12]),
	.data13(pixel_chunk[13]),
	.data14(pixel_chunk[14]),
	.data15(pixel_chunk[15]),
	.sel(gpu_mux_sel),
	.result(color_out)
);

reg [15:0] pixel_chunk = 16'b1010010001001010;
reg [23:0] next_addr = 24'b000000000000000000000001;
wire [19:0] ram_addr_gpu;
assign ram_addr_gpu = next_addr[23:4];
wire [1:0] scaler_state;
assign scaler_state = CounterX[1:0];
always @(posedge pixel_clk) begin
case(scaler_state)
	2'h0: begin
		
		if (CounterY > 480) begin
			next_addr <= 24'b000000000000000000000001;
		end
	end
	2'h1: begin
	
		if (CounterY > 480) begin
			next_addr <= 24'b000000000000000000000001;
		end
	end
	2'h2: begin
	
		if (CounterY > 480) begin
			next_addr <= 24'b000000000000000000000001;
		end
	end
	2'h3: begin
		attempt_color[0] = color_out;
		attempt_color[1] = color_out;
		attempt_color[2] = color_out;
		if (inDisplayArea) begin
			next_addr <= next_addr + 1;
		end
		if (CounterY > 480) begin
			next_addr <= 24'b000000000000000000000001;
		end
	end
endcase
end

reg [19:0] last_ram_addr_gpu;
reg fill_buffer_state = 3'b000;
always @(posedge pixel_clk) begin
case(fill_buffer_state)
	2'h0: begin
		if (ram_addr_gpu != last_ram_addr_gpu) begin
			last_ram_addr_gpu <= ram_addr_gpu;
			fill_buffer_state <= fill_buffer_state + 1;
			ram_addr_gpu_res <= ram_addr_gpu;
		end
	end
	2'h1: begin
			if (sdram_buffer_empty) begin
				pixel_chunk <= data_output;
				fill_buffer_state <= 0;
			end
	end

endcase
end

reg [19:0] ram_addr_gpu_res;
always @(posedge clk50)
begin
	if(inDisplayArea)
	begin
		sdram_buffer_addr_in <= ram_addr_gpu_res;
	end
	else
	begin
		sdram_buffer_addr_in <= ram_addr_cpu;
	end
end
assign sdram_buffer_data_in = ram_in_cpu;
assign sdram_buffer_rw_in = ram_we_cpu & (~inDisplayArea); // force to read only during display area time

endmodule
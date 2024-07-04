module verilog2tetris (
	input clk_50,
	input rst, 
	input key,
	output reg [2:0] led,
	output hsync,
	output vsync,
	output reg [2:0] vga_c,
	output ps_data,
	output ps_clk
);

// V & H Sync Generator
wire inDisplayArea;
wire [9:0] cx;
wire [9:0] cy;
hvsync_generator _hvsync_generator (
	.clk50(clk_50),
	.vga_h_sync(hsync),
	.vga_v_sync(vsync),
	.inDisplayArea(inDisplayArea),
	.CounterX(cx),
	.CounterY(cy)
	// .loc()
);

// Clocks
wire clk_slow;
clk_divider _clk_divider(
	.in(clk_50),
	.out(clk_slow)
);



reg cpu_clk;

always @(posedge clk_slow) begin
    if (cy > 255 && !cpu_clk) begin
        cpu_clk <= 1'b1; // Set cpu_clk high on the positive edge of clk_slow when cy > 255
    end else begin
        cpu_clk <= 1'b0; // Reset cpu_clk to low immediately in all other cases
    end
end

// Hack Computer
wire we;
wire [15:0] cpu_dout;
wire [14:0] instruction_addr;
wire [14:0] cpu_addr;
CPU _CPU (
	.inM(ram_dout),
	.instruction(rom_data),
	.reset(~rst),
	.clk(cpu_clk),
	.outM(cpu_dout),
	.writeM(we),
	.addressM(cpu_addr),
	.pc(instruction_addr)
);

wire [3:0] rom_addr;
assign rom_addr = instruction_addr[3:0];
wire [15:0] rom_data;
ROM_small _ROM_small (
	.address(rom_addr),
	.clock(cpu_clk),
	.data(rom_data)
);


wire [12:0] ram_addr;
wire [15:0] rgb_bus;
wire [15:0] ram_dout;
RAM_small _RAM_small (
	.address(ram_addr),
	.data_in(cpu_dout),
	.clk(clk_50),
	.we(we && (cy > 255)),
	.data_out(ram_dout),
	.rgb(rgb_bus)
);

always @(posedge cpu_clk) begin
		led <= ~rgb_bus;
end

// RAM Address
wire [11:0] vga_addr;
assign vga_addr[3:0] = cx[7:4];
assign vga_addr[11:4] = cy[7:0];

Mux16 _Mux16 (
	.a(cpu_addr),
	.b(vga_addr),
	.sel(inActiveDisplay),
	.out(ram_addr)
);

// VGA Color
wire pixelColor;
Mux16Way _Mux16Way (
	.sel(cx[3:0]),
	.in(ram_dout),
	.out(pixelColor)
);


wire inActiveDisplay = inDisplayArea && (cx < 256) && (cy < 256);
always @(posedge clk_50)
begin
	if (inActiveDisplay) begin
		vga_c[0] <= 1'b1;
		vga_c[1] <= pixelColor;
		vga_c[2] <= pixelColor;
	end else begin
		vga_c <= 3'b000;
	end
end


endmodule 
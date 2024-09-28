module v2t_computer (
	input clk_i,
	input [3:0] key,
	input rst,
	input ps_clk,
	input ps_data,
	
	output [3:0] led,
	
	output vsync,
	output hsync,
	output reg [2:0] vga_c
);

wire [7:0] keyboard_led;
keyboard keyboard_u (
	.CLK(clk_i),
	.PS2_CLK(ps_clk),
	.PS2_DATA(ps_data),
	.LED(keyboard_led)
);

/**
LED and Key Control
- RZ EasyFPGA A2.2 LEDs have PU resistors; driven by inverted input led_i
- To make LEDs appear as four bits with the MSB first, LED1 is led_i[3]
  and LED4 is led_i[0]
- The same applies for the buttons, key[3:0]
**/
reg [3:0] led_i;
assign led = ~led_i;

wire [3:0] key_i;
assign key_i = ~key;

/** 
VGA Control
- HVSync generator creates sync signals for 480p standard VGA
**/

wire [15:0] vga_addr;

wire [11:0] vga_upper_addr;
wire [3:0] vga_lower_addr;
assign vga_upper_addr = vga_addr[15:4];
assign vga_lower_addr = vga_addr[3:0];

wire vga_read_rq; // not used rn
wire [15:0] vga_ram_dout;

wire [9:0] counter_x;
wire [9:0] counter_y;
wire vga_display_active;
hvsync_generator U_hvsync_generator (
	.clk50(clk_i),
	.vsync(vsync),
	.hsync(hsync),
	.in_special_display_area(vga_display_active),
	.counter_x(counter_x),
	.counter_y(counter_y),
	.pixel_clk(vga_read_rq),
	.pixel_counter(vga_addr)
);

wire vga_color_bit;
Mux16Way Mux16Way_vga_color_select (
	.sel(vga_lower_addr),
	.in(vga_ram_dout),
	.out(vga_color_bit)
);

always @(posedge clk_i)
begin
	led_i <= cpu_r0[3:0];


	if (vga_display_active) begin
		vga_c[0] <= vga_color_bit;
		vga_c[1] <= vga_color_bit;
		vga_c[2] <= vga_color_bit;
	end else begin
		vga_c <= 3'b000;
	end
end


/** 
CPU Clock 
**/
wire cpu_clk;
clk_divider _clk_divider(
	.in(clk_i),
	.out(cpu_clk)
);


/** 
Hack Computer
**/
wire we;
wire [15:0] cpu_dout;
wire [14:0] instruction_addr;
wire [14:0] cpu_addr;
wire [15:0] a_reg_debug;
wire [15:0] d_reg_debug;
CPU _CPU (
	.inM(cpu_ram_dout),
	.instruction(rom_data),
	.reset(~rst),
	.clk(cpu_clk),
	.outM(cpu_dout),
	.writeM(we),
	.addressM(cpu_addr),
	.pc(instruction_addr),
	.a_reg_debug(a_reg_debug),
	.d_reg_debug(d_reg_debug)
);

wire [3:0] rom_addr;
assign rom_addr = instruction_addr[3:0];
wire [15:0] rom_data;
ROM_small _ROM_small (
	.address(rom_addr),
	.clock(clk_i),
	.data(rom_data)
);


wire [15:0] cpu_r0;
wire [15:0] cpu_ram_dout;
RAM_small _RAM_small (
	.clk(clk_i),
	.rst(~rst),
	
	.ain_PORT_A(cpu_addr),
	.din_PORT_A(cpu_dout),
	.we_PORT_A(we),
	.dout_PORT_A(cpu_ram_dout),
	
	.ain_PORT_B(vga_upper_addr),
	.rq_PORT_B(vga_addr[3]),
	.dout_PORT_B(vga_ram_dout),
	
	.r0(cpu_r0)
);


endmodule 
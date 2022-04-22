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
	
	// VGA
	output pix0,
	output pix1,
	output pix2,
	output hsyncout,
	output vsyncout
);

wire [15:0] output_wire_alu;
// Set to add CounterX to CounterX, out = 2*CounterX
ALUn2t ALU_instance_main (
	.x(CounterX),
	.y(CounterX),
	.zx(1'b0),
	.nx(1'b0),
	.zy(1'b0),
	.ny(1'b0),
	.f(1'b1),
	.no(1'b0),
	.out(output_wire_alu)
);

// Creates 25MHz pixel clock
wire clk25;
clock_divider wrapper (
  .clk50(clk50),
  .clk_25(clk25)
);

// Generate HSync and VSync, also outputs current pixel
wire inDisplayArea;
wire [9:0] CounterX;
wire [9:0] CounterY;
reg [2:0] pixel;
hvsync_generator hvsync(
.clk(clk25),
.vga_h_sync(hsyncout),
.vga_v_sync(vsyncout),
.CounterX(CounterX),
.CounterY(CounterY),
.inDisplayArea(inDisplayArea)
);

// Creates 16 bit wide color tied to button input but only first 3 bits are used
wire [15:0] color_input;
assign color_input[0] = ~key1;
assign color_input[1] = ~key2;
assign color_input[2] = ~key3;
assign color_input[15:3] = 13'b000000000000000;

// Load the color input into a custom register working as a buffer
wire [15:0] buffered_color;
register register_a (
	.in(color_input),
	.clk(clk50),
	.load(~key0),
	.out(buffered_color)
);

// Pixel Mapping
always @(posedge clk50)
begin
if (inDisplayArea)
  if (output_wire_alu == CounterY)  // since the alu is outputting 2x, its checking if y = 2x
  begin
	pixel <= buffered_color; // use the user inputed color
  end
  else
  begin
	pixel <= 3'b000; // otherwise show black
  end
else
  pixel <= 3'b000; // disable color if in blanking period or porch
end

assign pix0 = pixel[0];
assign pix1 = pixel[1];
assign pix2 = pixel[2];

endmodule
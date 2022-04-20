module rzfpga_pc (
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

	output wire led1,
	output wire led2,
	output wire led3,
	output wire led4,
	
	input clk50,
	input ldk,
	output pix0,
	output pix1,
	output pix2,
	output hsyncout,
	output vsyncout
);

wire [15:0] outbuf;
wire zrbuf;
wire ngbuf;

assign led1 = ~outbuf[0];
assign led2 = ~outbuf[1];
assign led3 = ~outbuf[2];
assign led4 = ~outbuf[3];


ALUn2t ALU_instance_main (
	.x(16'b0000000000001000),
	.y(16'b0101010101010101),
	.zx(1'b0),
	.nx(1'b1),
	.zy(1'b0),
	.ny(1'b0),
	.f(1'b1),
	.no(1'b1),
	.out(outbuf),
	.zr(zrbuf),
	.ng(ngbuf)
);

wire inDisplayArea;
wire [9:0] CounterX;
wire [9:0] CounterY;
reg [2:0] pixel;

wire clk_25;


hvsync_generator hvsync(
.clk(clk_25),
.vga_h_sync(hsyncout),
.vga_v_sync(vsyncout),
.CounterX(CounterX),
.CounterY(CounterY),
.inDisplayArea(inDisplayArea)
);

// wrapper for clock divider
clock_divider wrapper (
  .clk50(clk50),
  .clk_25(clk_25)
);

bram_ram_8 raminsta (
	.in(16'b0000000000000100),
	.address(3'b001),
	.clk(clk_25),
	.load(1'b0),
	.out(testbus)
);

wire [15:0] testbus;

always @(posedge clk_25)
begin
if (inDisplayArea)
  if (CounterX == 10'b0000000010 && CounterY == 10'b0000000010)
  begin
	pixel <= testbus;
  end
  else
  begin
	pixel <= testbus;
  end
  
else // if it's not to display, go dark
  pixel <= 3'b000;
end

assign pix0 = pixel[0];
assign pix1 = pixel[1];
assign pix2 = pixel[2];


endmodule
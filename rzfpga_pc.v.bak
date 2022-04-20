module rzfpga_pc (
	output wire led1,
	output wire led2,
	output wire led3,
	output wire led4,
	
	input clk50,
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


always @(posedge clk_25)
begin
if (inDisplayArea)
  if (CounterX == 10'b0000000010 && CounterY == 10'b0000000010)
  begin
	pixel <= 3'b010;
  end
  else
  begin
	pixel <= 3'b000;
  end
  
else // if it's not to display, go dark
  pixel <= 3'b000;
end

assign pix0 = pixel[0];
assign pix1 = pixel[1];
assign pix2 = pixel[2];


endmodule
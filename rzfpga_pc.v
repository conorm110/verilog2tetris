module rzfpga_pc (
	output wire led1,
	output wire led2,
	output wire led3,
	output wire led4
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



endmodule
module sdram (
	input [25:0] inaddress,
	input wire [15:0] indata,
	input clk,
	input we,
	output reg [15:0] outdata,
	output reg [11:0] outaddress,
	output reg [1:0] sdbs,
	output reg sdldqm,
	output reg sdudqm,
	output sdcke,
	output sdclk,
	output reg sdcs,
	output sdras,
	output sdcas,
	output reg sdwe
);

assign sdclk = clk; // runs on same clk as rest of system
assign sdcke = 1'b1;
assign sdcs <= 1'b1;


// writing sequence
always @(posedge clk)
begin
	if (we == 1'b1)
	begin
		outdata <= indata;
		sdldqm <= 1'b1;
		sdudqm <= 1'b1;
		sdbs <= inaddress [25:14];
		
		outaddress <= inaddress [11:0];
		
		
		sdwe <= 1;
	end
end

endmodule
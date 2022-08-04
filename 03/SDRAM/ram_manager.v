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

module ram_manager (
	input clk50,
	output clk100_0ds,
	
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
	
	input [19:0] sdram_buffer_addr_in,
	input [15:0] sdram_buffer_data_in,
	input sdram_buffer_rw_in,
	input sdram_buffer_wrreq,
	output reg [15:0] data_output,
   output reg [19:0] current_address,
	output sdram_buffer_empty,
	output sdram_buffer_full
);
assign direct_rd_gnt = RdGnt;
assign ram_clk = clk100_0ds;

wire [36:0] sdram_buffer_in;
wire [36:0] sdram_buffer_out;
reg sdram_buffer_rdreq;

sdram_buffer sdram_buffer_inst (
	.aclr(sdram_buffer_full),
	.clock(clk100_0ds), // on chip so we dont want to invert the clock
	.data(sdram_buffer_in),
	.rdreq(sdram_buffer_rdreq),
	.wrreq(sdram_buffer_wrreq),
	.empty(sdram_buffer_empty),
	.full(sdram_buffer_full),
	.q(sdram_buffer_out)
);

assign sdram_buffer_in [19:0] = sdram_buffer_addr_in;
assign sdram_buffer_in [35:20] = sdram_buffer_data_in;
assign sdram_buffer_in [36] = sdram_buffer_rw_in;

wire [19:0] sdram_buffer_addr_out;
wire [15:0] sdram_buffer_data_out;
wire sdram_buffer_rw_out;
assign sdram_buffer_addr_out = sdram_buffer_out[19:0];
assign sdram_buffer_data_out = sdram_buffer_out[35:20];
assign sdram_buffer_rw_out = sdram_buffer_out[36];

wire clk100;
assign clk100 = ~clk100_0ds;
assign sd_clk = clk100;
sdram_clkgen sdram_clkgen_inst (
	.inclk0(clk50),
	.c0(clk100_0ds)
);



reg [1:0] buffer_reader_state = 2'b00;
always @(posedge clk100_0ds)
case(buffer_reader_state) 
	2'h0: begin
		if (~sdram_buffer_empty)
		begin
			if (sdram_buffer_rw_out)
			begin
				// = 1, write
				WrReq <= 1'b1;
				if (WrGnt)
				begin
					buffer_reader_state <= 2'h1;
				end
			end
			else
			begin
				// = 0, read
				rdreq_buffer <= 1'b1;
				if (RdGnt)
				begin
					buffer_reader_state <= 2'h2;
				end
			end
		end
		else
		begin
			WrReq <= 1'b0;
		end
	end
	2'h1: begin
		// write step 2
		WrReq <= 1'b0;
		buffer_reader_state <= 2'h3;
	end
	2'h2: begin
		// read step 2
		rdreq_buffer <= 1'b0;
		if (RdDataValid)
		begin
			buffer_reader_state <= 2'h3;
		end
	end
	2'h3: begin
		// finish it up
		if (~sdram_buffer_rdreq)
		begin
			sdram_buffer_rdreq <= 1'b1;
		end
		else
		begin
			sdram_buffer_rdreq <= 1'b0;
			buffer_reader_state <= 2'h0;
		end
		
	end
endcase

wire [15:0] RdData;
wire RdDataValid;
reg WrReq;
wire WrGnt;
reg rdreq_buffer;

sdram sdram_inst (
	.RdReq(rdreq_buffer),
	.RdGnt(RdGnt),
	.RdAddr(sdram_buffer_addr_out),
	.RdData(RdData),
	.RdDataValid(RdDataValid),
	.WrReq(WrReq),
	.WrGnt(WrGnt),
	.WrAddr(sdram_buffer_addr_out),
	.WrData(sdram_buffer_data_out),
	
	.clk(clk100),
	.SDRAM_CKE(sd_cke),
	.SDRAM_WEn(sd_we),
	.SDRAM_CASn(sd_cas),
	.SDRAM_RASn(sd_ras),
	.SDRAM_A(sd_a),
	.SDRAM_BA(sd_bs),
	.SDRAM_DQM(sd_dqm),
	.SDRAM_DQ(sd_dq)
);

reg reading = 0;
always @(posedge RdGnt)
begin
	reading <= 1;
end
always @(posedge clk100)
begin
	if (reading & RdDataValid)
	begin
		data_output <= RdData;
		current_address <= sdram_buffer_addr_out;
	end
end

endmodule
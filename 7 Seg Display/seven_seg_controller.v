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

module seven_seg_controller(
	input clk50,
	input [15:0] num,
	output reg [3:0] dig,
	output reg [7:0] seg
);

wire clk;
clk_7seg clk_7seg_inst (
	.inclk0(clk50),
	.c0(clk)
);
wire [3:0] dig_0;
wire [3:0] dig_1;
wire [3:0] dig_2;
wire [3:0] dig_3;

assign dig_0 = num[3:0];
assign dig_1 = num[7:4];
assign dig_2 = num[11:8];
assign dig_3 = num[15:12];

wire [7:0] seg_a;
wire [7:0] seg_b;
wire [7:0] seg_c;
wire [7:0] seg_d;
num_to_seg num_to_seg_a (
	.clk(clk),
	.num(dig_0),
	.seg(seg_a)
);
num_to_seg num_to_seg_b (
	.clk(clk),
	.num(dig_1),
	.seg(seg_b)
);
num_to_seg num_to_seg_c (
	.clk(clk),
	.num(dig_2),
	.seg(seg_c)
);
num_to_seg num_to_seg_d (
	.clk(clk),
	.num(dig_3),
	.seg(seg_d)
);

reg [2:0] state = 0;
always @(posedge clk)
begin
	if (state[0] == 1'b1)
	begin
		dig = 4'b1111;
	end
	if (state[2:1] == 2'b00)
	begin
		seg = seg_a;
		#15 dig = 4'b1110;
	end
	if (state[2:1] == 2'b01)
	begin
		seg = seg_b;
		#15 dig = 4'b1101;
	end
	if (state[2:1] == 2'b10)
	begin
		seg = seg_c;
		#15 dig = 4'b1011;
	end
	if (state[2:1] == 2'b11)
	begin
		seg = seg_d;
		#15 dig = 4'b0111;
	end
	
	
	state = state + 1;
end
endmodule
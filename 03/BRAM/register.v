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

module register (
	input [15:0] in,
	input clk,
	input load,
	output [15:0] out
);


reg [15:0] data;
wire [15:0] cdata;

assign out = data;

wire [15:0] mmm;
assign mmm = data;

n2tmux16 n2tmux_instance_a (
	.a(mmm),
	.b(in),
	.sel(load),
	.out(cdata)
);

always @(posedge clk)
begin
	#10 data = cdata;
end

endmodule
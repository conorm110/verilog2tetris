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

module program_counter (
	input [15:0] in,
	input reset,
	input load,
	input inc,
	input clk,
	output reg [15:0] out
);

always @(posedge clk)
begin
	out = out + 1;
	if (load == 1'b1)
	begin
		out = in;
	end
	if (reset == 1'b1)
	begin
		out = 16'b0000000000000000;
	end
end

endmodule
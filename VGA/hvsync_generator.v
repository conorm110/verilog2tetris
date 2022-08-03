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

module hvsync_generator(
    input clk50,
    output vga_h_sync,
    output vga_v_sync,
    output reg inDisplayArea,
    output reg [9:0] CounterX,
    output reg [9:0] CounterY,
	 output reg [19:0] loc
  );

// Take 50 MHz clock and divide it in half to make a 25Mhz pixel clock
reg pixel_clk;
localparam div_value = 0;
integer counter_value = 0;
always@ (posedge clk50)
begin
	if (counter_value == div_value)
	  counter_value <= 0; // reset value
	else
	  counter_value <= counter_value+1; // count up
	if(counter_value == div_value)
	  pixel_clk <= ~pixel_clk; // flip signal
end

reg vga_HS, vga_VS;

wire CounterXmaxed = (CounterX == 800); // 16 + 48 + 96 + 640
wire CounterYmaxed = (CounterY == 525); // 10 + 2 + 33 + 480

always @(posedge pixel_clk)
begin
	if (CounterXmaxed)
		CounterX <= 0;
	else
		CounterX <= CounterX + 1;
	if (CounterXmaxed)
	begin
		if(CounterYmaxed)
			CounterY <= 0;
		else
			CounterY <= CounterY + 1;
	end
	
	vga_HS <= (CounterX > (640 + 16) && (CounterX < (640 + 16 + 96)));  // active for 96 clocks
	vga_VS <= (CounterY > (480 + 10) && (CounterY < (480 + 10 + 2)));   // active for 2 clocks
	
	inDisplayArea <= (CounterX < 640) && (CounterY < 480);
end

assign vga_h_sync = ~vga_HS;
assign vga_v_sync = ~vga_VS;

always @(posedge clk50)
begin
	if(CounterYmaxed)
	begin
		loc <= 20'b00000000000000000000;
	end
	else
	begin
		loc <= loc + 1;
	end
end
endmodule
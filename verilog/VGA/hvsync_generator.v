module hvsync_generator(
    input clk50,
    output hsync,
    output vsync,
    output reg in_display_area,
    output reg [9:0] counter_x,
    output reg [9:0] counter_y,
	 output reg pixel_clk,
	 output reg [15:0] pixel_counter, // pixel counter for smaller 250x250 display
	 output reg in_special_display_area // inside the 250x250 display area
	 
  );

// Generate 25MHz pixel clock (50MHz / 2)

localparam div_value = 0;
integer counter_value = 0;
always@ (posedge clk50)
begin
	if (counter_value == div_value)
	  counter_value <= 0;
	else
	  counter_value <= counter_value+1; 
	if(counter_value == div_value)
	  pixel_clk <= ~pixel_clk; 
end

// Generate sync signals

reg vga_HS, vga_VS;

wire counter_x_maxed = (counter_x == 800); // 16 + 48 + 96 + 640
wire counter_y_maxed = (counter_y == 525); // 10 + 2 + 33 + 480

always @(posedge pixel_clk)
begin
	if (counter_x_maxed)
		counter_x <= 0;
	else
		counter_x <= counter_x + 1;
	if (counter_x_maxed)
	begin
		if(counter_y_maxed) begin
			counter_y <= 0;
			pixel_counter <= 0;
		end
		else begin
			counter_y <= counter_y + 1;
		end
	end
	
	vga_HS <= (counter_x > (640 + 16) && (counter_x < (640 + 16 + 96)));  // active for 96 clocks
	vga_VS <= (counter_y > (480 + 10) && (counter_y < (480 + 10 + 2)));   // active for 2 clocks
	
	in_display_area <= (counter_x < 640) && (counter_y < 480);
	in_special_display_area <= (counter_x < 250) && (counter_y < 250);
	
	if (in_special_display_area) begin
		pixel_counter <= pixel_counter + 1;
	end
end

assign hsync = ~vga_HS;
assign vsync = ~vga_VS;

endmodule
module num_to_seg (
	input clk,
	input [3:0] num,
	output reg [7:0] seg
);

always @(posedge clk)
begin
	if (num == 4'b0000)
	begin
		seg <= 8'b11000000;//
	end
	else if (num == 4'b0001)
	begin
		seg <= 8'b11111001; //
	end
	else if (num == 4'b0010)
	begin
		seg <= 8'b10100100; //
	end
	else if (num == 4'b0011)
	begin
		seg <= 8'b10110000; //
	end
	else if (num == 4'b0100)
	begin
		seg <= 8'b10011001; //
	end
	else if (num == 4'b0101)
	begin
		seg <= 8'b10010010;
	end
	else if (num == 4'b0110)
	begin
		seg <= 8'b10000010;
	end
	else if (num == 4'b0111)
	begin
		seg <= 8'b11111000;
	end
	else if (num == 4'b1000)
	begin
		seg <= 8'b10000000;
	end
	else if (num == 4'b1001)
	begin
		seg <= 8'b10011000;
	end
	else if (num == 4'b1010)
	begin
		seg <= 8'b10001000;
	end
	else if (num == 4'b1011)
	begin
		seg <= 8'b10000011;
	end
	else if (num == 4'b1100)
	begin
		seg <= 8'b10100111;
	end
	else if (num == 4'b1101)
	begin
		seg <= 8'b10100001;
	end
	else if (num == 4'b1110)
	begin
		seg <= 8'b10000110;
	end
	else if (num == 4'b1111)
	begin
		seg <= 8'b10001110;
	end
end

endmodule
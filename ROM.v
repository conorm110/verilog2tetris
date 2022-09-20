module ROM (
    input clk,
    input [15:0] address,
    output reg [15:0] dout
);

always @(posedge clk) begin
    if (address == 16'b000000_00000_00000)
    begin
        dout <= 16'b0000000000000011;
    end else if (address == 16'b000000_00000_00001) begin
        dout <= 16'b1110101010000111;
    end else if (address == 16'b000000_00000_00010) begin
        dout <= 16'b0000000000000000; // gets skiped
    end else if (address == 16'b000000_00000_00011) begin
        dout <= 16'b0000000000000000;
    end else if (address == 16'b000000_00000_00100) begin
        dout <= 16'b1110101010000111;
    end else begin
        dout <= dout;
    end
end

endmodule
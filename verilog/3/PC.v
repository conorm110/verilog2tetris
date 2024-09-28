module PC (
    input [15:0] in,
    input inc,
    input load,
    input reset,
    input clk,
    output reg [14:0] out
);

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            out <= 15'b0;
        end else if (load) begin
            out <= in[14:0];
        end else if (inc) begin
            out <= out + 1;
        end
    end

endmodule
module VGAClkDiv(
input wire clk_100, // 50MHz
output reg clk_25 //25Hz
    );
localparam div_value = 0;
integer counter_value = 0;

always@ (posedge clk_100)// sensitivity list // rising edge 0-1
begin
    if (counter_value == div_value)
        counter_value <= 0; // reset value
    else
        counter_value <= counter_value+1; // count up
end

// divide clock
always@ (posedge clk_100)
begin
    if(counter_value == div_value)
        clk_25 <= ~clk_25; // flip signal
    
end
endmodule
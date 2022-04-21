module slowclktest (
input wire clk50, // 100MHz
output reg clkout //1Hz
    );
localparam div_value = 499999999; // 25MHz???
// division_value = 100MHz/(2*desired) - 1
// counter
integer counter_value = 0;

always@ (posedge clk50)// sensitivity list // rising edge 0-1
begin
    if (counter_value == div_value)
        counter_value <= 0; //reset value
    else
        counter_value <= counter_value+1; //count up
end

//divide clock
always@ (posedge clk50)
begin
    if(counter_value == div_value)
        clkout <= ~clkout; //flip signal
    
end
endmodule
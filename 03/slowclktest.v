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
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/04/2022 08:39:14 AM
// Design Name: 
// Module Name: bit
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module bit(
    input in,
    input load,
    output reg out,
    input t
    );
    
always@(posedge t)
begin
    if (load == 1'b1)
    begin
        out = in;
    end
end
endmodule

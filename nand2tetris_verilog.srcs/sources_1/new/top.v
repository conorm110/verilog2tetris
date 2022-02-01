`timescale 1ns / 1ps
module top(
output led0,
output led1,
output led2,
output led3
);


wire [15:0] soutDEBUG;

add16 add16_inst_a
(
    .ain(16'b0000000000000001),
    .bin(16'b0000000000000101),
    .sout(soutDEBUG)
);

assign led0 = soutDEBUG[0];
assign led1 = soutDEBUG[1];
assign led2 = soutDEBUG[2];
assign led3 = soutDEBUG[3];



    

endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/01/2022 08:02:43 AM
// Design Name: 
// Module Name: add16
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


module add16(
input [15:0] ain,
input [15:0] bin,
output [15:0] sout
    );

wire couta;
full_adder full_adder_inst_a
(
    .a_in(ain[0]),
    .b_in(bin[0]),
    .c_in(0),
    .s_out(sout[0]),
    .c_out(couta)
);

wire coutb;
full_adder full_adder_inst_b
(
    .a_in(ain[1]),
    .b_in(bin[1]),
    .c_in(couta),
    .s_out(sout[1]),
    .c_out(coutb)
);

wire coutc;
full_adder full_adder_inst_c
(
    .a_in(ain[2]),
    .b_in(bin[2]),
    .c_in(coutb),
    .s_out(sout[2]),
    .c_out(coutc)
);

wire coutd;
full_adder full_adder_inst_d
(
    .a_in(ain[3]),
    .b_in(bin[3]),
    .c_in(coutc),
    .s_out(sout[3]),
    .c_out(coutd)
);

wire coute;
full_adder full_adder_inst_e
(
    .a_in(ain[4]),
    .b_in(bin[4]),
    .c_in(coutd),
    .s_out(sout[4]),
    .c_out(coute)
);

wire coutf;
full_adder full_adder_inst_f
(
    .a_in(ain[5]),
    .b_in(bin[5]),
    .c_in(coute),
    .s_out(sout[5]),
    .c_out(coutf)
);

wire coutg;
full_adder full_adder_inst_g
(
    .a_in(ain[6]),
    .b_in(bin[6]),
    .c_in(coutf),
    .s_out(sout[6]),
    .c_out(coutg)
);

wire couth;
full_adder full_adder_inst_h
(
    .a_in(ain[7]),
    .b_in(bin[7]),
    .c_in(coutg),
    .s_out(sout[7]),
    .c_out(couth)
);

wire couti;
full_adder full_adder_inst_i
(
    .a_in(ain[8]),
    .b_in(bin[8]),
    .c_in(couth),
    .s_out(sout[8]),
    .c_out(couti)
);

wire coutj;
full_adder full_adder_inst_j
(
    .a_in(ain[9]),
    .b_in(bin[9]),
    .c_in(couti),
    .s_out(sout[9]),
    .c_out(coutj)
);

wire coutk;
full_adder full_adder_inst_k
(
    .a_in(ain[10]),
    .b_in(bin[10]),
    .c_in(coutj),
    .s_out(sout[10]),
    .c_out(coutk)
);

wire coutl;
full_adder full_adder_inst_l
(
    .a_in(ain[11]),
    .b_in(bin[11]),
    .c_in(coutk),
    .s_out(sout[11]),
    .c_out(coutl)
);

wire coutm;
full_adder full_adder_inst_m
(
    .a_in(ain[12]),
    .b_in(bin[12]),
    .c_in(coutl),
    .s_out(sout[12]),
    .c_out(coutm)
);

wire coutn;
full_adder full_adder_inst_n
(
    .a_in(ain[13]),
    .b_in(bin[13]),
    .c_in(coutm),
    .s_out(sout[13]),
    .c_out(coutn)
);

wire couto;
full_adder full_adder_inst_o
(
    .a_in(ain[14]),
    .b_in(bin[14]),
    .c_in(coutn),
    .s_out(sout[14]),
    .c_out(couto)
);

wire coutp;
full_adder full_adder_inst_p
(
    .a_in(ain[15]),
    .b_in(bin[15]),
    .c_in(couto),
    .s_out(sout[15]),
    .c_out(coutp)
);

endmodule

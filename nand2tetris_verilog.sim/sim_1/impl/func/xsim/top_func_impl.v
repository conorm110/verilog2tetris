// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Fri Feb  4 09:49:33 2022
// Host        : DESKTOP-Q81VLV3 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/akimr/Documents/GitHub/verilog2tetris/nand2tetris_verilog.sim/sim_1/impl/func/xsim/top_func_impl.v
// Design      : top
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s25csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module alu16
   (zr,
    out_sim_OBUF,
    f_sim_IBUF,
    clk_IBUF_BUFG,
    x_sim_IBUF,
    nx_sim_IBUF,
    zx_sim_IBUF,
    y_sim_IBUF,
    ny_sim_IBUF,
    zy_sim_IBUF);
  output zr;
  output [15:0]out_sim_OBUF;
  input f_sim_IBUF;
  input clk_IBUF_BUFG;
  input [15:0]x_sim_IBUF;
  input nx_sim_IBUF;
  input zx_sim_IBUF;
  input [15:0]y_sim_IBUF;
  input ny_sim_IBUF;
  input zy_sim_IBUF;

  wire clk_IBUF_BUFG;
  wire f_sim_IBUF;
  wire nx_sim_IBUF;
  wire ny_sim_IBUF;
  wire \out[0]_i_10_n_0 ;
  wire \out[0]_i_11_n_0 ;
  wire \out[0]_i_2_n_0 ;
  wire \out[0]_i_3_n_0 ;
  wire \out[0]_i_4_n_0 ;
  wire \out[0]_i_5_n_0 ;
  wire \out[0]_i_6_n_0 ;
  wire \out[0]_i_7_n_0 ;
  wire \out[0]_i_8_n_0 ;
  wire \out[0]_i_9_n_0 ;
  wire \out[10]_i_1_n_0 ;
  wire \out[10]_i_2_n_0 ;
  wire \out[11]_i_2_n_0 ;
  wire \out[12]_i_2_n_0 ;
  wire \out[13]_i_2_n_0 ;
  wire \out[2]_i_2_n_0 ;
  wire \out[3]_i_2_n_0 ;
  wire \out[4]_i_1_n_0 ;
  wire \out[5]_i_1_n_0 ;
  wire \out[5]_i_2_n_0 ;
  wire \out[6]_i_1_n_0 ;
  wire \out[7]_i_1_n_0 ;
  wire \out[7]_i_2_n_0 ;
  wire \out[8]_i_1_n_0 ;
  wire \out[9]_i_1_n_0 ;
  wire \out[9]_i_2_n_0 ;
  wire \out[9]_i_3_n_0 ;
  wire \out[9]_i_4_n_0 ;
  wire \out[9]_i_5_n_0 ;
  wire [15:0]out_reg;
  wire [15:0]out_sim_OBUF;
  wire [15:0]x_reg;
  wire \x_reg[0]_i_1_n_0 ;
  wire \x_reg[10]_i_1_n_0 ;
  wire \x_reg[11]_i_1_n_0 ;
  wire \x_reg[12]_i_1_n_0 ;
  wire \x_reg[13]_i_1_n_0 ;
  wire \x_reg[14]_i_1_n_0 ;
  wire \x_reg[15]_i_1_n_0 ;
  wire \x_reg[1]_i_1_n_0 ;
  wire \x_reg[2]_i_1_n_0 ;
  wire \x_reg[3]_i_1_n_0 ;
  wire \x_reg[4]_i_1_n_0 ;
  wire \x_reg[5]_i_1_n_0 ;
  wire \x_reg[6]_i_1_n_0 ;
  wire \x_reg[7]_i_1_n_0 ;
  wire \x_reg[8]_i_1_n_0 ;
  wire \x_reg[9]_i_1_n_0 ;
  wire [15:0]x_sim_IBUF;
  wire [15:0]y_reg;
  wire \y_reg[0]_i_1_n_0 ;
  wire \y_reg[10]_i_1_n_0 ;
  wire \y_reg[11]_i_1_n_0 ;
  wire \y_reg[12]_i_1_n_0 ;
  wire \y_reg[13]_i_1_n_0 ;
  wire \y_reg[14]_i_1_n_0 ;
  wire \y_reg[15]_i_1_n_0 ;
  wire \y_reg[1]_i_1_n_0 ;
  wire \y_reg[2]_i_1_n_0 ;
  wire \y_reg[3]_i_1_n_0 ;
  wire \y_reg[4]_i_1_n_0 ;
  wire \y_reg[5]_i_1_n_0 ;
  wire \y_reg[6]_i_1_n_0 ;
  wire \y_reg[7]_i_1_n_0 ;
  wire \y_reg[8]_i_1_n_0 ;
  wire \y_reg[9]_i_1_n_0 ;
  wire [15:0]y_sim_IBUF;
  wire zr;
  wire zr_0;
  wire zr_i_10_n_0;
  wire zr_i_11_n_0;
  wire zr_i_12_n_0;
  wire zr_i_13_n_0;
  wire zr_i_14_n_0;
  wire zr_i_1_n_0;
  wire zr_i_3_n_0;
  wire zr_i_4_n_0;
  wire zr_i_5_n_0;
  wire zr_i_6_n_0;
  wire zr_i_7_n_0;
  wire zr_i_8_n_0;
  wire zr_i_9_n_0;
  wire zx_sim_IBUF;
  wire zy_sim_IBUF;

  LUT5 #(
    .INIT(32'h60606F60)) 
    \out[0]_i_1 
       (.I0(y_reg[0]),
        .I1(x_reg[0]),
        .I2(f_sim_IBUF),
        .I3(\out[0]_i_2_n_0 ),
        .I4(\out[0]_i_3_n_0 ),
        .O(out_reg[0]));
  LUT6 #(
    .INIT(64'hF07FF0FFF0FFF0FE)) 
    \out[0]_i_10 
       (.I0(x_sim_IBUF[7]),
        .I1(x_sim_IBUF[9]),
        .I2(nx_sim_IBUF),
        .I3(zx_sim_IBUF),
        .I4(x_sim_IBUF[0]),
        .I5(x_sim_IBUF[13]),
        .O(\out[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hF07FF0FFF0FFF0FE)) 
    \out[0]_i_11 
       (.I0(x_sim_IBUF[1]),
        .I1(x_sim_IBUF[12]),
        .I2(nx_sim_IBUF),
        .I3(zx_sim_IBUF),
        .I4(x_sim_IBUF[2]),
        .I5(x_sim_IBUF[10]),
        .O(\out[0]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \out[0]_i_2 
       (.I0(\out[0]_i_4_n_0 ),
        .I1(\out[0]_i_5_n_0 ),
        .I2(\out[0]_i_6_n_0 ),
        .I3(\out[0]_i_7_n_0 ),
        .O(\out[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \out[0]_i_3 
       (.I0(\out[0]_i_8_n_0 ),
        .I1(\out[0]_i_9_n_0 ),
        .I2(\out[0]_i_10_n_0 ),
        .I3(\out[0]_i_11_n_0 ),
        .O(\out[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF07FF0FFF0FFF0FE)) 
    \out[0]_i_4 
       (.I0(y_sim_IBUF[0]),
        .I1(y_sim_IBUF[1]),
        .I2(ny_sim_IBUF),
        .I3(zy_sim_IBUF),
        .I4(y_sim_IBUF[12]),
        .I5(y_sim_IBUF[7]),
        .O(\out[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF07FF0FFF0FFF0FE)) 
    \out[0]_i_5 
       (.I0(y_sim_IBUF[13]),
        .I1(y_sim_IBUF[15]),
        .I2(ny_sim_IBUF),
        .I3(zy_sim_IBUF),
        .I4(y_sim_IBUF[8]),
        .I5(y_sim_IBUF[5]),
        .O(\out[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF07FF0FFF0FFF0FE)) 
    \out[0]_i_6 
       (.I0(y_sim_IBUF[10]),
        .I1(y_sim_IBUF[11]),
        .I2(ny_sim_IBUF),
        .I3(zy_sim_IBUF),
        .I4(y_sim_IBUF[14]),
        .I5(y_sim_IBUF[6]),
        .O(\out[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hF07FF0FFF0FFF0FE)) 
    \out[0]_i_7 
       (.I0(y_sim_IBUF[3]),
        .I1(y_sim_IBUF[4]),
        .I2(ny_sim_IBUF),
        .I3(zy_sim_IBUF),
        .I4(y_sim_IBUF[9]),
        .I5(y_sim_IBUF[2]),
        .O(\out[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hF07FF0FFF0FFF0FE)) 
    \out[0]_i_8 
       (.I0(x_sim_IBUF[4]),
        .I1(x_sim_IBUF[14]),
        .I2(nx_sim_IBUF),
        .I3(zx_sim_IBUF),
        .I4(x_sim_IBUF[3]),
        .I5(x_sim_IBUF[8]),
        .O(\out[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0F800F000F000F01)) 
    \out[0]_i_9 
       (.I0(x_sim_IBUF[6]),
        .I1(x_sim_IBUF[15]),
        .I2(nx_sim_IBUF),
        .I3(zx_sim_IBUF),
        .I4(x_sim_IBUF[5]),
        .I5(x_sim_IBUF[11]),
        .O(\out[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h9996966600000000)) 
    \out[10]_i_1 
       (.I0(y_reg[10]),
        .I1(x_reg[10]),
        .I2(y_reg[9]),
        .I3(x_reg[9]),
        .I4(\out[10]_i_2_n_0 ),
        .I5(f_sim_IBUF),
        .O(\out[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \out[10]_i_2 
       (.I0(y_reg[8]),
        .I1(x_reg[8]),
        .I2(y_reg[7]),
        .I3(x_reg[7]),
        .I4(\out[7]_i_2_n_0 ),
        .O(\out[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8282822882282828)) 
    \out[11]_i_1 
       (.I0(f_sim_IBUF),
        .I1(y_reg[11]),
        .I2(x_reg[11]),
        .I3(y_reg[10]),
        .I4(x_reg[10]),
        .I5(\out[11]_i_2_n_0 ),
        .O(out_reg[11]));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \out[11]_i_2 
       (.I0(y_reg[9]),
        .I1(x_reg[9]),
        .I2(y_reg[8]),
        .I3(x_reg[8]),
        .I4(\out[9]_i_2_n_0 ),
        .O(\out[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8282288228822828)) 
    \out[12]_i_1 
       (.I0(f_sim_IBUF),
        .I1(y_reg[12]),
        .I2(x_reg[12]),
        .I3(\out[12]_i_2_n_0 ),
        .I4(y_reg[11]),
        .I5(x_reg[11]),
        .O(out_reg[12]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h11171777)) 
    \out[12]_i_2 
       (.I0(y_reg[10]),
        .I1(x_reg[10]),
        .I2(y_reg[9]),
        .I3(x_reg[9]),
        .I4(\out[10]_i_2_n_0 ),
        .O(\out[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8282288228822828)) 
    \out[13]_i_1 
       (.I0(f_sim_IBUF),
        .I1(y_reg[13]),
        .I2(x_reg[13]),
        .I3(\out[13]_i_2_n_0 ),
        .I4(y_reg[12]),
        .I5(x_reg[12]),
        .O(out_reg[13]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h001717FF)) 
    \out[13]_i_2 
       (.I0(y_reg[10]),
        .I1(x_reg[10]),
        .I2(\out[11]_i_2_n_0 ),
        .I3(y_reg[11]),
        .I4(x_reg[11]),
        .O(\out[13]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h2882)) 
    \out[14]_i_1 
       (.I0(f_sim_IBUF),
        .I1(y_reg[14]),
        .I2(x_reg[14]),
        .I3(zr_i_6_n_0),
        .O(out_reg[14]));
  LUT6 #(
    .INIT(64'h8282288228822828)) 
    \out[15]_i_1 
       (.I0(f_sim_IBUF),
        .I1(y_reg[15]),
        .I2(x_reg[15]),
        .I3(zr_i_6_n_0),
        .I4(y_reg[14]),
        .I5(x_reg[14]),
        .O(out_reg[15]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h82282828)) 
    \out[1]_i_1 
       (.I0(f_sim_IBUF),
        .I1(y_reg[1]),
        .I2(x_reg[1]),
        .I3(y_reg[0]),
        .I4(x_reg[0]),
        .O(out_reg[1]));
  LUT4 #(
    .INIT(16'h8228)) 
    \out[2]_i_1 
       (.I0(f_sim_IBUF),
        .I1(x_reg[2]),
        .I2(y_reg[2]),
        .I3(\out[2]_i_2_n_0 ),
        .O(out_reg[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hF880)) 
    \out[2]_i_2 
       (.I0(y_reg[0]),
        .I1(x_reg[0]),
        .I2(y_reg[1]),
        .I3(x_reg[1]),
        .O(\out[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8228)) 
    \out[3]_i_1 
       (.I0(f_sim_IBUF),
        .I1(x_reg[3]),
        .I2(y_reg[3]),
        .I3(\out[3]_i_2_n_0 ),
        .O(out_reg[3]));
  LUT6 #(
    .INIT(64'hEEEEE888E8888888)) 
    \out[3]_i_2 
       (.I0(x_reg[2]),
        .I1(y_reg[2]),
        .I2(y_reg[0]),
        .I3(x_reg[0]),
        .I4(y_reg[1]),
        .I5(x_reg[1]),
        .O(\out[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9996966600000000)) 
    \out[4]_i_1 
       (.I0(y_reg[4]),
        .I1(x_reg[4]),
        .I2(x_reg[3]),
        .I3(y_reg[3]),
        .I4(\out[3]_i_2_n_0 ),
        .I5(f_sim_IBUF),
        .O(\out[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h9600)) 
    \out[5]_i_1 
       (.I0(y_reg[5]),
        .I1(x_reg[5]),
        .I2(\out[5]_i_2_n_0 ),
        .I3(f_sim_IBUF),
        .O(\out[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \out[5]_i_2 
       (.I0(y_reg[4]),
        .I1(x_reg[4]),
        .I2(x_reg[3]),
        .I3(y_reg[3]),
        .I4(\out[3]_i_2_n_0 ),
        .O(\out[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9996966600000000)) 
    \out[6]_i_1 
       (.I0(y_reg[6]),
        .I1(x_reg[6]),
        .I2(y_reg[5]),
        .I3(x_reg[5]),
        .I4(\out[5]_i_2_n_0 ),
        .I5(f_sim_IBUF),
        .O(\out[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h9600)) 
    \out[7]_i_1 
       (.I0(y_reg[7]),
        .I1(x_reg[7]),
        .I2(\out[7]_i_2_n_0 ),
        .I3(f_sim_IBUF),
        .O(\out[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \out[7]_i_2 
       (.I0(y_reg[6]),
        .I1(x_reg[6]),
        .I2(y_reg[5]),
        .I3(x_reg[5]),
        .I4(\out[5]_i_2_n_0 ),
        .O(\out[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9996966600000000)) 
    \out[8]_i_1 
       (.I0(y_reg[8]),
        .I1(x_reg[8]),
        .I2(y_reg[7]),
        .I3(x_reg[7]),
        .I4(\out[7]_i_2_n_0 ),
        .I5(f_sim_IBUF),
        .O(\out[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9996966600000000)) 
    \out[9]_i_1 
       (.I0(y_reg[9]),
        .I1(x_reg[9]),
        .I2(y_reg[8]),
        .I3(x_reg[8]),
        .I4(\out[9]_i_2_n_0 ),
        .I5(f_sim_IBUF),
        .O(\out[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEE8EEE8EEE8E888)) 
    \out[9]_i_2 
       (.I0(y_reg[7]),
        .I1(x_reg[7]),
        .I2(y_reg[6]),
        .I3(x_reg[6]),
        .I4(\out[9]_i_3_n_0 ),
        .I5(\out[9]_i_4_n_0 ),
        .O(\out[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \out[9]_i_3 
       (.I0(y_reg[5]),
        .I1(x_reg[5]),
        .O(\out[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFE8E80000000000)) 
    \out[9]_i_4 
       (.I0(\out[3]_i_2_n_0 ),
        .I1(y_reg[3]),
        .I2(x_reg[3]),
        .I3(x_reg[4]),
        .I4(y_reg[4]),
        .I5(\out[9]_i_5_n_0 ),
        .O(\out[9]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \out[9]_i_5 
       (.I0(y_reg[5]),
        .I1(x_reg[5]),
        .O(\out[9]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(out_reg[0]),
        .Q(out_sim_OBUF[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\out[10]_i_1_n_0 ),
        .Q(out_sim_OBUF[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(out_reg[11]),
        .Q(out_sim_OBUF[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(out_reg[12]),
        .Q(out_sim_OBUF[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(out_reg[13]),
        .Q(out_sim_OBUF[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(out_reg[14]),
        .Q(out_sim_OBUF[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(out_reg[15]),
        .Q(out_sim_OBUF[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(out_reg[1]),
        .Q(out_sim_OBUF[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(out_reg[2]),
        .Q(out_sim_OBUF[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(out_reg[3]),
        .Q(out_sim_OBUF[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\out[4]_i_1_n_0 ),
        .Q(out_sim_OBUF[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\out[5]_i_1_n_0 ),
        .Q(out_sim_OBUF[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\out[6]_i_1_n_0 ),
        .Q(out_sim_OBUF[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\out[7]_i_1_n_0 ),
        .Q(out_sim_OBUF[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\out[8]_i_1_n_0 ),
        .Q(out_sim_OBUF[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\out[9]_i_1_n_0 ),
        .Q(out_sim_OBUF[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \x_reg[0]_i_1 
       (.I0(nx_sim_IBUF),
        .I1(zx_sim_IBUF),
        .I2(x_sim_IBUF[0]),
        .O(\x_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \x_reg[10]_i_1 
       (.I0(nx_sim_IBUF),
        .I1(zx_sim_IBUF),
        .I2(x_sim_IBUF[10]),
        .O(\x_reg[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \x_reg[11]_i_1 
       (.I0(nx_sim_IBUF),
        .I1(zx_sim_IBUF),
        .I2(x_sim_IBUF[11]),
        .O(\x_reg[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \x_reg[12]_i_1 
       (.I0(nx_sim_IBUF),
        .I1(zx_sim_IBUF),
        .I2(x_sim_IBUF[12]),
        .O(\x_reg[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \x_reg[13]_i_1 
       (.I0(nx_sim_IBUF),
        .I1(zx_sim_IBUF),
        .I2(x_sim_IBUF[13]),
        .O(\x_reg[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \x_reg[14]_i_1 
       (.I0(nx_sim_IBUF),
        .I1(zx_sim_IBUF),
        .I2(x_sim_IBUF[14]),
        .O(\x_reg[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \x_reg[15]_i_1 
       (.I0(nx_sim_IBUF),
        .I1(zx_sim_IBUF),
        .I2(x_sim_IBUF[15]),
        .O(\x_reg[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \x_reg[1]_i_1 
       (.I0(nx_sim_IBUF),
        .I1(zx_sim_IBUF),
        .I2(x_sim_IBUF[1]),
        .O(\x_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \x_reg[2]_i_1 
       (.I0(nx_sim_IBUF),
        .I1(zx_sim_IBUF),
        .I2(x_sim_IBUF[2]),
        .O(\x_reg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \x_reg[3]_i_1 
       (.I0(nx_sim_IBUF),
        .I1(zx_sim_IBUF),
        .I2(x_sim_IBUF[3]),
        .O(\x_reg[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \x_reg[4]_i_1 
       (.I0(nx_sim_IBUF),
        .I1(zx_sim_IBUF),
        .I2(x_sim_IBUF[4]),
        .O(\x_reg[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \x_reg[5]_i_1 
       (.I0(nx_sim_IBUF),
        .I1(zx_sim_IBUF),
        .I2(x_sim_IBUF[5]),
        .O(\x_reg[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \x_reg[6]_i_1 
       (.I0(nx_sim_IBUF),
        .I1(zx_sim_IBUF),
        .I2(x_sim_IBUF[6]),
        .O(\x_reg[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \x_reg[7]_i_1 
       (.I0(nx_sim_IBUF),
        .I1(zx_sim_IBUF),
        .I2(x_sim_IBUF[7]),
        .O(\x_reg[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \x_reg[8]_i_1 
       (.I0(nx_sim_IBUF),
        .I1(zx_sim_IBUF),
        .I2(x_sim_IBUF[8]),
        .O(\x_reg[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \x_reg[9]_i_1 
       (.I0(nx_sim_IBUF),
        .I1(zx_sim_IBUF),
        .I2(x_sim_IBUF[9]),
        .O(\x_reg[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\x_reg[0]_i_1_n_0 ),
        .Q(x_reg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\x_reg[10]_i_1_n_0 ),
        .Q(x_reg[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\x_reg[11]_i_1_n_0 ),
        .Q(x_reg[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\x_reg[12]_i_1_n_0 ),
        .Q(x_reg[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\x_reg[13]_i_1_n_0 ),
        .Q(x_reg[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\x_reg[14]_i_1_n_0 ),
        .Q(x_reg[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\x_reg[15]_i_1_n_0 ),
        .Q(x_reg[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\x_reg[1]_i_1_n_0 ),
        .Q(x_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\x_reg[2]_i_1_n_0 ),
        .Q(x_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\x_reg[3]_i_1_n_0 ),
        .Q(x_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\x_reg[4]_i_1_n_0 ),
        .Q(x_reg[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\x_reg[5]_i_1_n_0 ),
        .Q(x_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\x_reg[6]_i_1_n_0 ),
        .Q(x_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\x_reg[7]_i_1_n_0 ),
        .Q(x_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\x_reg[8]_i_1_n_0 ),
        .Q(x_reg[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\x_reg[9]_i_1_n_0 ),
        .Q(x_reg[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \y_reg[0]_i_1 
       (.I0(ny_sim_IBUF),
        .I1(zy_sim_IBUF),
        .I2(y_sim_IBUF[0]),
        .O(\y_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \y_reg[10]_i_1 
       (.I0(ny_sim_IBUF),
        .I1(zy_sim_IBUF),
        .I2(y_sim_IBUF[10]),
        .O(\y_reg[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \y_reg[11]_i_1 
       (.I0(ny_sim_IBUF),
        .I1(zy_sim_IBUF),
        .I2(y_sim_IBUF[11]),
        .O(\y_reg[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \y_reg[12]_i_1 
       (.I0(ny_sim_IBUF),
        .I1(zy_sim_IBUF),
        .I2(y_sim_IBUF[12]),
        .O(\y_reg[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \y_reg[13]_i_1 
       (.I0(ny_sim_IBUF),
        .I1(zy_sim_IBUF),
        .I2(y_sim_IBUF[13]),
        .O(\y_reg[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \y_reg[14]_i_1 
       (.I0(ny_sim_IBUF),
        .I1(zy_sim_IBUF),
        .I2(y_sim_IBUF[14]),
        .O(\y_reg[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \y_reg[15]_i_1 
       (.I0(ny_sim_IBUF),
        .I1(zy_sim_IBUF),
        .I2(y_sim_IBUF[15]),
        .O(\y_reg[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \y_reg[1]_i_1 
       (.I0(ny_sim_IBUF),
        .I1(zy_sim_IBUF),
        .I2(y_sim_IBUF[1]),
        .O(\y_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \y_reg[2]_i_1 
       (.I0(ny_sim_IBUF),
        .I1(zy_sim_IBUF),
        .I2(y_sim_IBUF[2]),
        .O(\y_reg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \y_reg[3]_i_1 
       (.I0(ny_sim_IBUF),
        .I1(zy_sim_IBUF),
        .I2(y_sim_IBUF[3]),
        .O(\y_reg[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \y_reg[4]_i_1 
       (.I0(ny_sim_IBUF),
        .I1(zy_sim_IBUF),
        .I2(y_sim_IBUF[4]),
        .O(\y_reg[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \y_reg[5]_i_1 
       (.I0(ny_sim_IBUF),
        .I1(zy_sim_IBUF),
        .I2(y_sim_IBUF[5]),
        .O(\y_reg[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \y_reg[6]_i_1 
       (.I0(ny_sim_IBUF),
        .I1(zy_sim_IBUF),
        .I2(y_sim_IBUF[6]),
        .O(\y_reg[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \y_reg[7]_i_1 
       (.I0(ny_sim_IBUF),
        .I1(zy_sim_IBUF),
        .I2(y_sim_IBUF[7]),
        .O(\y_reg[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \y_reg[8]_i_1 
       (.I0(ny_sim_IBUF),
        .I1(zy_sim_IBUF),
        .I2(y_sim_IBUF[8]),
        .O(\y_reg[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \y_reg[9]_i_1 
       (.I0(ny_sim_IBUF),
        .I1(zy_sim_IBUF),
        .I2(y_sim_IBUF[9]),
        .O(\y_reg[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\y_reg[0]_i_1_n_0 ),
        .Q(y_reg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\y_reg[10]_i_1_n_0 ),
        .Q(y_reg[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\y_reg[11]_i_1_n_0 ),
        .Q(y_reg[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\y_reg[12]_i_1_n_0 ),
        .Q(y_reg[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\y_reg[13]_i_1_n_0 ),
        .Q(y_reg[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\y_reg[14]_i_1_n_0 ),
        .Q(y_reg[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\y_reg[15]_i_1_n_0 ),
        .Q(y_reg[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\y_reg[1]_i_1_n_0 ),
        .Q(y_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\y_reg[2]_i_1_n_0 ),
        .Q(y_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\y_reg[3]_i_1_n_0 ),
        .Q(y_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\y_reg[4]_i_1_n_0 ),
        .Q(y_reg[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\y_reg[5]_i_1_n_0 ),
        .Q(y_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\y_reg[6]_i_1_n_0 ),
        .Q(y_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\y_reg[7]_i_1_n_0 ),
        .Q(y_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\y_reg[8]_i_1_n_0 ),
        .Q(y_reg[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\y_reg[9]_i_1_n_0 ),
        .Q(y_reg[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFCFDFCFDFCFFFC)) 
    zr_i_1
       (.I0(zr_i_3_n_0),
        .I1(out_reg[13]),
        .I2(zr_i_4_n_0),
        .I3(f_sim_IBUF),
        .I4(zr_i_5_n_0),
        .I5(zr_i_6_n_0),
        .O(zr_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    zr_i_10
       (.I0(\out[9]_i_1_n_0 ),
        .I1(\out[7]_i_1_n_0 ),
        .I2(zr_i_13_n_0),
        .I3(\out[6]_i_1_n_0 ),
        .I4(\out[8]_i_1_n_0 ),
        .O(zr_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    zr_i_11
       (.I0(y_reg[10]),
        .I1(x_reg[10]),
        .O(zr_i_11_n_0));
  LUT6 #(
    .INIT(64'hFFE8E80000000000)) 
    zr_i_12
       (.I0(\out[9]_i_2_n_0 ),
        .I1(x_reg[8]),
        .I2(y_reg[8]),
        .I3(x_reg[9]),
        .I4(y_reg[9]),
        .I5(zr_i_14_n_0),
        .O(zr_i_12_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    zr_i_13
       (.I0(\out[5]_i_1_n_0 ),
        .I1(out_reg[0]),
        .I2(out_reg[2]),
        .I3(out_reg[1]),
        .I4(out_reg[3]),
        .I5(\out[4]_i_1_n_0 ),
        .O(zr_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    zr_i_14
       (.I0(y_reg[10]),
        .I1(x_reg[10]),
        .O(zr_i_14_n_0));
  LUT6 #(
    .INIT(64'h0000006F0000000F)) 
    zr_i_2
       (.I0(zr_i_6_n_0),
        .I1(zr_i_5_n_0),
        .I2(f_sim_IBUF),
        .I3(zr_i_4_n_0),
        .I4(out_reg[13]),
        .I5(zr_i_3_n_0),
        .O(zr_0));
  LUT6 #(
    .INIT(64'hE888EEE817771117)) 
    zr_i_3
       (.I0(x_reg[14]),
        .I1(y_reg[14]),
        .I2(x_reg[13]),
        .I3(y_reg[13]),
        .I4(zr_i_7_n_0),
        .I5(zr_i_8_n_0),
        .O(zr_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF90)) 
    zr_i_4
       (.I0(\out[13]_i_2_n_0 ),
        .I1(zr_i_9_n_0),
        .I2(f_sim_IBUF),
        .I3(\out[10]_i_1_n_0 ),
        .I4(zr_i_10_n_0),
        .I5(out_reg[11]),
        .O(zr_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    zr_i_5
       (.I0(y_reg[14]),
        .I1(x_reg[14]),
        .O(zr_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h002B2BFF)) 
    zr_i_6
       (.I0(\out[13]_i_2_n_0 ),
        .I1(y_reg[12]),
        .I2(x_reg[12]),
        .I3(y_reg[13]),
        .I4(x_reg[13]),
        .O(zr_i_6_n_0));
  LUT6 #(
    .INIT(64'h0000011F011FFFFF)) 
    zr_i_7
       (.I0(zr_i_11_n_0),
        .I1(zr_i_12_n_0),
        .I2(y_reg[11]),
        .I3(x_reg[11]),
        .I4(y_reg[12]),
        .I5(x_reg[12]),
        .O(zr_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    zr_i_8
       (.I0(y_reg[15]),
        .I1(x_reg[15]),
        .O(zr_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    zr_i_9
       (.I0(y_reg[12]),
        .I1(x_reg[12]),
        .O(zr_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    zr_reg
       (.C(clk_IBUF_BUFG),
        .CE(zr_0),
        .D(zr_0),
        .Q(zr),
        .R(zr_i_1_n_0));
endmodule

(* ECO_CHECKSUM = "5b0f2206" *) 
(* NotValidForBitStream *)
module top
   (clk,
    x_sim,
    y_sim,
    zx_sim,
    nx_sim,
    zy_sim,
    ny_sim,
    no_sim,
    f_sim,
    zr_sim,
    ng_sim,
    out_sim);
  input clk;
  input [15:0]x_sim;
  input [15:0]y_sim;
  input zx_sim;
  input nx_sim;
  input zy_sim;
  input ny_sim;
  input no_sim;
  input f_sim;
  output zr_sim;
  output ng_sim;
  output [15:0]out_sim;

  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire f_sim;
  wire f_sim_IBUF;
  wire ng_sim;
  wire nx_sim;
  wire nx_sim_IBUF;
  wire ny_sim;
  wire ny_sim_IBUF;
  wire [15:0]out_sim;
  wire [15:0]out_sim_OBUF;
  wire [15:0]x_sim;
  wire [15:0]x_sim_IBUF;
  wire [15:0]y_sim;
  wire [15:0]y_sim_IBUF;
  wire zr_sim;
  wire zr_sim_OBUF;
  wire zx_sim;
  wire zx_sim_IBUF;
  wire zy_sim;
  wire zy_sim_IBUF;

  alu16 alu16_init
       (.clk_IBUF_BUFG(clk_IBUF_BUFG),
        .f_sim_IBUF(f_sim_IBUF),
        .nx_sim_IBUF(nx_sim_IBUF),
        .ny_sim_IBUF(ny_sim_IBUF),
        .out_sim_OBUF(out_sim_OBUF),
        .x_sim_IBUF(x_sim_IBUF),
        .y_sim_IBUF(y_sim_IBUF),
        .zr(zr_sim_OBUF),
        .zx_sim_IBUF(zx_sim_IBUF),
        .zy_sim_IBUF(zy_sim_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF f_sim_IBUF_inst
       (.I(f_sim),
        .O(f_sim_IBUF));
  OBUFT ng_sim_OBUF_inst
       (.I(1'b0),
        .O(ng_sim),
        .T(1'b1));
  IBUF nx_sim_IBUF_inst
       (.I(nx_sim),
        .O(nx_sim_IBUF));
  IBUF ny_sim_IBUF_inst
       (.I(ny_sim),
        .O(ny_sim_IBUF));
  OBUF \out_sim_OBUF[0]_inst 
       (.I(out_sim_OBUF[0]),
        .O(out_sim[0]));
  OBUF \out_sim_OBUF[10]_inst 
       (.I(out_sim_OBUF[10]),
        .O(out_sim[10]));
  OBUF \out_sim_OBUF[11]_inst 
       (.I(out_sim_OBUF[11]),
        .O(out_sim[11]));
  OBUF \out_sim_OBUF[12]_inst 
       (.I(out_sim_OBUF[12]),
        .O(out_sim[12]));
  OBUF \out_sim_OBUF[13]_inst 
       (.I(out_sim_OBUF[13]),
        .O(out_sim[13]));
  OBUF \out_sim_OBUF[14]_inst 
       (.I(out_sim_OBUF[14]),
        .O(out_sim[14]));
  OBUF \out_sim_OBUF[15]_inst 
       (.I(out_sim_OBUF[15]),
        .O(out_sim[15]));
  OBUF \out_sim_OBUF[1]_inst 
       (.I(out_sim_OBUF[1]),
        .O(out_sim[1]));
  OBUF \out_sim_OBUF[2]_inst 
       (.I(out_sim_OBUF[2]),
        .O(out_sim[2]));
  OBUF \out_sim_OBUF[3]_inst 
       (.I(out_sim_OBUF[3]),
        .O(out_sim[3]));
  OBUF \out_sim_OBUF[4]_inst 
       (.I(out_sim_OBUF[4]),
        .O(out_sim[4]));
  OBUF \out_sim_OBUF[5]_inst 
       (.I(out_sim_OBUF[5]),
        .O(out_sim[5]));
  OBUF \out_sim_OBUF[6]_inst 
       (.I(out_sim_OBUF[6]),
        .O(out_sim[6]));
  OBUF \out_sim_OBUF[7]_inst 
       (.I(out_sim_OBUF[7]),
        .O(out_sim[7]));
  OBUF \out_sim_OBUF[8]_inst 
       (.I(out_sim_OBUF[8]),
        .O(out_sim[8]));
  OBUF \out_sim_OBUF[9]_inst 
       (.I(out_sim_OBUF[9]),
        .O(out_sim[9]));
  IBUF \x_sim_IBUF[0]_inst 
       (.I(x_sim[0]),
        .O(x_sim_IBUF[0]));
  IBUF \x_sim_IBUF[10]_inst 
       (.I(x_sim[10]),
        .O(x_sim_IBUF[10]));
  IBUF \x_sim_IBUF[11]_inst 
       (.I(x_sim[11]),
        .O(x_sim_IBUF[11]));
  IBUF \x_sim_IBUF[12]_inst 
       (.I(x_sim[12]),
        .O(x_sim_IBUF[12]));
  IBUF \x_sim_IBUF[13]_inst 
       (.I(x_sim[13]),
        .O(x_sim_IBUF[13]));
  IBUF \x_sim_IBUF[14]_inst 
       (.I(x_sim[14]),
        .O(x_sim_IBUF[14]));
  IBUF \x_sim_IBUF[15]_inst 
       (.I(x_sim[15]),
        .O(x_sim_IBUF[15]));
  IBUF \x_sim_IBUF[1]_inst 
       (.I(x_sim[1]),
        .O(x_sim_IBUF[1]));
  IBUF \x_sim_IBUF[2]_inst 
       (.I(x_sim[2]),
        .O(x_sim_IBUF[2]));
  IBUF \x_sim_IBUF[3]_inst 
       (.I(x_sim[3]),
        .O(x_sim_IBUF[3]));
  IBUF \x_sim_IBUF[4]_inst 
       (.I(x_sim[4]),
        .O(x_sim_IBUF[4]));
  IBUF \x_sim_IBUF[5]_inst 
       (.I(x_sim[5]),
        .O(x_sim_IBUF[5]));
  IBUF \x_sim_IBUF[6]_inst 
       (.I(x_sim[6]),
        .O(x_sim_IBUF[6]));
  IBUF \x_sim_IBUF[7]_inst 
       (.I(x_sim[7]),
        .O(x_sim_IBUF[7]));
  IBUF \x_sim_IBUF[8]_inst 
       (.I(x_sim[8]),
        .O(x_sim_IBUF[8]));
  IBUF \x_sim_IBUF[9]_inst 
       (.I(x_sim[9]),
        .O(x_sim_IBUF[9]));
  IBUF \y_sim_IBUF[0]_inst 
       (.I(y_sim[0]),
        .O(y_sim_IBUF[0]));
  IBUF \y_sim_IBUF[10]_inst 
       (.I(y_sim[10]),
        .O(y_sim_IBUF[10]));
  IBUF \y_sim_IBUF[11]_inst 
       (.I(y_sim[11]),
        .O(y_sim_IBUF[11]));
  IBUF \y_sim_IBUF[12]_inst 
       (.I(y_sim[12]),
        .O(y_sim_IBUF[12]));
  IBUF \y_sim_IBUF[13]_inst 
       (.I(y_sim[13]),
        .O(y_sim_IBUF[13]));
  IBUF \y_sim_IBUF[14]_inst 
       (.I(y_sim[14]),
        .O(y_sim_IBUF[14]));
  IBUF \y_sim_IBUF[15]_inst 
       (.I(y_sim[15]),
        .O(y_sim_IBUF[15]));
  IBUF \y_sim_IBUF[1]_inst 
       (.I(y_sim[1]),
        .O(y_sim_IBUF[1]));
  IBUF \y_sim_IBUF[2]_inst 
       (.I(y_sim[2]),
        .O(y_sim_IBUF[2]));
  IBUF \y_sim_IBUF[3]_inst 
       (.I(y_sim[3]),
        .O(y_sim_IBUF[3]));
  IBUF \y_sim_IBUF[4]_inst 
       (.I(y_sim[4]),
        .O(y_sim_IBUF[4]));
  IBUF \y_sim_IBUF[5]_inst 
       (.I(y_sim[5]),
        .O(y_sim_IBUF[5]));
  IBUF \y_sim_IBUF[6]_inst 
       (.I(y_sim[6]),
        .O(y_sim_IBUF[6]));
  IBUF \y_sim_IBUF[7]_inst 
       (.I(y_sim[7]),
        .O(y_sim_IBUF[7]));
  IBUF \y_sim_IBUF[8]_inst 
       (.I(y_sim[8]),
        .O(y_sim_IBUF[8]));
  IBUF \y_sim_IBUF[9]_inst 
       (.I(y_sim[9]),
        .O(y_sim_IBUF[9]));
  OBUF zr_sim_OBUF_inst
       (.I(zr_sim_OBUF),
        .O(zr_sim));
  IBUF zx_sim_IBUF_inst
       (.I(zx_sim),
        .O(zx_sim_IBUF));
  IBUF zy_sim_IBUF_inst
       (.I(zy_sim),
        .O(zy_sim_IBUF));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif

// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Fri Feb  4 09:15:33 2022
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
   (out_sim_OBUF,
    D,
    clk_IBUF_BUFG,
    \x_reg_reg[14]_0 ,
    zx_sim_IBUF,
    zy_sim_IBUF,
    f_sim_IBUF,
    lopt,
    lopt_1,
    lopt_2,
    lopt_3,
    lopt_4,
    lopt_5,
    lopt_6,
    lopt_7,
    lopt_8,
    lopt_9);
  output [6:0]out_sim_OBUF;
  input [0:0]D;
  input clk_IBUF_BUFG;
  input [0:0]\x_reg_reg[14]_0 ;
  input zx_sim_IBUF;
  input zy_sim_IBUF;
  input f_sim_IBUF;
  output lopt;
  output lopt_1;
  output lopt_2;
  output lopt_3;
  output lopt_4;
  output lopt_5;
  output lopt_6;
  output lopt_7;
  output lopt_8;
  output lopt_9;

  wire [0:0]D;
  wire clk_IBUF_BUFG;
  wire f_sim_IBUF;
  wire \out[0]_i_2_n_0 ;
  wire [15:0]out_reg;
  wire \out_reg[15]_lopt_replica_1 ;
  wire \out_reg[15]_lopt_replica_2_1 ;
  wire \out_reg[15]_lopt_replica_3_1 ;
  wire \out_reg[15]_lopt_replica_4_1 ;
  wire \out_reg[15]_lopt_replica_5_1 ;
  wire \out_reg[15]_lopt_replica_6_1 ;
  wire \out_reg[15]_lopt_replica_7_1 ;
  wire \out_reg[15]_lopt_replica_8_1 ;
  wire \out_reg[15]_lopt_replica_9_1 ;
  wire [6:0]out_sim_OBUF;
  wire [14:4]x_reg;
  wire \x_reg[4]_i_1_n_0 ;
  wire [0:0]\x_reg_reg[14]_0 ;
  wire [14:1]y_reg;
  wire \y_reg[1]_i_1_n_0 ;
  wire zx_sim_IBUF;
  wire zy_sim_IBUF;

  assign lopt = \out_reg[15]_lopt_replica_1 ;
  assign lopt_1 = \out_reg[15]_lopt_replica_2_1 ;
  assign lopt_2 = \out_reg[15]_lopt_replica_3_1 ;
  assign lopt_3 = \out_reg[15]_lopt_replica_4_1 ;
  assign lopt_4 = \out_reg[15]_lopt_replica_5_1 ;
  assign lopt_5 = \out_reg[15]_lopt_replica_6_1 ;
  assign lopt_6 = \out_reg[15]_lopt_replica_7_1 ;
  assign lopt_7 = \out_reg[15]_lopt_replica_8_1 ;
  assign lopt_8 = \out_reg[15]_lopt_replica_9_1 ;
  LUT4 #(
    .INIT(16'hAEEA)) 
    \out[0]_i_1 
       (.I0(\out[0]_i_2_n_0 ),
        .I1(f_sim_IBUF),
        .I2(x_reg[4]),
        .I3(y_reg[1]),
        .O(out_reg[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h45450045)) 
    \out[0]_i_2 
       (.I0(f_sim_IBUF),
        .I1(\x_reg_reg[14]_0 ),
        .I2(zx_sim_IBUF),
        .I3(zy_sim_IBUF),
        .I4(D),
        .O(\out[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hF7300000)) 
    \out[15]_i_1 
       (.I0(y_reg[1]),
        .I1(x_reg[4]),
        .I2(y_reg[14]),
        .I3(x_reg[14]),
        .I4(f_sim_IBUF),
        .O(out_reg[15]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hB040)) 
    \out[1]_i_1 
       (.I0(x_reg[4]),
        .I1(y_reg[1]),
        .I2(f_sim_IBUF),
        .I3(x_reg[14]),
        .O(out_reg[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hD3002C00)) 
    \out[2]_i_1 
       (.I0(x_reg[4]),
        .I1(x_reg[14]),
        .I2(y_reg[1]),
        .I3(f_sim_IBUF),
        .I4(y_reg[14]),
        .O(out_reg[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hF3700000)) 
    \out[3]_i_1 
       (.I0(x_reg[4]),
        .I1(y_reg[1]),
        .I2(y_reg[14]),
        .I3(x_reg[14]),
        .I4(f_sim_IBUF),
        .O(out_reg[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hA6DA0000)) 
    \out[4]_i_1 
       (.I0(x_reg[4]),
        .I1(y_reg[1]),
        .I2(y_reg[14]),
        .I3(x_reg[14]),
        .I4(f_sim_IBUF),
        .O(out_reg[4]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hC4FC0000)) 
    \out[5]_i_1 
       (.I0(y_reg[1]),
        .I1(x_reg[14]),
        .I2(y_reg[14]),
        .I3(x_reg[4]),
        .I4(f_sim_IBUF),
        .O(out_reg[5]));
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
    \out_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(out_reg[15]),
        .Q(out_sim_OBUF[6]),
        .R(1'b0));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[15]_lopt_replica 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(out_reg[15]),
        .Q(\out_reg[15]_lopt_replica_1 ),
        .R(1'b0));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[15]_lopt_replica_2 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(out_reg[15]),
        .Q(\out_reg[15]_lopt_replica_2_1 ),
        .R(1'b0));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[15]_lopt_replica_3 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(out_reg[15]),
        .Q(\out_reg[15]_lopt_replica_3_1 ),
        .R(1'b0));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[15]_lopt_replica_4 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(out_reg[15]),
        .Q(\out_reg[15]_lopt_replica_4_1 ),
        .R(1'b0));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[15]_lopt_replica_5 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(out_reg[15]),
        .Q(\out_reg[15]_lopt_replica_5_1 ),
        .R(1'b0));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[15]_lopt_replica_6 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(out_reg[15]),
        .Q(\out_reg[15]_lopt_replica_6_1 ),
        .R(1'b0));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[15]_lopt_replica_7 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(out_reg[15]),
        .Q(\out_reg[15]_lopt_replica_7_1 ),
        .R(1'b0));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[15]_lopt_replica_8 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(out_reg[15]),
        .Q(\out_reg[15]_lopt_replica_8_1 ),
        .R(1'b0));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[15]_lopt_replica_9 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(out_reg[15]),
        .Q(\out_reg[15]_lopt_replica_9_1 ),
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
        .D(out_reg[4]),
        .Q(out_sim_OBUF[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(out_reg[5]),
        .Q(out_sim_OBUF[5]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \x_reg[4]_i_1 
       (.I0(zx_sim_IBUF),
        .I1(\x_reg_reg[14]_0 ),
        .O(\x_reg[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\x_reg_reg[14]_0 ),
        .Q(x_reg[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\x_reg[4]_i_1_n_0 ),
        .Q(x_reg[4]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h9)) 
    \y_reg[1]_i_1 
       (.I0(zy_sim_IBUF),
        .I1(D),
        .O(\y_reg[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D),
        .Q(y_reg[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\y_reg[1]_i_1_n_0 ),
        .Q(y_reg[1]),
        .R(1'b0));
endmodule

(* ECO_CHECKSUM = "a3415a9d" *) 
(* NotValidForBitStream *)
module top
   (clk,
    zx_sim,
    nx_sim,
    zy_sim,
    ny_sim,
    no_sim,
    f_sim,
    led,
    out_sim);
  input clk;
  input zx_sim;
  input nx_sim;
  input zy_sim;
  input ny_sim;
  input no_sim;
  input f_sim;
  output led;
  output [15:0]out_sim;

  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire f_sim;
  wire f_sim_IBUF;
  wire led;
  wire lopt;
  wire lopt_1;
  wire lopt_2;
  wire lopt_3;
  wire lopt_4;
  wire lopt_5;
  wire lopt_6;
  wire lopt_7;
  wire lopt_8;
  wire nx_sim;
  wire nx_sim_IBUF;
  wire ny_sim;
  wire ny_sim_IBUF;
  wire [15:0]out_sim;
  wire [6:0]out_sim_OBUF;
  wire zx_sim;
  wire zx_sim_IBUF;
  wire zy_sim;
  wire zy_sim_IBUF;
  wire NLW_alu16_init_lopt_9_UNCONNECTED;

  alu16 alu16_init
       (.D(ny_sim_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .f_sim_IBUF(f_sim_IBUF),
        .lopt(lopt),
        .lopt_1(lopt_1),
        .lopt_2(lopt_2),
        .lopt_3(lopt_3),
        .lopt_4(lopt_4),
        .lopt_5(lopt_5),
        .lopt_6(lopt_6),
        .lopt_7(lopt_7),
        .lopt_8(lopt_8),
        .lopt_9(NLW_alu16_init_lopt_9_UNCONNECTED),
        .out_sim_OBUF(out_sim_OBUF),
        .\x_reg_reg[14]_0 (nx_sim_IBUF),
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
  OBUFT led_OBUF_inst
       (.I(1'b0),
        .O(led),
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
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \out_sim_OBUF[10]_inst 
       (.I(lopt),
        .O(out_sim[10]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \out_sim_OBUF[11]_inst 
       (.I(lopt_1),
        .O(out_sim[11]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \out_sim_OBUF[12]_inst 
       (.I(lopt_2),
        .O(out_sim[12]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \out_sim_OBUF[13]_inst 
       (.I(lopt_3),
        .O(out_sim[13]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \out_sim_OBUF[14]_inst 
       (.I(lopt_4),
        .O(out_sim[14]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \out_sim_OBUF[15]_inst 
       (.I(lopt_5),
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
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \out_sim_OBUF[6]_inst 
       (.I(lopt_6),
        .O(out_sim[6]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \out_sim_OBUF[7]_inst 
       (.I(lopt_7),
        .O(out_sim[7]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \out_sim_OBUF[8]_inst 
       (.I(lopt_8),
        .O(out_sim[8]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \out_sim_OBUF[9]_inst 
       (.I(out_sim_OBUF[6]),
        .O(out_sim[9]));
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

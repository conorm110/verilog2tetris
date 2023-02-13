// megafunction wizard: %LPM_MUX%VBB%
// GENERATION: STANDARD
// VERSION: WM1.0
// MODULE: LPM_MUX 

// ============================================================
// File Name: n2tmux16way.v
// Megafunction Name(s):
// 			LPM_MUX
//
// Simulation Library Files(s):
// 			lpm
// ============================================================
// ************************************************************
// THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
//
// 22.1std.0 Build 915 10/25/2022 SC Lite Edition
// ************************************************************

//Copyright (C) 2022  Intel Corporation. All rights reserved.
//Your use of Intel Corporation's design tools, logic functions 
//and other software and tools, and any partner logic 
//functions, and any output files from any of the foregoing 
//(including device programming or simulation files), and any 
//associated documentation or information are expressly subject 
//to the terms and conditions of the Intel Program License 
//Subscription Agreement, the Intel Quartus Prime License Agreement,
//the Intel FPGA IP License Agreement, or other applicable license
//agreement, including, without limitation, that your use is for
//the sole purpose of programming logic devices manufactured by
//Intel and sold by Intel or its authorized distributors.  Please
//refer to the applicable agreement for further details, at
//https://fpgasoftware.intel.com/eula.

module n2tmux16way (
	data0,
	data1,
	data10,
	data11,
	data12,
	data13,
	data14,
	data15,
	data2,
	data3,
	data4,
	data5,
	data6,
	data7,
	data8,
	data9,
	sel,
	result);

	input	  data0;
	input	  data1;
	input	  data10;
	input	  data11;
	input	  data12;
	input	  data13;
	input	  data14;
	input	  data15;
	input	  data2;
	input	  data3;
	input	  data4;
	input	  data5;
	input	  data6;
	input	  data7;
	input	  data8;
	input	  data9;
	input	[3:0]  sel;
	output	  result;

endmodule

// ============================================================
// CNX file retrieval info
// ============================================================
// Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone IV E"
// Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "0"
// Retrieval info: PRIVATE: new_diagram STRING "1"
// Retrieval info: LIBRARY: lpm lpm.lpm_components.all
// Retrieval info: CONSTANT: LPM_SIZE NUMERIC "16"
// Retrieval info: CONSTANT: LPM_TYPE STRING "LPM_MUX"
// Retrieval info: CONSTANT: LPM_WIDTH NUMERIC "1"
// Retrieval info: CONSTANT: LPM_WIDTHS NUMERIC "4"
// Retrieval info: USED_PORT: data0 0 0 0 0 INPUT NODEFVAL "data0"
// Retrieval info: USED_PORT: data1 0 0 0 0 INPUT NODEFVAL "data1"
// Retrieval info: USED_PORT: data10 0 0 0 0 INPUT NODEFVAL "data10"
// Retrieval info: USED_PORT: data11 0 0 0 0 INPUT NODEFVAL "data11"
// Retrieval info: USED_PORT: data12 0 0 0 0 INPUT NODEFVAL "data12"
// Retrieval info: USED_PORT: data13 0 0 0 0 INPUT NODEFVAL "data13"
// Retrieval info: USED_PORT: data14 0 0 0 0 INPUT NODEFVAL "data14"
// Retrieval info: USED_PORT: data15 0 0 0 0 INPUT NODEFVAL "data15"
// Retrieval info: USED_PORT: data2 0 0 0 0 INPUT NODEFVAL "data2"
// Retrieval info: USED_PORT: data3 0 0 0 0 INPUT NODEFVAL "data3"
// Retrieval info: USED_PORT: data4 0 0 0 0 INPUT NODEFVAL "data4"
// Retrieval info: USED_PORT: data5 0 0 0 0 INPUT NODEFVAL "data5"
// Retrieval info: USED_PORT: data6 0 0 0 0 INPUT NODEFVAL "data6"
// Retrieval info: USED_PORT: data7 0 0 0 0 INPUT NODEFVAL "data7"
// Retrieval info: USED_PORT: data8 0 0 0 0 INPUT NODEFVAL "data8"
// Retrieval info: USED_PORT: data9 0 0 0 0 INPUT NODEFVAL "data9"
// Retrieval info: USED_PORT: result 0 0 0 0 OUTPUT NODEFVAL "result"
// Retrieval info: USED_PORT: sel 0 0 4 0 INPUT NODEFVAL "sel[3..0]"
// Retrieval info: CONNECT: @data 0 0 1 0 data0 0 0 0 0
// Retrieval info: CONNECT: @data 0 0 1 1 data1 0 0 0 0
// Retrieval info: CONNECT: @data 0 0 1 10 data10 0 0 0 0
// Retrieval info: CONNECT: @data 0 0 1 11 data11 0 0 0 0
// Retrieval info: CONNECT: @data 0 0 1 12 data12 0 0 0 0
// Retrieval info: CONNECT: @data 0 0 1 13 data13 0 0 0 0
// Retrieval info: CONNECT: @data 0 0 1 14 data14 0 0 0 0
// Retrieval info: CONNECT: @data 0 0 1 15 data15 0 0 0 0
// Retrieval info: CONNECT: @data 0 0 1 2 data2 0 0 0 0
// Retrieval info: CONNECT: @data 0 0 1 3 data3 0 0 0 0
// Retrieval info: CONNECT: @data 0 0 1 4 data4 0 0 0 0
// Retrieval info: CONNECT: @data 0 0 1 5 data5 0 0 0 0
// Retrieval info: CONNECT: @data 0 0 1 6 data6 0 0 0 0
// Retrieval info: CONNECT: @data 0 0 1 7 data7 0 0 0 0
// Retrieval info: CONNECT: @data 0 0 1 8 data8 0 0 0 0
// Retrieval info: CONNECT: @data 0 0 1 9 data9 0 0 0 0
// Retrieval info: CONNECT: @sel 0 0 4 0 sel 0 0 4 0
// Retrieval info: CONNECT: result 0 0 0 0 @result 0 0 1 0
// Retrieval info: GEN_FILE: TYPE_NORMAL n2tmux16way.v TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL n2tmux16way.inc FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL n2tmux16way.cmp FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL n2tmux16way.bsf FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL n2tmux16way_inst.v FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL n2tmux16way_bb.v TRUE
// Retrieval info: LIB_FILE: lpm

// megafunction wizard: %LPM_MUX%
// GENERATION: STANDARD
// VERSION: WM1.0
// MODULE: LPM_MUX 

// ============================================================
// File Name: n2tmux8way.v
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


// synopsys translate_off
`timescale 1 ps / 1 ps
// synopsys translate_on
module n2tmux8way (
	data0,
	data1,
	data2,
	data3,
	data4,
	data5,
	data6,
	data7,
	sel,
	result);

	input	  data0;
	input	  data1;
	input	  data2;
	input	  data3;
	input	  data4;
	input	  data5;
	input	  data6;
	input	  data7;
	input	[2:0]  sel;
	output	  result;

	wire [0:0] sub_wire9;
	wire  sub_wire8 = data7;
	wire  sub_wire7 = data6;
	wire  sub_wire6 = data5;
	wire  sub_wire5 = data4;
	wire  sub_wire4 = data3;
	wire  sub_wire3 = data2;
	wire  sub_wire2 = data1;
	wire  sub_wire0 = data0;
	wire [7:0] sub_wire1 = {sub_wire8, sub_wire7, sub_wire6, sub_wire5, sub_wire4, sub_wire3, sub_wire2, sub_wire0};
	wire [0:0] sub_wire10 = sub_wire9[0:0];
	wire  result = sub_wire10;

	lpm_mux	LPM_MUX_component (
				.data (sub_wire1),
				.sel (sel),
				.result (sub_wire9)
				// synopsys translate_off
				,
				.aclr (),
				.clken (),
				.clock ()
				// synopsys translate_on
				);
	defparam
		LPM_MUX_component.lpm_size = 8,
		LPM_MUX_component.lpm_type = "LPM_MUX",
		LPM_MUX_component.lpm_width = 1,
		LPM_MUX_component.lpm_widths = 3;


endmodule

// ============================================================
// CNX file retrieval info
// ============================================================
// Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone IV E"
// Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "0"
// Retrieval info: PRIVATE: new_diagram STRING "1"
// Retrieval info: LIBRARY: lpm lpm.lpm_components.all
// Retrieval info: CONSTANT: LPM_SIZE NUMERIC "8"
// Retrieval info: CONSTANT: LPM_TYPE STRING "LPM_MUX"
// Retrieval info: CONSTANT: LPM_WIDTH NUMERIC "1"
// Retrieval info: CONSTANT: LPM_WIDTHS NUMERIC "3"
// Retrieval info: USED_PORT: data0 0 0 0 0 INPUT NODEFVAL "data0"
// Retrieval info: USED_PORT: data1 0 0 0 0 INPUT NODEFVAL "data1"
// Retrieval info: USED_PORT: data2 0 0 0 0 INPUT NODEFVAL "data2"
// Retrieval info: USED_PORT: data3 0 0 0 0 INPUT NODEFVAL "data3"
// Retrieval info: USED_PORT: data4 0 0 0 0 INPUT NODEFVAL "data4"
// Retrieval info: USED_PORT: data5 0 0 0 0 INPUT NODEFVAL "data5"
// Retrieval info: USED_PORT: data6 0 0 0 0 INPUT NODEFVAL "data6"
// Retrieval info: USED_PORT: data7 0 0 0 0 INPUT NODEFVAL "data7"
// Retrieval info: USED_PORT: result 0 0 0 0 OUTPUT NODEFVAL "result"
// Retrieval info: USED_PORT: sel 0 0 3 0 INPUT NODEFVAL "sel[2..0]"
// Retrieval info: CONNECT: @data 0 0 1 0 data0 0 0 0 0
// Retrieval info: CONNECT: @data 0 0 1 1 data1 0 0 0 0
// Retrieval info: CONNECT: @data 0 0 1 2 data2 0 0 0 0
// Retrieval info: CONNECT: @data 0 0 1 3 data3 0 0 0 0
// Retrieval info: CONNECT: @data 0 0 1 4 data4 0 0 0 0
// Retrieval info: CONNECT: @data 0 0 1 5 data5 0 0 0 0
// Retrieval info: CONNECT: @data 0 0 1 6 data6 0 0 0 0
// Retrieval info: CONNECT: @data 0 0 1 7 data7 0 0 0 0
// Retrieval info: CONNECT: @sel 0 0 3 0 sel 0 0 3 0
// Retrieval info: CONNECT: result 0 0 0 0 @result 0 0 1 0
// Retrieval info: GEN_FILE: TYPE_NORMAL n2tmux8way.v TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL n2tmux8way.inc FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL n2tmux8way.cmp FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL n2tmux8way.bsf FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL n2tmux8way_inst.v FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL n2tmux8way_bb.v TRUE
// Retrieval info: LIB_FILE: lpm

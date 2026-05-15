set moduleName wedrowiec_hls_axi
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set svuvm_can_support 1
set cdfgNum 18
set C_modelName {wedrowiec_hls_axi}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ in_r_V_data_V int 32 regular {axi_s 0 volatile  { in_r Data } }  }
	{ in_r_V_last_V int 1 regular {axi_s 0 volatile  { in_r Last } }  }
	{ out_r_V_data_V int 32 regular {axi_s 1 volatile  { out_r Data } }  }
	{ out_r_V_last_V int 1 regular {axi_s 1 volatile  { out_r Last } }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "in_r_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_r_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "out_r_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_r_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 10
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ in_r_TDATA sc_in sc_lv 32 signal 0 } 
	{ in_r_TVALID sc_in sc_logic 1 invld 1 } 
	{ in_r_TREADY sc_out sc_logic 1 inacc 1 } 
	{ in_r_TLAST sc_in sc_lv 1 signal 1 } 
	{ out_r_TDATA sc_out sc_lv 32 signal 2 } 
	{ out_r_TVALID sc_out sc_logic 1 outvld 3 } 
	{ out_r_TREADY sc_in sc_logic 1 outacc 3 } 
	{ out_r_TLAST sc_out sc_lv 1 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "in_r_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_r_V_data_V", "role": "default" }} , 
 	{ "name": "in_r_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in_r_V_last_V", "role": "default" }} , 
 	{ "name": "in_r_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "in_r_V_last_V", "role": "default" }} , 
 	{ "name": "in_r_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_r_V_last_V", "role": "default" }} , 
 	{ "name": "out_r_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_r_V_data_V", "role": "default" }} , 
 	{ "name": "out_r_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_r_V_last_V", "role": "default" }} , 
 	{ "name": "out_r_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "out_r_V_last_V", "role": "default" }} , 
 	{ "name": "out_r_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r_V_last_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "61", "107", "111", "112", "113", "114", "115", "116"],
		"CDFG" : "wedrowiec_hls_axi",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2151", "EstimateLatencyMax" : "2152",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "in_r_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_r",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_wedrowiec_hls_axi_Pipeline_VITIS_LOOP_16_1_fu_158", "Port" : "in_r_V_data_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "in_r_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_r",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_wedrowiec_hls_axi_Pipeline_VITIS_LOOP_16_1_fu_158", "Port" : "in_r_V_last_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "out_r_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_r",
				"SubConnect" : [
					{"ID" : "107", "SubInstance" : "grp_wedrowiec_hls_axi_Pipeline_VITIS_LOOP_31_4_fu_190", "Port" : "out_r_V_data_V", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "out_r_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_r",
				"SubConnect" : [
					{"ID" : "107", "SubInstance" : "grp_wedrowiec_hls_axi_Pipeline_VITIS_LOOP_31_4_fu_190", "Port" : "out_r_V_last_V", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "outidx", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "61", "SubInstance" : "grp_wedrowiec_hls_fu_168", "Port" : "outidx", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "w3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "61", "SubInstance" : "grp_wedrowiec_hls_fu_168", "Port" : "w3", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "outidx_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "61", "SubInstance" : "grp_wedrowiec_hls_fu_168", "Port" : "outidx_9", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "w5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "61", "SubInstance" : "grp_wedrowiec_hls_fu_168", "Port" : "w5", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "outidx_18", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "61", "SubInstance" : "grp_wedrowiec_hls_fu_168", "Port" : "outidx_18", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "w7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "61", "SubInstance" : "grp_wedrowiec_hls_fu_168", "Port" : "w7", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "outidx_27", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "61", "SubInstance" : "grp_wedrowiec_hls_fu_168", "Port" : "outidx_27", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "w9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "61", "SubInstance" : "grp_wedrowiec_hls_fu_168", "Port" : "w9", "Inst_start_state" : "4", "Inst_end_state" : "5"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ctype_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_axi_Pipeline_VITIS_LOOP_16_1_fu_158", "Parent" : "0", "Child" : ["3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60"],
		"CDFG" : "wedrowiec_hls_axi_Pipeline_VITIS_LOOP_16_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "73", "EstimateLatencyMax" : "73",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "in_r_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_r",
				"BlockSignal" : [
					{"Name" : "in_r_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_r_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_r"},
			{"Name" : "in_local", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "in_local_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "is_last_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_16_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage2", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage2_subdone", "QuitState" : "ap_ST_fsm_pp0_stage7", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage7_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_axi_Pipeline_VITIS_LOOP_16_1_fu_158.fpext_32ns_64_2_no_dsp_1_U1", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_axi_Pipeline_VITIS_LOOP_16_1_fu_158.bitselect_1ns_54ns_32ns_1_1_1_U2", "Parent" : "2"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_axi_Pipeline_VITIS_LOOP_16_1_fu_158.bitselect_1ns_54ns_32s_1_1_1_U3", "Parent" : "2"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_axi_Pipeline_VITIS_LOOP_16_1_fu_158.sparsemux_7_2_8_1_1_U4", "Parent" : "2"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_axi_Pipeline_VITIS_LOOP_16_1_fu_158.sparsemux_7_2_1_1_1_U5", "Parent" : "2"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_axi_Pipeline_VITIS_LOOP_16_1_fu_158.sparsemux_7_2_1_1_1_U6", "Parent" : "2"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_axi_Pipeline_VITIS_LOOP_16_1_fu_158.sparsemux_7_2_1_1_1_U7", "Parent" : "2"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_axi_Pipeline_VITIS_LOOP_16_1_fu_158.sparsemux_7_2_1_1_1_U8", "Parent" : "2"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_axi_Pipeline_VITIS_LOOP_16_1_fu_158.bitselect_1ns_54ns_32ns_1_1_1_U9", "Parent" : "2"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_axi_Pipeline_VITIS_LOOP_16_1_fu_158.bitselect_1ns_54ns_32s_1_1_1_U10", "Parent" : "2"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_axi_Pipeline_VITIS_LOOP_16_1_fu_158.sparsemux_7_2_8_1_1_U11", "Parent" : "2"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_axi_Pipeline_VITIS_LOOP_16_1_fu_158.sparsemux_7_2_1_1_1_U12", "Parent" : "2"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_axi_Pipeline_VITIS_LOOP_16_1_fu_158.sparsemux_7_2_1_1_1_U13", "Parent" : "2"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_axi_Pipeline_VITIS_LOOP_16_1_fu_158.sparsemux_7_2_1_1_1_U14", "Parent" : "2"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_axi_Pipeline_VITIS_LOOP_16_1_fu_158.sparsemux_7_2_1_1_1_U15", "Parent" : "2"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_axi_Pipeline_VITIS_LOOP_16_1_fu_158.bitselect_1ns_54ns_32ns_1_1_1_U16", "Parent" : "2"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_axi_Pipeline_VITIS_LOOP_16_1_fu_158.bitselect_1ns_54ns_32s_1_1_1_U17", "Parent" : "2"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_axi_Pipeline_VITIS_LOOP_16_1_fu_158.sparsemux_7_2_8_1_1_U18", "Parent" : "2"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_axi_Pipeline_VITIS_LOOP_16_1_fu_158.sparsemux_7_2_1_1_1_U19", "Parent" : "2"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_axi_Pipeline_VITIS_LOOP_16_1_fu_158.sparsemux_7_2_1_1_1_U20", "Parent" : "2"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_axi_Pipeline_VITIS_LOOP_16_1_fu_158.sparsemux_7_2_1_1_1_U21", "Parent" : "2"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_axi_Pipeline_VITIS_LOOP_16_1_fu_158.sparsemux_7_2_1_1_1_U22", "Parent" : "2"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_axi_Pipeline_VITIS_LOOP_16_1_fu_158.bitselect_1ns_54ns_32ns_1_1_1_U23", "Parent" : "2"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_axi_Pipeline_VITIS_LOOP_16_1_fu_158.bitselect_1ns_54ns_32s_1_1_1_U24", "Parent" : "2"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_axi_Pipeline_VITIS_LOOP_16_1_fu_158.sparsemux_7_2_8_1_1_U25", "Parent" : "2"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_axi_Pipeline_VITIS_LOOP_16_1_fu_158.sparsemux_7_2_1_1_1_U26", "Parent" : "2"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_axi_Pipeline_VITIS_LOOP_16_1_fu_158.sparsemux_7_2_1_1_1_U27", "Parent" : "2"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_axi_Pipeline_VITIS_LOOP_16_1_fu_158.sparsemux_7_2_1_1_1_U28", "Parent" : "2"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_axi_Pipeline_VITIS_LOOP_16_1_fu_158.sparsemux_7_2_1_1_1_U29", "Parent" : "2"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_axi_Pipeline_VITIS_LOOP_16_1_fu_158.bitselect_1ns_54ns_32ns_1_1_1_U30", "Parent" : "2"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_axi_Pipeline_VITIS_LOOP_16_1_fu_158.bitselect_1ns_54ns_32s_1_1_1_U31", "Parent" : "2"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_axi_Pipeline_VITIS_LOOP_16_1_fu_158.sparsemux_7_2_8_1_1_U32", "Parent" : "2"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_axi_Pipeline_VITIS_LOOP_16_1_fu_158.sparsemux_7_2_1_1_1_U33", "Parent" : "2"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_axi_Pipeline_VITIS_LOOP_16_1_fu_158.sparsemux_7_2_1_1_1_U34", "Parent" : "2"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_axi_Pipeline_VITIS_LOOP_16_1_fu_158.sparsemux_7_2_1_1_1_U35", "Parent" : "2"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_axi_Pipeline_VITIS_LOOP_16_1_fu_158.sparsemux_7_2_1_1_1_U36", "Parent" : "2"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_axi_Pipeline_VITIS_LOOP_16_1_fu_158.bitselect_1ns_54ns_32ns_1_1_1_U37", "Parent" : "2"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_axi_Pipeline_VITIS_LOOP_16_1_fu_158.bitselect_1ns_54ns_32s_1_1_1_U38", "Parent" : "2"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_axi_Pipeline_VITIS_LOOP_16_1_fu_158.sparsemux_7_2_8_1_1_U39", "Parent" : "2"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_axi_Pipeline_VITIS_LOOP_16_1_fu_158.sparsemux_7_2_1_1_1_U40", "Parent" : "2"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_axi_Pipeline_VITIS_LOOP_16_1_fu_158.sparsemux_7_2_1_1_1_U41", "Parent" : "2"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_axi_Pipeline_VITIS_LOOP_16_1_fu_158.sparsemux_7_2_1_1_1_U42", "Parent" : "2"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_axi_Pipeline_VITIS_LOOP_16_1_fu_158.sparsemux_7_2_1_1_1_U43", "Parent" : "2"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_axi_Pipeline_VITIS_LOOP_16_1_fu_158.bitselect_1ns_54ns_32ns_1_1_1_U44", "Parent" : "2"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_axi_Pipeline_VITIS_LOOP_16_1_fu_158.bitselect_1ns_54ns_32s_1_1_1_U45", "Parent" : "2"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_axi_Pipeline_VITIS_LOOP_16_1_fu_158.sparsemux_7_2_8_1_1_U46", "Parent" : "2"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_axi_Pipeline_VITIS_LOOP_16_1_fu_158.sparsemux_7_2_1_1_1_U47", "Parent" : "2"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_axi_Pipeline_VITIS_LOOP_16_1_fu_158.sparsemux_7_2_1_1_1_U48", "Parent" : "2"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_axi_Pipeline_VITIS_LOOP_16_1_fu_158.sparsemux_7_2_1_1_1_U49", "Parent" : "2"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_axi_Pipeline_VITIS_LOOP_16_1_fu_158.sparsemux_7_2_1_1_1_U50", "Parent" : "2"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_axi_Pipeline_VITIS_LOOP_16_1_fu_158.bitselect_1ns_54ns_32ns_1_1_1_U51", "Parent" : "2"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_axi_Pipeline_VITIS_LOOP_16_1_fu_158.bitselect_1ns_54ns_32s_1_1_1_U52", "Parent" : "2"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_axi_Pipeline_VITIS_LOOP_16_1_fu_158.sparsemux_7_2_8_1_1_U53", "Parent" : "2"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_axi_Pipeline_VITIS_LOOP_16_1_fu_158.sparsemux_7_2_1_1_1_U54", "Parent" : "2"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_axi_Pipeline_VITIS_LOOP_16_1_fu_158.sparsemux_7_2_1_1_1_U55", "Parent" : "2"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_axi_Pipeline_VITIS_LOOP_16_1_fu_158.sparsemux_7_2_1_1_1_U56", "Parent" : "2"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_axi_Pipeline_VITIS_LOOP_16_1_fu_158.sparsemux_7_2_1_1_1_U57", "Parent" : "2"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_axi_Pipeline_VITIS_LOOP_16_1_fu_158.flow_control_loop_pipe_sequential_init_U", "Parent" : "2"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_fu_168", "Parent" : "0", "Child" : ["62", "71", "72", "79", "80", "87", "88", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106"],
		"CDFG" : "wedrowiec_hls",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2062", "EstimateLatencyMax" : "2063",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "62", "Name" : "dense_array_ap_ufixed_8u_array_ap_fixed_25_12_5_3_0_32u_config3_U0"}],
		"OutputProcess" : [
			{"ID" : "88", "Name" : "dense_array_ap_fixed_16u_array_ap_fixed_25_13_5_3_0_4u_config9_U0"}],
		"Port" : [
			{"Name" : "in_local", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "dense_array_ap_ufixed_8u_array_ap_fixed_25_12_5_3_0_32u_config3_U0", "Port" : "in_local"}]},
			{"Name" : "out_local", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "88", "SubInstance" : "dense_array_ap_fixed_16u_array_ap_fixed_25_13_5_3_0_4u_config9_U0", "Port" : "out_local"}]},
			{"Name" : "outidx", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "dense_array_ap_ufixed_8u_array_ap_fixed_25_12_5_3_0_32u_config3_U0", "Port" : "outidx"}]},
			{"Name" : "w3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "dense_array_ap_ufixed_8u_array_ap_fixed_25_12_5_3_0_32u_config3_U0", "Port" : "w3"}]},
			{"Name" : "outidx_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "dense_array_ap_fixed_32u_array_ap_fixed_26_14_5_3_0_32u_config5_U0", "Port" : "outidx_9"}]},
			{"Name" : "w5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "dense_array_ap_fixed_32u_array_ap_fixed_26_14_5_3_0_32u_config5_U0", "Port" : "w5"}]},
			{"Name" : "outidx_18", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "80", "SubInstance" : "dense_array_ap_fixed_32u_array_ap_fixed_26_14_5_3_0_16u_config7_U0", "Port" : "outidx_18"}]},
			{"Name" : "w7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "80", "SubInstance" : "dense_array_ap_fixed_32u_array_ap_fixed_26_14_5_3_0_16u_config7_U0", "Port" : "w7"}]},
			{"Name" : "outidx_27", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "88", "SubInstance" : "dense_array_ap_fixed_16u_array_ap_fixed_25_13_5_3_0_4u_config9_U0", "Port" : "outidx_27"}]},
			{"Name" : "w9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "88", "SubInstance" : "dense_array_ap_fixed_16u_array_ap_fixed_25_13_5_3_0_4u_config9_U0", "Port" : "w9"}]}]},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_fu_168.dense_array_ap_ufixed_8u_array_ap_fixed_25_12_5_3_0_32u_config3_U0", "Parent" : "61", "Child" : ["63", "65"],
		"CDFG" : "dense_array_ap_ufixed_8u_array_ap_fixed_25_12_5_3_0_32u_config3_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2062", "EstimateLatencyMax" : "2063",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "in_local", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "grp_dense_array_array_ap_fixed_25_12_5_3_0_32u_config3_Pipeline_DataPrepare_fu_293", "Port" : "in_local", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "layer3_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["71"], "DependentChan" : "95", "DependentChanDepth" : "1", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "layer3_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "outidx", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_dense_resource_rf_gt_nin_rem0_ap_ufixed_ap_fixed_25_12_5_3_0_config3_s_fu_363", "Port" : "outidx", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "w3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_dense_resource_rf_gt_nin_rem0_ap_ufixed_ap_fixed_25_12_5_3_0_config3_s_fu_363", "Port" : "w3", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_fu_168.dense_array_ap_ufixed_8u_array_ap_fixed_25_12_5_3_0_32u_config3_U0.grp_dense_array_array_ap_fixed_25_12_5_3_0_32u_config3_Pipeline_DataPrepare_fu_293", "Parent" : "62", "Child" : ["64"],
		"CDFG" : "dense_array_array_ap_fixed_25_12_5_3_0_32u_config3_Pipeline_DataPrepare",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "in_local", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "in_local_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_0_7_0_0_0127_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_6_0_0_0125_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_5_0_0_0123_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_4_0_0_0121_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_3_0_0_0119_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_2_0_0_0117_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_1_0_0_0115_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_0_0_0113_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_7_0_0_0111_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_6_0_0_0109_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_5_0_0_0107_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_4_0_0_0105_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_3_0_0_0103_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_2_0_0_0101_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_1_0_0_099_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_0_0_097_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_7_0_0_095_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_6_0_0_093_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_5_0_0_091_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_4_0_0_089_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_3_0_0_087_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_2_0_0_085_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_1_0_0_083_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_0_0_081_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_7_0_0_079_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_6_0_0_077_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_5_0_0_075_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_4_0_0_073_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_3_0_0_071_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_2_0_0_069_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_1_0_0_067_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_0_0_065_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_7_0_0_063_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_6_0_0_061_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_5_0_0_059_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_4_0_0_057_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_3_0_0_055_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_2_0_0_053_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_1_0_0_051_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_0_0_049_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_7_0_0_047_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_6_0_0_045_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_5_0_0_043_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_4_0_0_041_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_3_0_0_039_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_2_0_0_037_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_1_0_0_035_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_0_0_033_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_7_0_0_031_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_6_0_0_029_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_5_0_0_027_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_4_0_0_025_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_3_0_0_023_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_2_0_0_021_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_1_0_0_019_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_0_0_017_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_7_0_0_015_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_6_0_0_013_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_5_0_0_011_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_4_0_0_09_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_3_0_0_07_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_2_0_0_05_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_1_0_0_03_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_0_0_01_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "DataPrepare", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "64", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_fu_168.dense_array_ap_ufixed_8u_array_ap_fixed_25_12_5_3_0_32u_config3_U0.grp_dense_array_array_ap_fixed_25_12_5_3_0_32u_config3_Pipeline_DataPrepare_fu_293.flow_control_loop_pipe_sequential_init_U", "Parent" : "63"},
	{"ID" : "65", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_fu_168.dense_array_ap_ufixed_8u_array_ap_fixed_25_12_5_3_0_32u_config3_U0.grp_dense_resource_rf_gt_nin_rem0_ap_ufixed_ap_fixed_25_12_5_3_0_config3_s_fu_363", "Parent" : "62", "Child" : ["66", "67", "68", "69", "70"],
		"CDFG" : "dense_resource_rf_gt_nin_rem0_ap_ufixed_ap_fixed_25_12_5_3_0_config3_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Rewind", "UnalignedPipeline" : "0", "RewindPipeline" : "1", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2048", "EstimateLatencyMax" : "2049",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "data_0_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_1_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_2_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_3_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_4_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_5_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_6_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_7_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_8_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_9_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_10_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_11_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_12_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_13_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_14_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_15_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_16_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_17_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_18_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_19_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_20_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_21_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_22_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_23_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_24_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_25_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_26_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_27_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_28_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_29_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_30_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_31_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_32_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_33_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_34_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_35_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_36_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_37_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_38_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_39_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_40_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_41_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_42_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_43_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_44_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_45_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_46_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_47_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_48_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_49_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_50_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_51_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_52_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_53_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_54_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_55_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_56_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_57_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_58_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_59_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_60_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_61_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_62_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_63_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "outidx", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w3", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "ReuseLoop", "PipelineType" : "rewind",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "has_continue" : "0"}}]},
	{"ID" : "66", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_fu_168.dense_array_ap_ufixed_8u_array_ap_fixed_25_12_5_3_0_32u_config3_U0.grp_dense_resource_rf_gt_nin_rem0_ap_ufixed_ap_fixed_25_12_5_3_0_config3_s_fu_363.outidx_U", "Parent" : "65"},
	{"ID" : "67", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_fu_168.dense_array_ap_ufixed_8u_array_ap_fixed_25_12_5_3_0_32u_config3_U0.grp_dense_resource_rf_gt_nin_rem0_ap_ufixed_ap_fixed_25_12_5_3_0_config3_s_fu_363.w3_U", "Parent" : "65"},
	{"ID" : "68", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_fu_168.dense_array_ap_ufixed_8u_array_ap_fixed_25_12_5_3_0_32u_config3_U0.grp_dense_resource_rf_gt_nin_rem0_ap_ufixed_ap_fixed_25_12_5_3_0_config3_s_fu_363.sparsemux_129_6_8_1_1_U132", "Parent" : "65"},
	{"ID" : "69", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_fu_168.dense_array_ap_ufixed_8u_array_ap_fixed_25_12_5_3_0_32u_config3_U0.grp_dense_resource_rf_gt_nin_rem0_ap_ufixed_ap_fixed_25_12_5_3_0_config3_s_fu_363.sparsemux_65_5_25_1_1_U133", "Parent" : "65"},
	{"ID" : "70", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_fu_168.dense_array_ap_ufixed_8u_array_ap_fixed_25_12_5_3_0_32u_config3_U0.grp_dense_resource_rf_gt_nin_rem0_ap_ufixed_ap_fixed_25_12_5_3_0_config3_s_fu_363.mac_muladd_8ns_7s_25s_26_1_1_U134", "Parent" : "65"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_fu_168.relu_array_ap_fixed_32u_array_ap_fixed_10_4_0_0_0_32u_relu_config4_U0", "Parent" : "61",
		"CDFG" : "relu_array_ap_fixed_32u_array_ap_fixed_10_4_0_0_0_32u_relu_config4_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "62",
		"StartFifo" : "start_for_relu_array_ap_fixed_32u_array_ap_fixed_10_4_0_0_0_32u_relu_config4_U0_U",
		"Port" : [
			{"Name" : "layer3_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["62"], "DependentChan" : "95", "DependentChanDepth" : "1", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "layer3_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "layer4_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["72"], "DependentChan" : "96", "DependentChanDepth" : "1", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "layer4_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_fu_168.dense_array_ap_fixed_32u_array_ap_fixed_26_14_5_3_0_32u_config5_U0", "Parent" : "61", "Child" : ["73"],
		"CDFG" : "dense_array_ap_fixed_32u_array_ap_fixed_26_14_5_3_0_32u_config5_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1026", "EstimateLatencyMax" : "1027",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "71",
		"StartFifo" : "start_for_dense_array_ap_fixed_32u_array_ap_fixed_26_14_5_3_0_32u_config5_U0_U",
		"Port" : [
			{"Name" : "layer4_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["71"], "DependentChan" : "96", "DependentChanDepth" : "1", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "layer4_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "layer5_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["79"], "DependentChan" : "97", "DependentChanDepth" : "1", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "layer5_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "outidx_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "73", "SubInstance" : "grp_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_26_14_5_3_0_config5_s_fu_165", "Port" : "outidx_9", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "w5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "73", "SubInstance" : "grp_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_26_14_5_3_0_config5_s_fu_165", "Port" : "w5", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_fu_168.dense_array_ap_fixed_32u_array_ap_fixed_26_14_5_3_0_32u_config5_U0.grp_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_26_14_5_3_0_config5_s_fu_165", "Parent" : "72", "Child" : ["74", "75", "76", "77", "78"],
		"CDFG" : "dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_26_14_5_3_0_config5_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Rewind", "UnalignedPipeline" : "0", "RewindPipeline" : "1", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1024", "EstimateLatencyMax" : "1025",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "data_0_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_1_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_2_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_3_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_4_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_5_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_6_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_7_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_8_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_9_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_10_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_11_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_12_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_13_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_14_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_15_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_16_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_17_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_18_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_19_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_20_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_21_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_22_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_23_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_24_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_25_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_26_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_27_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_28_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_29_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_30_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_31_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "outidx_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w5", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "ReuseLoop", "PipelineType" : "rewind",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "has_continue" : "0"}}]},
	{"ID" : "74", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_fu_168.dense_array_ap_fixed_32u_array_ap_fixed_26_14_5_3_0_32u_config5_U0.grp_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_26_14_5_3_0_config5_s_fu_165.outidx_9_U", "Parent" : "73"},
	{"ID" : "75", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_fu_168.dense_array_ap_fixed_32u_array_ap_fixed_26_14_5_3_0_32u_config5_U0.grp_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_26_14_5_3_0_config5_s_fu_165.w5_U", "Parent" : "73"},
	{"ID" : "76", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_fu_168.dense_array_ap_fixed_32u_array_ap_fixed_26_14_5_3_0_32u_config5_U0.grp_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_26_14_5_3_0_config5_s_fu_165.sparsemux_65_5_10_1_1_U208", "Parent" : "73"},
	{"ID" : "77", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_fu_168.dense_array_ap_fixed_32u_array_ap_fixed_26_14_5_3_0_32u_config5_U0.grp_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_26_14_5_3_0_config5_s_fu_165.sparsemux_65_5_26_1_1_U209", "Parent" : "73"},
	{"ID" : "78", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_fu_168.dense_array_ap_fixed_32u_array_ap_fixed_26_14_5_3_0_32u_config5_U0.grp_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_26_14_5_3_0_config5_s_fu_165.mac_muladd_10s_7s_26s_27_1_1_U210", "Parent" : "73"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_fu_168.relu_array_ap_fixed_32u_array_ap_fixed_10_4_0_0_0_32u_relu_config6_U0", "Parent" : "61",
		"CDFG" : "relu_array_ap_fixed_32u_array_ap_fixed_10_4_0_0_0_32u_relu_config6_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "72",
		"StartFifo" : "start_for_relu_array_ap_fixed_32u_array_ap_fixed_10_4_0_0_0_32u_relu_config6_U0_U",
		"Port" : [
			{"Name" : "layer5_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["72"], "DependentChan" : "97", "DependentChanDepth" : "1", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "layer5_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "layer6_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["80"], "DependentChan" : "98", "DependentChanDepth" : "1", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "layer6_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_fu_168.dense_array_ap_fixed_32u_array_ap_fixed_26_14_5_3_0_16u_config7_U0", "Parent" : "61", "Child" : ["81"],
		"CDFG" : "dense_array_ap_fixed_32u_array_ap_fixed_26_14_5_3_0_16u_config7_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "514", "EstimateLatencyMax" : "515",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "79",
		"StartFifo" : "start_for_dense_array_ap_fixed_32u_array_ap_fixed_26_14_5_3_0_16u_config7_U0_U",
		"Port" : [
			{"Name" : "layer6_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["79"], "DependentChan" : "98", "DependentChanDepth" : "1", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "layer6_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "layer7_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["87"], "DependentChan" : "99", "DependentChanDepth" : "1", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "layer7_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "outidx_18", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "grp_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_26_14_5_3_0_config7_s_fu_165", "Port" : "outidx_18", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "w7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "grp_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_26_14_5_3_0_config7_s_fu_165", "Port" : "w7", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "81", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_fu_168.dense_array_ap_fixed_32u_array_ap_fixed_26_14_5_3_0_16u_config7_U0.grp_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_26_14_5_3_0_config7_s_fu_165", "Parent" : "80", "Child" : ["82", "83", "84", "85", "86"],
		"CDFG" : "dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_26_14_5_3_0_config7_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Rewind", "UnalignedPipeline" : "0", "RewindPipeline" : "1", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "512", "EstimateLatencyMax" : "513",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "data_0_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_1_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_2_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_3_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_4_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_5_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_6_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_7_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_8_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_9_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_10_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_11_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_12_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_13_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_14_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_15_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_16_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_17_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_18_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_19_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_20_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_21_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_22_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_23_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_24_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_25_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_26_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_27_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_28_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_29_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_30_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_31_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "outidx_18", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w7", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "ReuseLoop", "PipelineType" : "rewind",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "has_continue" : "0"}}]},
	{"ID" : "82", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_fu_168.dense_array_ap_fixed_32u_array_ap_fixed_26_14_5_3_0_16u_config7_U0.grp_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_26_14_5_3_0_config7_s_fu_165.outidx_18_U", "Parent" : "81"},
	{"ID" : "83", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_fu_168.dense_array_ap_fixed_32u_array_ap_fixed_26_14_5_3_0_16u_config7_U0.grp_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_26_14_5_3_0_config7_s_fu_165.w7_U", "Parent" : "81"},
	{"ID" : "84", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_fu_168.dense_array_ap_fixed_32u_array_ap_fixed_26_14_5_3_0_16u_config7_U0.grp_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_26_14_5_3_0_config7_s_fu_165.sparsemux_65_5_10_1_1_U252", "Parent" : "81"},
	{"ID" : "85", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_fu_168.dense_array_ap_fixed_32u_array_ap_fixed_26_14_5_3_0_16u_config7_U0.grp_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_26_14_5_3_0_config7_s_fu_165.sparsemux_33_4_26_1_1_U253", "Parent" : "81"},
	{"ID" : "86", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_fu_168.dense_array_ap_fixed_32u_array_ap_fixed_26_14_5_3_0_16u_config7_U0.grp_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_26_14_5_3_0_config7_s_fu_165.mac_muladd_10s_7s_26s_27_1_1_U254", "Parent" : "81"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_fu_168.relu_array_ap_fixed_16u_array_ap_fixed_10_4_0_0_0_16u_relu_config8_U0", "Parent" : "61",
		"CDFG" : "relu_array_ap_fixed_16u_array_ap_fixed_10_4_0_0_0_16u_relu_config8_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "80",
		"StartFifo" : "start_for_relu_array_ap_fixed_16u_array_ap_fixed_10_4_0_0_0_16u_relu_config8_U0_U",
		"Port" : [
			{"Name" : "layer7_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["80"], "DependentChan" : "99", "DependentChanDepth" : "1", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "layer7_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "layer8_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["88"], "DependentChan" : "100", "DependentChanDepth" : "1", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "layer8_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_fu_168.dense_array_ap_fixed_16u_array_ap_fixed_25_13_5_3_0_4u_config9_U0", "Parent" : "61", "Child" : ["89"],
		"CDFG" : "dense_array_ap_fixed_16u_array_ap_fixed_25_13_5_3_0_4u_config9_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "66", "EstimateLatencyMax" : "67",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "87",
		"StartFifo" : "start_for_dense_array_ap_fixed_16u_array_ap_fixed_25_13_5_3_0_4u_config9_U0_U",
		"Port" : [
			{"Name" : "layer8_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["87"], "DependentChan" : "100", "DependentChanDepth" : "1", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "layer8_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_local", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "out_local_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "outidx_27", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "grp_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_25_13_5_3_0_config9_s_fu_101", "Port" : "outidx_27", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "w9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "grp_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_25_13_5_3_0_config9_s_fu_101", "Port" : "w9", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "89", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_fu_168.dense_array_ap_fixed_16u_array_ap_fixed_25_13_5_3_0_4u_config9_U0.grp_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_25_13_5_3_0_config9_s_fu_101", "Parent" : "88", "Child" : ["90", "91", "92", "93", "94"],
		"CDFG" : "dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_25_13_5_3_0_config9_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Rewind", "UnalignedPipeline" : "0", "RewindPipeline" : "1", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "64", "EstimateLatencyMax" : "65",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "data_0_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_1_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_2_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_3_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_4_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_5_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_6_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_7_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_8_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_9_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_10_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_11_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_12_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_13_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_14_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_15_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "outidx_27", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w9", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "ReuseLoop", "PipelineType" : "rewind",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "has_continue" : "0"}}]},
	{"ID" : "90", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_fu_168.dense_array_ap_fixed_16u_array_ap_fixed_25_13_5_3_0_4u_config9_U0.grp_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_25_13_5_3_0_config9_s_fu_101.outidx_27_U", "Parent" : "89"},
	{"ID" : "91", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_fu_168.dense_array_ap_fixed_16u_array_ap_fixed_25_13_5_3_0_4u_config9_U0.grp_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_25_13_5_3_0_config9_s_fu_101.w9_U", "Parent" : "89"},
	{"ID" : "92", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_fu_168.dense_array_ap_fixed_16u_array_ap_fixed_25_13_5_3_0_4u_config9_U0.grp_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_25_13_5_3_0_config9_s_fu_101.sparsemux_33_4_10_1_1_U294", "Parent" : "89"},
	{"ID" : "93", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_fu_168.dense_array_ap_fixed_16u_array_ap_fixed_25_13_5_3_0_4u_config9_U0.grp_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_25_13_5_3_0_config9_s_fu_101.sparsemux_9_2_25_1_1_U295", "Parent" : "89"},
	{"ID" : "94", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_fu_168.dense_array_ap_fixed_16u_array_ap_fixed_25_13_5_3_0_4u_config9_U0.grp_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_25_13_5_3_0_config9_s_fu_101.mac_muladd_10s_7s_25s_26_1_1_U296", "Parent" : "89"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_fu_168.layer3_out_U", "Parent" : "61"},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_fu_168.layer4_out_U", "Parent" : "61"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_fu_168.layer5_out_U", "Parent" : "61"},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_fu_168.layer6_out_U", "Parent" : "61"},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_fu_168.layer7_out_U", "Parent" : "61"},
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_fu_168.layer8_out_U", "Parent" : "61"},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_fu_168.start_for_relu_array_ap_fixed_32u_array_ap_fixed_10_4_0_0_0_32u_relu_config4_U0_U", "Parent" : "61"},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_fu_168.start_for_dense_array_ap_fixed_32u_array_ap_fixed_26_14_5_3_0_32u_config5_U0_U", "Parent" : "61"},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_fu_168.start_for_relu_array_ap_fixed_32u_array_ap_fixed_10_4_0_0_0_32u_relu_config6_U0_U", "Parent" : "61"},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_fu_168.start_for_dense_array_ap_fixed_32u_array_ap_fixed_26_14_5_3_0_16u_config7_U0_U", "Parent" : "61"},
	{"ID" : "105", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_fu_168.start_for_relu_array_ap_fixed_16u_array_ap_fixed_10_4_0_0_0_16u_relu_config8_U0_U", "Parent" : "61"},
	{"ID" : "106", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_fu_168.start_for_dense_array_ap_fixed_16u_array_ap_fixed_25_13_5_3_0_4u_config9_U0_U", "Parent" : "61"},
	{"ID" : "107", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_axi_Pipeline_VITIS_LOOP_31_4_fu_190", "Parent" : "0", "Child" : ["108", "109", "110"],
		"CDFG" : "wedrowiec_hls_axi_Pipeline_VITIS_LOOP_31_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7", "EstimateLatencyMax" : "7",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "is_last_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "ctype", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "out_r_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_r",
				"BlockSignal" : [
					{"Name" : "out_r_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_r_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_r"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_31_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_axi_Pipeline_VITIS_LOOP_31_4_fu_190.ctlz_25_25_1_1_U334", "Parent" : "107"},
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_axi_Pipeline_VITIS_LOOP_31_4_fu_190.bitselect_1ns_25ns_32s_1_1_1_U335", "Parent" : "107"},
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_wedrowiec_hls_axi_Pipeline_VITIS_LOOP_31_4_fu_190.flow_control_loop_pipe_sequential_init_U", "Parent" : "107"},
	{"ID" : "111", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.in_local_fifo_U", "Parent" : "0"},
	{"ID" : "112", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_local_fifo_U", "Parent" : "0"},
	{"ID" : "113", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_r_V_data_V_U", "Parent" : "0"},
	{"ID" : "114", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_r_V_last_V_U", "Parent" : "0"},
	{"ID" : "115", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_r_V_data_V_U", "Parent" : "0"},
	{"ID" : "116", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_r_V_last_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	wedrowiec_hls_axi {
		in_r_V_data_V {Type I LastRead 8 FirstWrite -1}
		in_r_V_last_V {Type I LastRead 8 FirstWrite -1}
		out_r_V_data_V {Type O LastRead -1 FirstWrite 2}
		out_r_V_last_V {Type O LastRead -1 FirstWrite 2}
		outidx {Type I LastRead -1 FirstWrite -1}
		w3 {Type I LastRead -1 FirstWrite -1}
		outidx_9 {Type I LastRead -1 FirstWrite -1}
		w5 {Type I LastRead -1 FirstWrite -1}
		outidx_18 {Type I LastRead -1 FirstWrite -1}
		w7 {Type I LastRead -1 FirstWrite -1}
		outidx_27 {Type I LastRead -1 FirstWrite -1}
		w9 {Type I LastRead -1 FirstWrite -1}}
	wedrowiec_hls_axi_Pipeline_VITIS_LOOP_16_1 {
		in_r_V_data_V {Type I LastRead 8 FirstWrite -1}
		in_r_V_last_V {Type I LastRead 8 FirstWrite -1}
		in_local {Type O LastRead -1 FirstWrite 10}
		is_last_out {Type O LastRead -1 FirstWrite 7}}
	wedrowiec_hls {
		in_local {Type I LastRead 1 FirstWrite -1}
		out_local {Type O LastRead -1 FirstWrite 2}
		outidx {Type I LastRead -1 FirstWrite -1}
		w3 {Type I LastRead -1 FirstWrite -1}
		outidx_9 {Type I LastRead -1 FirstWrite -1}
		w5 {Type I LastRead -1 FirstWrite -1}
		outidx_18 {Type I LastRead -1 FirstWrite -1}
		w7 {Type I LastRead -1 FirstWrite -1}
		outidx_27 {Type I LastRead -1 FirstWrite -1}
		w9 {Type I LastRead -1 FirstWrite -1}}
	dense_array_ap_ufixed_8u_array_ap_fixed_25_12_5_3_0_32u_config3_s {
		in_local {Type I LastRead 1 FirstWrite -1}
		layer3_out {Type O LastRead -1 FirstWrite 4}
		outidx {Type I LastRead -1 FirstWrite -1}
		w3 {Type I LastRead -1 FirstWrite -1}}
	dense_array_array_ap_fixed_25_12_5_3_0_32u_config3_Pipeline_DataPrepare {
		in_local {Type I LastRead 1 FirstWrite -1}
		p_0_7_0_0_0127_out {Type O LastRead -1 FirstWrite 0}
		p_0_6_0_0_0125_out {Type O LastRead -1 FirstWrite 0}
		p_0_5_0_0_0123_out {Type O LastRead -1 FirstWrite 0}
		p_0_4_0_0_0121_out {Type O LastRead -1 FirstWrite 0}
		p_0_3_0_0_0119_out {Type O LastRead -1 FirstWrite 0}
		p_0_2_0_0_0117_out {Type O LastRead -1 FirstWrite 0}
		p_0_1_0_0_0115_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_0_0_0113_out {Type O LastRead -1 FirstWrite 0}
		p_0_7_0_0_0111_out {Type O LastRead -1 FirstWrite 0}
		p_0_6_0_0_0109_out {Type O LastRead -1 FirstWrite 0}
		p_0_5_0_0_0107_out {Type O LastRead -1 FirstWrite 0}
		p_0_4_0_0_0105_out {Type O LastRead -1 FirstWrite 0}
		p_0_3_0_0_0103_out {Type O LastRead -1 FirstWrite 0}
		p_0_2_0_0_0101_out {Type O LastRead -1 FirstWrite 0}
		p_0_1_0_0_099_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_0_0_097_out {Type O LastRead -1 FirstWrite 0}
		p_0_7_0_0_095_out {Type O LastRead -1 FirstWrite 0}
		p_0_6_0_0_093_out {Type O LastRead -1 FirstWrite 0}
		p_0_5_0_0_091_out {Type O LastRead -1 FirstWrite 0}
		p_0_4_0_0_089_out {Type O LastRead -1 FirstWrite 0}
		p_0_3_0_0_087_out {Type O LastRead -1 FirstWrite 0}
		p_0_2_0_0_085_out {Type O LastRead -1 FirstWrite 0}
		p_0_1_0_0_083_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_0_0_081_out {Type O LastRead -1 FirstWrite 0}
		p_0_7_0_0_079_out {Type O LastRead -1 FirstWrite 0}
		p_0_6_0_0_077_out {Type O LastRead -1 FirstWrite 0}
		p_0_5_0_0_075_out {Type O LastRead -1 FirstWrite 0}
		p_0_4_0_0_073_out {Type O LastRead -1 FirstWrite 0}
		p_0_3_0_0_071_out {Type O LastRead -1 FirstWrite 0}
		p_0_2_0_0_069_out {Type O LastRead -1 FirstWrite 0}
		p_0_1_0_0_067_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_0_0_065_out {Type O LastRead -1 FirstWrite 0}
		p_0_7_0_0_063_out {Type O LastRead -1 FirstWrite 0}
		p_0_6_0_0_061_out {Type O LastRead -1 FirstWrite 0}
		p_0_5_0_0_059_out {Type O LastRead -1 FirstWrite 0}
		p_0_4_0_0_057_out {Type O LastRead -1 FirstWrite 0}
		p_0_3_0_0_055_out {Type O LastRead -1 FirstWrite 0}
		p_0_2_0_0_053_out {Type O LastRead -1 FirstWrite 0}
		p_0_1_0_0_051_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_0_0_049_out {Type O LastRead -1 FirstWrite 0}
		p_0_7_0_0_047_out {Type O LastRead -1 FirstWrite 0}
		p_0_6_0_0_045_out {Type O LastRead -1 FirstWrite 0}
		p_0_5_0_0_043_out {Type O LastRead -1 FirstWrite 0}
		p_0_4_0_0_041_out {Type O LastRead -1 FirstWrite 0}
		p_0_3_0_0_039_out {Type O LastRead -1 FirstWrite 0}
		p_0_2_0_0_037_out {Type O LastRead -1 FirstWrite 0}
		p_0_1_0_0_035_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_0_0_033_out {Type O LastRead -1 FirstWrite 0}
		p_0_7_0_0_031_out {Type O LastRead -1 FirstWrite 0}
		p_0_6_0_0_029_out {Type O LastRead -1 FirstWrite 0}
		p_0_5_0_0_027_out {Type O LastRead -1 FirstWrite 0}
		p_0_4_0_0_025_out {Type O LastRead -1 FirstWrite 0}
		p_0_3_0_0_023_out {Type O LastRead -1 FirstWrite 0}
		p_0_2_0_0_021_out {Type O LastRead -1 FirstWrite 0}
		p_0_1_0_0_019_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_0_0_017_out {Type O LastRead -1 FirstWrite 0}
		p_0_7_0_0_015_out {Type O LastRead -1 FirstWrite 0}
		p_0_6_0_0_013_out {Type O LastRead -1 FirstWrite 0}
		p_0_5_0_0_011_out {Type O LastRead -1 FirstWrite 0}
		p_0_4_0_0_09_out {Type O LastRead -1 FirstWrite 0}
		p_0_3_0_0_07_out {Type O LastRead -1 FirstWrite 0}
		p_0_2_0_0_05_out {Type O LastRead -1 FirstWrite 0}
		p_0_1_0_0_03_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_0_0_01_out {Type O LastRead -1 FirstWrite 0}}
	dense_resource_rf_gt_nin_rem0_ap_ufixed_ap_fixed_25_12_5_3_0_config3_s {
		data_0_val {Type I LastRead 1 FirstWrite -1}
		data_1_val {Type I LastRead 1 FirstWrite -1}
		data_2_val {Type I LastRead 1 FirstWrite -1}
		data_3_val {Type I LastRead 1 FirstWrite -1}
		data_4_val {Type I LastRead 1 FirstWrite -1}
		data_5_val {Type I LastRead 1 FirstWrite -1}
		data_6_val {Type I LastRead 1 FirstWrite -1}
		data_7_val {Type I LastRead 1 FirstWrite -1}
		data_8_val {Type I LastRead 1 FirstWrite -1}
		data_9_val {Type I LastRead 1 FirstWrite -1}
		data_10_val {Type I LastRead 1 FirstWrite -1}
		data_11_val {Type I LastRead 1 FirstWrite -1}
		data_12_val {Type I LastRead 1 FirstWrite -1}
		data_13_val {Type I LastRead 1 FirstWrite -1}
		data_14_val {Type I LastRead 1 FirstWrite -1}
		data_15_val {Type I LastRead 1 FirstWrite -1}
		data_16_val {Type I LastRead 1 FirstWrite -1}
		data_17_val {Type I LastRead 1 FirstWrite -1}
		data_18_val {Type I LastRead 1 FirstWrite -1}
		data_19_val {Type I LastRead 1 FirstWrite -1}
		data_20_val {Type I LastRead 1 FirstWrite -1}
		data_21_val {Type I LastRead 1 FirstWrite -1}
		data_22_val {Type I LastRead 1 FirstWrite -1}
		data_23_val {Type I LastRead 1 FirstWrite -1}
		data_24_val {Type I LastRead 1 FirstWrite -1}
		data_25_val {Type I LastRead 1 FirstWrite -1}
		data_26_val {Type I LastRead 1 FirstWrite -1}
		data_27_val {Type I LastRead 1 FirstWrite -1}
		data_28_val {Type I LastRead 1 FirstWrite -1}
		data_29_val {Type I LastRead 1 FirstWrite -1}
		data_30_val {Type I LastRead 1 FirstWrite -1}
		data_31_val {Type I LastRead 1 FirstWrite -1}
		data_32_val {Type I LastRead 1 FirstWrite -1}
		data_33_val {Type I LastRead 1 FirstWrite -1}
		data_34_val {Type I LastRead 1 FirstWrite -1}
		data_35_val {Type I LastRead 1 FirstWrite -1}
		data_36_val {Type I LastRead 1 FirstWrite -1}
		data_37_val {Type I LastRead 1 FirstWrite -1}
		data_38_val {Type I LastRead 1 FirstWrite -1}
		data_39_val {Type I LastRead 1 FirstWrite -1}
		data_40_val {Type I LastRead 1 FirstWrite -1}
		data_41_val {Type I LastRead 1 FirstWrite -1}
		data_42_val {Type I LastRead 1 FirstWrite -1}
		data_43_val {Type I LastRead 1 FirstWrite -1}
		data_44_val {Type I LastRead 1 FirstWrite -1}
		data_45_val {Type I LastRead 1 FirstWrite -1}
		data_46_val {Type I LastRead 1 FirstWrite -1}
		data_47_val {Type I LastRead 1 FirstWrite -1}
		data_48_val {Type I LastRead 1 FirstWrite -1}
		data_49_val {Type I LastRead 1 FirstWrite -1}
		data_50_val {Type I LastRead 1 FirstWrite -1}
		data_51_val {Type I LastRead 1 FirstWrite -1}
		data_52_val {Type I LastRead 1 FirstWrite -1}
		data_53_val {Type I LastRead 1 FirstWrite -1}
		data_54_val {Type I LastRead 1 FirstWrite -1}
		data_55_val {Type I LastRead 1 FirstWrite -1}
		data_56_val {Type I LastRead 1 FirstWrite -1}
		data_57_val {Type I LastRead 1 FirstWrite -1}
		data_58_val {Type I LastRead 1 FirstWrite -1}
		data_59_val {Type I LastRead 1 FirstWrite -1}
		data_60_val {Type I LastRead 1 FirstWrite -1}
		data_61_val {Type I LastRead 1 FirstWrite -1}
		data_62_val {Type I LastRead 1 FirstWrite -1}
		data_63_val {Type I LastRead 1 FirstWrite -1}
		outidx {Type I LastRead -1 FirstWrite -1}
		w3 {Type I LastRead -1 FirstWrite -1}}
	relu_array_ap_fixed_32u_array_ap_fixed_10_4_0_0_0_32u_relu_config4_s {
		layer3_out {Type I LastRead 0 FirstWrite -1}
		layer4_out {Type O LastRead -1 FirstWrite 0}}
	dense_array_ap_fixed_32u_array_ap_fixed_26_14_5_3_0_32u_config5_s {
		layer4_out {Type I LastRead 0 FirstWrite -1}
		layer5_out {Type O LastRead -1 FirstWrite 2}
		outidx_9 {Type I LastRead -1 FirstWrite -1}
		w5 {Type I LastRead -1 FirstWrite -1}}
	dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_26_14_5_3_0_config5_s {
		data_0_val {Type I LastRead 1 FirstWrite -1}
		data_1_val {Type I LastRead 1 FirstWrite -1}
		data_2_val {Type I LastRead 1 FirstWrite -1}
		data_3_val {Type I LastRead 1 FirstWrite -1}
		data_4_val {Type I LastRead 1 FirstWrite -1}
		data_5_val {Type I LastRead 1 FirstWrite -1}
		data_6_val {Type I LastRead 1 FirstWrite -1}
		data_7_val {Type I LastRead 1 FirstWrite -1}
		data_8_val {Type I LastRead 1 FirstWrite -1}
		data_9_val {Type I LastRead 1 FirstWrite -1}
		data_10_val {Type I LastRead 1 FirstWrite -1}
		data_11_val {Type I LastRead 1 FirstWrite -1}
		data_12_val {Type I LastRead 1 FirstWrite -1}
		data_13_val {Type I LastRead 1 FirstWrite -1}
		data_14_val {Type I LastRead 1 FirstWrite -1}
		data_15_val {Type I LastRead 1 FirstWrite -1}
		data_16_val {Type I LastRead 1 FirstWrite -1}
		data_17_val {Type I LastRead 1 FirstWrite -1}
		data_18_val {Type I LastRead 1 FirstWrite -1}
		data_19_val {Type I LastRead 1 FirstWrite -1}
		data_20_val {Type I LastRead 1 FirstWrite -1}
		data_21_val {Type I LastRead 1 FirstWrite -1}
		data_22_val {Type I LastRead 1 FirstWrite -1}
		data_23_val {Type I LastRead 1 FirstWrite -1}
		data_24_val {Type I LastRead 1 FirstWrite -1}
		data_25_val {Type I LastRead 1 FirstWrite -1}
		data_26_val {Type I LastRead 1 FirstWrite -1}
		data_27_val {Type I LastRead 1 FirstWrite -1}
		data_28_val {Type I LastRead 1 FirstWrite -1}
		data_29_val {Type I LastRead 1 FirstWrite -1}
		data_30_val {Type I LastRead 1 FirstWrite -1}
		data_31_val {Type I LastRead 1 FirstWrite -1}
		outidx_9 {Type I LastRead -1 FirstWrite -1}
		w5 {Type I LastRead -1 FirstWrite -1}}
	relu_array_ap_fixed_32u_array_ap_fixed_10_4_0_0_0_32u_relu_config6_s {
		layer5_out {Type I LastRead 0 FirstWrite -1}
		layer6_out {Type O LastRead -1 FirstWrite 0}}
	dense_array_ap_fixed_32u_array_ap_fixed_26_14_5_3_0_16u_config7_s {
		layer6_out {Type I LastRead 0 FirstWrite -1}
		layer7_out {Type O LastRead -1 FirstWrite 2}
		outidx_18 {Type I LastRead -1 FirstWrite -1}
		w7 {Type I LastRead -1 FirstWrite -1}}
	dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_26_14_5_3_0_config7_s {
		data_0_val {Type I LastRead 1 FirstWrite -1}
		data_1_val {Type I LastRead 1 FirstWrite -1}
		data_2_val {Type I LastRead 1 FirstWrite -1}
		data_3_val {Type I LastRead 1 FirstWrite -1}
		data_4_val {Type I LastRead 1 FirstWrite -1}
		data_5_val {Type I LastRead 1 FirstWrite -1}
		data_6_val {Type I LastRead 1 FirstWrite -1}
		data_7_val {Type I LastRead 1 FirstWrite -1}
		data_8_val {Type I LastRead 1 FirstWrite -1}
		data_9_val {Type I LastRead 1 FirstWrite -1}
		data_10_val {Type I LastRead 1 FirstWrite -1}
		data_11_val {Type I LastRead 1 FirstWrite -1}
		data_12_val {Type I LastRead 1 FirstWrite -1}
		data_13_val {Type I LastRead 1 FirstWrite -1}
		data_14_val {Type I LastRead 1 FirstWrite -1}
		data_15_val {Type I LastRead 1 FirstWrite -1}
		data_16_val {Type I LastRead 1 FirstWrite -1}
		data_17_val {Type I LastRead 1 FirstWrite -1}
		data_18_val {Type I LastRead 1 FirstWrite -1}
		data_19_val {Type I LastRead 1 FirstWrite -1}
		data_20_val {Type I LastRead 1 FirstWrite -1}
		data_21_val {Type I LastRead 1 FirstWrite -1}
		data_22_val {Type I LastRead 1 FirstWrite -1}
		data_23_val {Type I LastRead 1 FirstWrite -1}
		data_24_val {Type I LastRead 1 FirstWrite -1}
		data_25_val {Type I LastRead 1 FirstWrite -1}
		data_26_val {Type I LastRead 1 FirstWrite -1}
		data_27_val {Type I LastRead 1 FirstWrite -1}
		data_28_val {Type I LastRead 1 FirstWrite -1}
		data_29_val {Type I LastRead 1 FirstWrite -1}
		data_30_val {Type I LastRead 1 FirstWrite -1}
		data_31_val {Type I LastRead 1 FirstWrite -1}
		outidx_18 {Type I LastRead -1 FirstWrite -1}
		w7 {Type I LastRead -1 FirstWrite -1}}
	relu_array_ap_fixed_16u_array_ap_fixed_10_4_0_0_0_16u_relu_config8_s {
		layer7_out {Type I LastRead 0 FirstWrite -1}
		layer8_out {Type O LastRead -1 FirstWrite 0}}
	dense_array_ap_fixed_16u_array_ap_fixed_25_13_5_3_0_4u_config9_s {
		layer8_out {Type I LastRead 0 FirstWrite -1}
		out_local {Type O LastRead -1 FirstWrite 2}
		outidx_27 {Type I LastRead -1 FirstWrite -1}
		w9 {Type I LastRead -1 FirstWrite -1}}
	dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_25_13_5_3_0_config9_s {
		data_0_val {Type I LastRead 1 FirstWrite -1}
		data_1_val {Type I LastRead 1 FirstWrite -1}
		data_2_val {Type I LastRead 1 FirstWrite -1}
		data_3_val {Type I LastRead 1 FirstWrite -1}
		data_4_val {Type I LastRead 1 FirstWrite -1}
		data_5_val {Type I LastRead 1 FirstWrite -1}
		data_6_val {Type I LastRead 1 FirstWrite -1}
		data_7_val {Type I LastRead 1 FirstWrite -1}
		data_8_val {Type I LastRead 1 FirstWrite -1}
		data_9_val {Type I LastRead 1 FirstWrite -1}
		data_10_val {Type I LastRead 1 FirstWrite -1}
		data_11_val {Type I LastRead 1 FirstWrite -1}
		data_12_val {Type I LastRead 1 FirstWrite -1}
		data_13_val {Type I LastRead 1 FirstWrite -1}
		data_14_val {Type I LastRead 1 FirstWrite -1}
		data_15_val {Type I LastRead 1 FirstWrite -1}
		outidx_27 {Type I LastRead -1 FirstWrite -1}
		w9 {Type I LastRead -1 FirstWrite -1}}
	wedrowiec_hls_axi_Pipeline_VITIS_LOOP_31_4 {
		is_last_reload {Type I LastRead 0 FirstWrite -1}
		ctype {Type I LastRead 0 FirstWrite -1}
		out_r_V_data_V {Type O LastRead -1 FirstWrite 2}
		out_r_V_last_V {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2151", "Max" : "2152"}
	, {"Name" : "Interval", "Min" : "2152", "Max" : "2153"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	in_r_V_data_V { axis {  { in_r_TDATA in_data 0 32 } } }
	in_r_V_last_V { axis {  { in_r_TVALID in_vld 0 1 }  { in_r_TREADY in_acc 1 1 }  { in_r_TLAST in_data 0 1 } } }
	out_r_V_data_V { axis {  { out_r_TDATA out_data 1 32 } } }
	out_r_V_last_V { axis {  { out_r_TVALID out_vld 1 1 }  { out_r_TREADY out_acc 0 1 }  { out_r_TLAST out_data 1 1 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}

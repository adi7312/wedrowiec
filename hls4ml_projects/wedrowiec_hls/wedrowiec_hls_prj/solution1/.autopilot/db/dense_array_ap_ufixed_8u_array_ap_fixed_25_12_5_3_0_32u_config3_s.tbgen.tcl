set moduleName dense_array_ap_ufixed_8u_array_ap_fixed_25_12_5_3_0_32u_config3_s
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set svuvm_can_support 1
set cdfgNum 18
set C_modelName {dense<array<ap_ufixed,8u>,array<ap_fixed<25,12,5,3,0>,32u>,config3>}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ in_local int 64 regular {fifo 0 volatile }  }
	{ layer3_out int 800 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "in_local", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "layer3_out", "interface" : "fifo", "bitwidth" : 800, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 18
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ in_local_dout sc_in sc_lv 64 signal 0 } 
	{ in_local_empty_n sc_in sc_logic 1 signal 0 } 
	{ in_local_read sc_out sc_logic 1 signal 0 } 
	{ layer3_out_din sc_out sc_lv 800 signal 1 } 
	{ layer3_out_full_n sc_in sc_logic 1 signal 1 } 
	{ layer3_out_write sc_out sc_logic 1 signal 1 } 
	{ layer3_out_num_data_valid sc_in sc_lv 2 signal 1 } 
	{ layer3_out_fifo_cap sc_in sc_lv 2 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "in_local_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "in_local", "role": "dout" }} , 
 	{ "name": "in_local_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local", "role": "empty_n" }} , 
 	{ "name": "in_local_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local", "role": "read" }} , 
 	{ "name": "layer3_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":800, "type": "signal", "bundle":{"name": "layer3_out", "role": "din" }} , 
 	{ "name": "layer3_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer3_out", "role": "full_n" }} , 
 	{ "name": "layer3_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer3_out", "role": "write" }} , 
 	{ "name": "layer3_out_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "layer3_out", "role": "num_data_valid" }} , 
 	{ "name": "layer3_out_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "layer3_out", "role": "fifo_cap" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3"],
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
					{"ID" : "1", "SubInstance" : "grp_dense_array_array_ap_fixed_25_12_5_3_0_32u_config3_Pipeline_DataPrepare_fu_293", "Port" : "in_local", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "layer3_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "1", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "layer3_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "outidx", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_dense_resource_rf_gt_nin_rem0_ap_ufixed_ap_fixed_25_12_5_3_0_config3_s_fu_363", "Port" : "outidx", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "w3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_dense_resource_rf_gt_nin_rem0_ap_ufixed_ap_fixed_25_12_5_3_0_config3_s_fu_363", "Port" : "w3", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_array_array_ap_fixed_25_12_5_3_0_32u_config3_Pipeline_DataPrepare_fu_293", "Parent" : "0", "Child" : ["2"],
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_array_array_ap_fixed_25_12_5_3_0_32u_config3_Pipeline_DataPrepare_fu_293.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_resource_rf_gt_nin_rem0_ap_ufixed_ap_fixed_25_12_5_3_0_config3_s_fu_363", "Parent" : "0", "Child" : ["4", "5", "6", "7", "8"],
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
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_resource_rf_gt_nin_rem0_ap_ufixed_ap_fixed_25_12_5_3_0_config3_s_fu_363.outidx_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_resource_rf_gt_nin_rem0_ap_ufixed_ap_fixed_25_12_5_3_0_config3_s_fu_363.w3_U", "Parent" : "3"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_resource_rf_gt_nin_rem0_ap_ufixed_ap_fixed_25_12_5_3_0_config3_s_fu_363.sparsemux_129_6_8_1_1_U132", "Parent" : "3"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_resource_rf_gt_nin_rem0_ap_ufixed_ap_fixed_25_12_5_3_0_config3_s_fu_363.sparsemux_65_5_25_1_1_U133", "Parent" : "3"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_resource_rf_gt_nin_rem0_ap_ufixed_ap_fixed_25_12_5_3_0_config3_s_fu_363.mac_muladd_8ns_7s_25s_26_1_1_U134", "Parent" : "3"}]}


set ArgLastReadFirstWriteLatency {
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
		w3 {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2062", "Max" : "2063"}
	, {"Name" : "Interval", "Min" : "2062", "Max" : "2063"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	in_local { ap_fifo {  { in_local_dout fifo_data_in 0 64 }  { in_local_empty_n fifo_status 0 1 }  { in_local_read fifo_port_we 1 1 } } }
	layer3_out { ap_fifo {  { layer3_out_din fifo_data_in 1 800 }  { layer3_out_full_n fifo_status 0 1 }  { layer3_out_write fifo_port_we 1 1 }  { layer3_out_num_data_valid fifo_status_num_data_valid 0 2 }  { layer3_out_fifo_cap fifo_update 0 2 } } }
}

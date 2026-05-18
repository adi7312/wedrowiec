set moduleName dense_latency_wrapper_ap_fixed_ap_fixed_17_13_5_3_0_config9_s
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set isPipelined_legacy 0
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
set C_modelName {dense_latency_wrapper<ap_fixed,ap_fixed<17,13,5,3,0>,config9>}
set C_modelType { int 68 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ data_0_val1 int 6 regular  }
	{ data_1_val2 int 6 regular  }
	{ data_2_val3 int 6 regular  }
	{ data_3_val4 int 6 regular  }
	{ data_4_val5 int 6 regular  }
	{ data_5_val6 int 6 regular  }
	{ data_6_val7 int 6 regular  }
	{ data_7_val8 int 6 regular  }
	{ data_8_val9 int 6 regular  }
	{ data_9_val10 int 6 regular  }
	{ data_10_val11 int 6 regular  }
	{ data_11_val12 int 6 regular  }
	{ data_12_val13 int 6 regular  }
	{ data_13_val14 int 6 regular  }
	{ data_14_val15 int 6 regular  }
	{ data_15_val16 int 6 regular  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "data_0_val1", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "data_1_val2", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "data_2_val3", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "data_3_val4", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "data_4_val5", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "data_5_val6", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "data_6_val7", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "data_7_val8", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "data_8_val9", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "data_9_val10", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "data_10_val11", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "data_11_val12", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "data_12_val13", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "data_13_val14", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "data_14_val15", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "data_15_val16", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 68} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_0_val1 sc_in sc_lv 6 signal 0 } 
	{ data_1_val2 sc_in sc_lv 6 signal 1 } 
	{ data_2_val3 sc_in sc_lv 6 signal 2 } 
	{ data_3_val4 sc_in sc_lv 6 signal 3 } 
	{ data_4_val5 sc_in sc_lv 6 signal 4 } 
	{ data_5_val6 sc_in sc_lv 6 signal 5 } 
	{ data_6_val7 sc_in sc_lv 6 signal 6 } 
	{ data_7_val8 sc_in sc_lv 6 signal 7 } 
	{ data_8_val9 sc_in sc_lv 6 signal 8 } 
	{ data_9_val10 sc_in sc_lv 6 signal 9 } 
	{ data_10_val11 sc_in sc_lv 6 signal 10 } 
	{ data_11_val12 sc_in sc_lv 6 signal 11 } 
	{ data_12_val13 sc_in sc_lv 6 signal 12 } 
	{ data_13_val14 sc_in sc_lv 6 signal 13 } 
	{ data_14_val15 sc_in sc_lv 6 signal 14 } 
	{ data_15_val16 sc_in sc_lv 6 signal 15 } 
	{ ap_return_0 sc_out sc_lv 17 signal -1 } 
	{ ap_return_1 sc_out sc_lv 17 signal -1 } 
	{ ap_return_2 sc_out sc_lv 17 signal -1 } 
	{ ap_return_3 sc_out sc_lv 17 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_0_val1", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_0_val1", "role": "default" }} , 
 	{ "name": "data_1_val2", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_1_val2", "role": "default" }} , 
 	{ "name": "data_2_val3", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_2_val3", "role": "default" }} , 
 	{ "name": "data_3_val4", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_3_val4", "role": "default" }} , 
 	{ "name": "data_4_val5", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_4_val5", "role": "default" }} , 
 	{ "name": "data_5_val6", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_5_val6", "role": "default" }} , 
 	{ "name": "data_6_val7", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_6_val7", "role": "default" }} , 
 	{ "name": "data_7_val8", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_7_val8", "role": "default" }} , 
 	{ "name": "data_8_val9", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_8_val9", "role": "default" }} , 
 	{ "name": "data_9_val10", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_9_val10", "role": "default" }} , 
 	{ "name": "data_10_val11", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_10_val11", "role": "default" }} , 
 	{ "name": "data_11_val12", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_11_val12", "role": "default" }} , 
 	{ "name": "data_12_val13", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_12_val13", "role": "default" }} , 
 	{ "name": "data_13_val14", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_13_val14", "role": "default" }} , 
 	{ "name": "data_14_val15", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_14_val15", "role": "default" }} , 
 	{ "name": "data_15_val16", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_15_val16", "role": "default" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "ap_return_2", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "ap_return_2", "role": "default" }} , 
 	{ "name": "ap_return_3", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "ap_return_3", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
	dense_latency_wrapper_ap_fixed_ap_fixed_17_13_5_3_0_config9_s {
		data_0_val1 {Type I LastRead 0 FirstWrite -1}
		data_1_val2 {Type I LastRead 0 FirstWrite -1}
		data_2_val3 {Type I LastRead 0 FirstWrite -1}
		data_3_val4 {Type I LastRead 0 FirstWrite -1}
		data_4_val5 {Type I LastRead 0 FirstWrite -1}
		data_5_val6 {Type I LastRead 0 FirstWrite -1}
		data_6_val7 {Type I LastRead 0 FirstWrite -1}
		data_7_val8 {Type I LastRead 0 FirstWrite -1}
		data_8_val9 {Type I LastRead 0 FirstWrite -1}
		data_9_val10 {Type I LastRead 0 FirstWrite -1}
		data_10_val11 {Type I LastRead 0 FirstWrite -1}
		data_11_val12 {Type I LastRead 0 FirstWrite -1}
		data_12_val13 {Type I LastRead 0 FirstWrite -1}
		data_13_val14 {Type I LastRead 0 FirstWrite -1}
		data_14_val15 {Type I LastRead 0 FirstWrite -1}
		data_15_val16 {Type I LastRead 0 FirstWrite -1}}
	dense_latency_ap_fixed_6_4_0_0_0_ap_fixed_17_13_5_3_0_config9_s {
		data_0_val {Type I LastRead 0 FirstWrite -1}
		data_1_val {Type I LastRead 0 FirstWrite -1}
		data_2_val {Type I LastRead 0 FirstWrite -1}
		data_3_val {Type I LastRead 1 FirstWrite -1}
		data_4_val {Type I LastRead 0 FirstWrite -1}
		data_5_val {Type I LastRead 0 FirstWrite -1}
		data_6_val {Type I LastRead 1 FirstWrite -1}
		data_7_val {Type I LastRead 1 FirstWrite -1}
		data_8_val {Type I LastRead 0 FirstWrite -1}
		data_9_val {Type I LastRead 1 FirstWrite -1}
		data_10_val {Type I LastRead 1 FirstWrite -1}
		data_11_val {Type I LastRead 1 FirstWrite -1}
		data_12_val {Type I LastRead 1 FirstWrite -1}
		data_13_val {Type I LastRead 1 FirstWrite -1}
		data_14_val {Type I LastRead 1 FirstWrite -1}
		data_15_val {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "2"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "2"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_0_val1 { ap_none {  { data_0_val1 in_data 0 6 } } }
	data_1_val2 { ap_none {  { data_1_val2 in_data 0 6 } } }
	data_2_val3 { ap_none {  { data_2_val3 in_data 0 6 } } }
	data_3_val4 { ap_none {  { data_3_val4 in_data 0 6 } } }
	data_4_val5 { ap_none {  { data_4_val5 in_data 0 6 } } }
	data_5_val6 { ap_none {  { data_5_val6 in_data 0 6 } } }
	data_6_val7 { ap_none {  { data_6_val7 in_data 0 6 } } }
	data_7_val8 { ap_none {  { data_7_val8 in_data 0 6 } } }
	data_8_val9 { ap_none {  { data_8_val9 in_data 0 6 } } }
	data_9_val10 { ap_none {  { data_9_val10 in_data 0 6 } } }
	data_10_val11 { ap_none {  { data_10_val11 in_data 0 6 } } }
	data_11_val12 { ap_none {  { data_11_val12 in_data 0 6 } } }
	data_12_val13 { ap_none {  { data_12_val13 in_data 0 6 } } }
	data_13_val14 { ap_none {  { data_13_val14 in_data 0 6 } } }
	data_14_val15 { ap_none {  { data_14_val15 in_data 0 6 } } }
	data_15_val16 { ap_none {  { data_15_val16 in_data 0 6 } } }
}

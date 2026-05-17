set moduleName dense_latency_wrapper_ap_fixed_ap_fixed_18_14_5_3_0_config5_s
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
set C_modelName {dense_latency_wrapper<ap_fixed,ap_fixed<18,14,5,3,0>,config5>}
set C_modelType { int 576 }
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
	{ data_16_val17 int 6 regular  }
	{ data_17_val18 int 6 regular  }
	{ data_18_val19 int 6 regular  }
	{ data_19_val20 int 6 regular  }
	{ data_20_val21 int 6 regular  }
	{ data_21_val22 int 6 regular  }
	{ data_22_val23 int 6 regular  }
	{ data_23_val24 int 6 regular  }
	{ data_24_val25 int 6 regular  }
	{ data_25_val26 int 6 regular  }
	{ data_26_val27 int 6 regular  }
	{ data_27_val28 int 6 regular  }
	{ data_28_val29 int 6 regular  }
	{ data_29_val30 int 6 regular  }
	{ data_30_val31 int 6 regular  }
	{ data_31_val32 int 6 regular  }
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
 	{ "Name" : "data_16_val17", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "data_17_val18", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "data_18_val19", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "data_19_val20", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "data_20_val21", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "data_21_val22", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "data_22_val23", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "data_23_val24", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "data_24_val25", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "data_25_val26", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "data_26_val27", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "data_27_val28", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "data_28_val29", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "data_29_val30", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "data_30_val31", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "data_31_val32", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 576} ]}
# RTL Port declarations: 
set portNum 70
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
	{ data_16_val17 sc_in sc_lv 6 signal 16 } 
	{ data_17_val18 sc_in sc_lv 6 signal 17 } 
	{ data_18_val19 sc_in sc_lv 6 signal 18 } 
	{ data_19_val20 sc_in sc_lv 6 signal 19 } 
	{ data_20_val21 sc_in sc_lv 6 signal 20 } 
	{ data_21_val22 sc_in sc_lv 6 signal 21 } 
	{ data_22_val23 sc_in sc_lv 6 signal 22 } 
	{ data_23_val24 sc_in sc_lv 6 signal 23 } 
	{ data_24_val25 sc_in sc_lv 6 signal 24 } 
	{ data_25_val26 sc_in sc_lv 6 signal 25 } 
	{ data_26_val27 sc_in sc_lv 6 signal 26 } 
	{ data_27_val28 sc_in sc_lv 6 signal 27 } 
	{ data_28_val29 sc_in sc_lv 6 signal 28 } 
	{ data_29_val30 sc_in sc_lv 6 signal 29 } 
	{ data_30_val31 sc_in sc_lv 6 signal 30 } 
	{ data_31_val32 sc_in sc_lv 6 signal 31 } 
	{ ap_return_0 sc_out sc_lv 18 signal -1 } 
	{ ap_return_1 sc_out sc_lv 18 signal -1 } 
	{ ap_return_2 sc_out sc_lv 18 signal -1 } 
	{ ap_return_3 sc_out sc_lv 18 signal -1 } 
	{ ap_return_4 sc_out sc_lv 18 signal -1 } 
	{ ap_return_5 sc_out sc_lv 18 signal -1 } 
	{ ap_return_6 sc_out sc_lv 18 signal -1 } 
	{ ap_return_7 sc_out sc_lv 18 signal -1 } 
	{ ap_return_8 sc_out sc_lv 18 signal -1 } 
	{ ap_return_9 sc_out sc_lv 18 signal -1 } 
	{ ap_return_10 sc_out sc_lv 18 signal -1 } 
	{ ap_return_11 sc_out sc_lv 18 signal -1 } 
	{ ap_return_12 sc_out sc_lv 18 signal -1 } 
	{ ap_return_13 sc_out sc_lv 18 signal -1 } 
	{ ap_return_14 sc_out sc_lv 18 signal -1 } 
	{ ap_return_15 sc_out sc_lv 18 signal -1 } 
	{ ap_return_16 sc_out sc_lv 18 signal -1 } 
	{ ap_return_17 sc_out sc_lv 18 signal -1 } 
	{ ap_return_18 sc_out sc_lv 18 signal -1 } 
	{ ap_return_19 sc_out sc_lv 18 signal -1 } 
	{ ap_return_20 sc_out sc_lv 18 signal -1 } 
	{ ap_return_21 sc_out sc_lv 18 signal -1 } 
	{ ap_return_22 sc_out sc_lv 18 signal -1 } 
	{ ap_return_23 sc_out sc_lv 18 signal -1 } 
	{ ap_return_24 sc_out sc_lv 18 signal -1 } 
	{ ap_return_25 sc_out sc_lv 18 signal -1 } 
	{ ap_return_26 sc_out sc_lv 18 signal -1 } 
	{ ap_return_27 sc_out sc_lv 18 signal -1 } 
	{ ap_return_28 sc_out sc_lv 18 signal -1 } 
	{ ap_return_29 sc_out sc_lv 18 signal -1 } 
	{ ap_return_30 sc_out sc_lv 18 signal -1 } 
	{ ap_return_31 sc_out sc_lv 18 signal -1 } 
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
 	{ "name": "data_16_val17", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_16_val17", "role": "default" }} , 
 	{ "name": "data_17_val18", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_17_val18", "role": "default" }} , 
 	{ "name": "data_18_val19", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_18_val19", "role": "default" }} , 
 	{ "name": "data_19_val20", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_19_val20", "role": "default" }} , 
 	{ "name": "data_20_val21", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_20_val21", "role": "default" }} , 
 	{ "name": "data_21_val22", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_21_val22", "role": "default" }} , 
 	{ "name": "data_22_val23", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_22_val23", "role": "default" }} , 
 	{ "name": "data_23_val24", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_23_val24", "role": "default" }} , 
 	{ "name": "data_24_val25", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_24_val25", "role": "default" }} , 
 	{ "name": "data_25_val26", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_25_val26", "role": "default" }} , 
 	{ "name": "data_26_val27", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_26_val27", "role": "default" }} , 
 	{ "name": "data_27_val28", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_27_val28", "role": "default" }} , 
 	{ "name": "data_28_val29", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_28_val29", "role": "default" }} , 
 	{ "name": "data_29_val30", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_29_val30", "role": "default" }} , 
 	{ "name": "data_30_val31", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_30_val31", "role": "default" }} , 
 	{ "name": "data_31_val32", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_31_val32", "role": "default" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "ap_return_2", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "ap_return_2", "role": "default" }} , 
 	{ "name": "ap_return_3", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "ap_return_3", "role": "default" }} , 
 	{ "name": "ap_return_4", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "ap_return_4", "role": "default" }} , 
 	{ "name": "ap_return_5", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "ap_return_5", "role": "default" }} , 
 	{ "name": "ap_return_6", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "ap_return_6", "role": "default" }} , 
 	{ "name": "ap_return_7", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "ap_return_7", "role": "default" }} , 
 	{ "name": "ap_return_8", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "ap_return_8", "role": "default" }} , 
 	{ "name": "ap_return_9", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "ap_return_9", "role": "default" }} , 
 	{ "name": "ap_return_10", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "ap_return_10", "role": "default" }} , 
 	{ "name": "ap_return_11", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "ap_return_11", "role": "default" }} , 
 	{ "name": "ap_return_12", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "ap_return_12", "role": "default" }} , 
 	{ "name": "ap_return_13", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "ap_return_13", "role": "default" }} , 
 	{ "name": "ap_return_14", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "ap_return_14", "role": "default" }} , 
 	{ "name": "ap_return_15", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "ap_return_15", "role": "default" }} , 
 	{ "name": "ap_return_16", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "ap_return_16", "role": "default" }} , 
 	{ "name": "ap_return_17", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "ap_return_17", "role": "default" }} , 
 	{ "name": "ap_return_18", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "ap_return_18", "role": "default" }} , 
 	{ "name": "ap_return_19", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "ap_return_19", "role": "default" }} , 
 	{ "name": "ap_return_20", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "ap_return_20", "role": "default" }} , 
 	{ "name": "ap_return_21", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "ap_return_21", "role": "default" }} , 
 	{ "name": "ap_return_22", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "ap_return_22", "role": "default" }} , 
 	{ "name": "ap_return_23", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "ap_return_23", "role": "default" }} , 
 	{ "name": "ap_return_24", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "ap_return_24", "role": "default" }} , 
 	{ "name": "ap_return_25", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "ap_return_25", "role": "default" }} , 
 	{ "name": "ap_return_26", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "ap_return_26", "role": "default" }} , 
 	{ "name": "ap_return_27", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "ap_return_27", "role": "default" }} , 
 	{ "name": "ap_return_28", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "ap_return_28", "role": "default" }} , 
 	{ "name": "ap_return_29", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "ap_return_29", "role": "default" }} , 
 	{ "name": "ap_return_30", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "ap_return_30", "role": "default" }} , 
 	{ "name": "ap_return_31", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "ap_return_31", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
	dense_latency_wrapper_ap_fixed_ap_fixed_18_14_5_3_0_config5_s {
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
		data_15_val16 {Type I LastRead 0 FirstWrite -1}
		data_16_val17 {Type I LastRead 0 FirstWrite -1}
		data_17_val18 {Type I LastRead 0 FirstWrite -1}
		data_18_val19 {Type I LastRead 0 FirstWrite -1}
		data_19_val20 {Type I LastRead 0 FirstWrite -1}
		data_20_val21 {Type I LastRead 0 FirstWrite -1}
		data_21_val22 {Type I LastRead 0 FirstWrite -1}
		data_22_val23 {Type I LastRead 0 FirstWrite -1}
		data_23_val24 {Type I LastRead 0 FirstWrite -1}
		data_24_val25 {Type I LastRead 0 FirstWrite -1}
		data_25_val26 {Type I LastRead 0 FirstWrite -1}
		data_26_val27 {Type I LastRead 0 FirstWrite -1}
		data_27_val28 {Type I LastRead 0 FirstWrite -1}
		data_28_val29 {Type I LastRead 0 FirstWrite -1}
		data_29_val30 {Type I LastRead 0 FirstWrite -1}
		data_30_val31 {Type I LastRead 0 FirstWrite -1}
		data_31_val32 {Type I LastRead 0 FirstWrite -1}}
	dense_latency_ap_fixed_6_4_0_0_0_ap_fixed_18_14_5_3_0_config5_s {
		data_0_val {Type I LastRead 0 FirstWrite -1}
		data_1_val {Type I LastRead 0 FirstWrite -1}
		data_2_val {Type I LastRead 0 FirstWrite -1}
		data_3_val {Type I LastRead 0 FirstWrite -1}
		data_4_val {Type I LastRead 0 FirstWrite -1}
		data_5_val {Type I LastRead 0 FirstWrite -1}
		data_6_val {Type I LastRead 0 FirstWrite -1}
		data_7_val {Type I LastRead 0 FirstWrite -1}
		data_8_val {Type I LastRead 0 FirstWrite -1}
		data_9_val {Type I LastRead 0 FirstWrite -1}
		data_10_val {Type I LastRead 0 FirstWrite -1}
		data_11_val {Type I LastRead 0 FirstWrite -1}
		data_12_val {Type I LastRead 0 FirstWrite -1}
		data_13_val {Type I LastRead 0 FirstWrite -1}
		data_14_val {Type I LastRead 0 FirstWrite -1}
		data_15_val {Type I LastRead 0 FirstWrite -1}
		data_16_val {Type I LastRead 0 FirstWrite -1}
		data_17_val {Type I LastRead 0 FirstWrite -1}
		data_18_val {Type I LastRead 0 FirstWrite -1}
		data_19_val {Type I LastRead 0 FirstWrite -1}
		data_20_val {Type I LastRead 0 FirstWrite -1}
		data_21_val {Type I LastRead 0 FirstWrite -1}
		data_22_val {Type I LastRead 0 FirstWrite -1}
		data_23_val {Type I LastRead 0 FirstWrite -1}
		data_24_val {Type I LastRead 1 FirstWrite -1}
		data_25_val {Type I LastRead 1 FirstWrite -1}
		data_26_val {Type I LastRead 1 FirstWrite -1}
		data_27_val {Type I LastRead 1 FirstWrite -1}
		data_28_val {Type I LastRead 1 FirstWrite -1}
		data_29_val {Type I LastRead 1 FirstWrite -1}
		data_30_val {Type I LastRead 1 FirstWrite -1}
		data_31_val {Type I LastRead 1 FirstWrite -1}}}

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
	data_16_val17 { ap_none {  { data_16_val17 in_data 0 6 } } }
	data_17_val18 { ap_none {  { data_17_val18 in_data 0 6 } } }
	data_18_val19 { ap_none {  { data_18_val19 in_data 0 6 } } }
	data_19_val20 { ap_none {  { data_19_val20 in_data 0 6 } } }
	data_20_val21 { ap_none {  { data_20_val21 in_data 0 6 } } }
	data_21_val22 { ap_none {  { data_21_val22 in_data 0 6 } } }
	data_22_val23 { ap_none {  { data_22_val23 in_data 0 6 } } }
	data_23_val24 { ap_none {  { data_23_val24 in_data 0 6 } } }
	data_24_val25 { ap_none {  { data_24_val25 in_data 0 6 } } }
	data_25_val26 { ap_none {  { data_25_val26 in_data 0 6 } } }
	data_26_val27 { ap_none {  { data_26_val27 in_data 0 6 } } }
	data_27_val28 { ap_none {  { data_27_val28 in_data 0 6 } } }
	data_28_val29 { ap_none {  { data_28_val29 in_data 0 6 } } }
	data_29_val30 { ap_none {  { data_29_val30 in_data 0 6 } } }
	data_30_val31 { ap_none {  { data_30_val31 in_data 0 6 } } }
	data_31_val32 { ap_none {  { data_31_val32 in_data 0 6 } } }
}

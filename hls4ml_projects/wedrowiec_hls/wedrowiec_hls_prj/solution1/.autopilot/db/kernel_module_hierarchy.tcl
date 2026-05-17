set ModuleHierarchy {[{
"Name" : "wedrowiec_hls", "RefName" : "wedrowiec_hls","ID" : "0","Type" : "dataflow",
"SubInsts" : [
	{"Name" : "dense_array_ap_int_8_8u_array_ap_fixed_21_19_5_3_0_32u_config3_U0", "RefName" : "dense_array_ap_int_8_8u_array_ap_fixed_21_19_5_3_0_32u_config3_s","ID" : "1","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_dense_array_array_ap_fixed_32u_config3_Pipeline_DataPrepare_fu_295", "RefName" : "dense_array_array_ap_fixed_32u_config3_Pipeline_DataPrepare","ID" : "2","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "DataPrepare","RefName" : "DataPrepare","ID" : "3","Type" : "pipeline"},]},
		{"Name" : "grp_dense_latency_wrapper_ap_int_8_ap_fixed_21_19_5_3_0_config3_s_fu_365", "RefName" : "dense_latency_wrapper_ap_int_8_ap_fixed_21_19_5_3_0_config3_s","ID" : "4","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_dense_latency_ap_int_8_ap_fixed_21_19_5_3_0_config3_s_fu_524", "RefName" : "dense_latency_ap_int_8_ap_fixed_21_19_5_3_0_config3_s","ID" : "5","Type" : "sequential"},]},]},
	{"Name" : "relu_array_ap_fixed_32u_array_ap_fixed_6_4_0_0_0_32u_relu_config4_U0", "RefName" : "relu_array_ap_fixed_32u_array_ap_fixed_6_4_0_0_0_32u_relu_config4_s","ID" : "6","Type" : "sequential"},
	{"Name" : "dense_array_ap_fixed_32u_array_ap_fixed_18_14_5_3_0_32u_config5_U0", "RefName" : "dense_array_ap_fixed_32u_array_ap_fixed_18_14_5_3_0_32u_config5_s","ID" : "7","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_dense_latency_wrapper_ap_fixed_ap_fixed_18_14_5_3_0_config5_s_fu_161", "RefName" : "dense_latency_wrapper_ap_fixed_ap_fixed_18_14_5_3_0_config5_s","ID" : "8","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_dense_latency_ap_fixed_6_4_0_0_0_ap_fixed_18_14_5_3_0_config5_s_fu_268", "RefName" : "dense_latency_ap_fixed_6_4_0_0_0_ap_fixed_18_14_5_3_0_config5_s","ID" : "9","Type" : "sequential"},]},]},
	{"Name" : "relu_array_ap_fixed_32u_array_ap_fixed_6_4_0_0_0_32u_relu_config6_U0", "RefName" : "relu_array_ap_fixed_32u_array_ap_fixed_6_4_0_0_0_32u_relu_config6_s","ID" : "10","Type" : "sequential"},
	{"Name" : "dense_array_ap_fixed_32u_array_ap_fixed_18_14_5_3_0_16u_config7_U0", "RefName" : "dense_array_ap_fixed_32u_array_ap_fixed_18_14_5_3_0_16u_config7_s","ID" : "11","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_dense_latency_wrapper_ap_fixed_ap_fixed_18_14_5_3_0_config7_s_fu_161", "RefName" : "dense_latency_wrapper_ap_fixed_ap_fixed_18_14_5_3_0_config7_s","ID" : "12","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_dense_latency_ap_fixed_6_4_0_0_0_ap_fixed_18_14_5_3_0_config7_s_fu_268", "RefName" : "dense_latency_ap_fixed_6_4_0_0_0_ap_fixed_18_14_5_3_0_config7_s","ID" : "13","Type" : "sequential"},]},]},
	{"Name" : "relu_array_ap_fixed_16u_array_ap_fixed_6_4_0_0_0_16u_relu_config8_U0", "RefName" : "relu_array_ap_fixed_16u_array_ap_fixed_6_4_0_0_0_16u_relu_config8_s","ID" : "14","Type" : "sequential"},
	{"Name" : "dense_array_ap_fixed_16u_array_ap_fixed_17_13_5_3_0_4u_config9_U0", "RefName" : "dense_array_ap_fixed_16u_array_ap_fixed_17_13_5_3_0_4u_config9_s","ID" : "15","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_dense_latency_wrapper_ap_fixed_ap_fixed_17_13_5_3_0_config9_s_fu_105", "RefName" : "dense_latency_wrapper_ap_fixed_ap_fixed_17_13_5_3_0_config9_s","ID" : "16","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_dense_latency_ap_fixed_6_4_0_0_0_ap_fixed_17_13_5_3_0_config9_s_fu_140", "RefName" : "dense_latency_ap_fixed_6_4_0_0_0_ap_fixed_17_13_5_3_0_config9_s","ID" : "17","Type" : "sequential"},]},]},]
}]}
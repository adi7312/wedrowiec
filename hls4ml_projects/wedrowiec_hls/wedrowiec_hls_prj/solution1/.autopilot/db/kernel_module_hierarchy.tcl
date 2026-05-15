set ModuleHierarchy {[{
"Name" : "wedrowiec_hls_axi","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_wedrowiec_hls_axi_Pipeline_VITIS_LOOP_16_1_fu_158","ID" : "1","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_16_1","ID" : "2","Type" : "pipeline"},]},
	{"Name" : "grp_wedrowiec_hls_fu_168","ID" : "3","Type" : "dataflow",
		"SubInsts" : [
		{"Name" : "dense_array_ap_ufixed_8u_array_ap_fixed_25_12_5_3_0_32u_config3_U0","ID" : "4","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_dense_array_array_ap_fixed_25_12_5_3_0_32u_config3_Pipeline_DataPrepare_fu_293","ID" : "5","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "DataPrepare","ID" : "6","Type" : "pipeline"},]},
			{"Name" : "grp_dense_resource_rf_gt_nin_rem0_ap_ufixed_ap_fixed_25_12_5_3_0_config3_s_fu_363","ID" : "7","Type" : "pipeline",
				"SubLoops" : [
				{"Name" : "ReuseLoop","ID" : "8","Type" : "pipeline"},]},]},
		{"Name" : "relu_array_ap_fixed_32u_array_ap_fixed_10_4_0_0_0_32u_relu_config4_U0","ID" : "9","Type" : "sequential"},
		{"Name" : "dense_array_ap_fixed_32u_array_ap_fixed_26_14_5_3_0_32u_config5_U0","ID" : "10","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_26_14_5_3_0_config5_s_fu_165","ID" : "11","Type" : "pipeline",
				"SubLoops" : [
				{"Name" : "ReuseLoop","ID" : "12","Type" : "pipeline"},]},]},
		{"Name" : "relu_array_ap_fixed_32u_array_ap_fixed_10_4_0_0_0_32u_relu_config6_U0","ID" : "13","Type" : "sequential"},
		{"Name" : "dense_array_ap_fixed_32u_array_ap_fixed_26_14_5_3_0_16u_config7_U0","ID" : "14","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_26_14_5_3_0_config7_s_fu_165","ID" : "15","Type" : "pipeline",
				"SubLoops" : [
				{"Name" : "ReuseLoop","ID" : "16","Type" : "pipeline"},]},]},
		{"Name" : "relu_array_ap_fixed_16u_array_ap_fixed_10_4_0_0_0_16u_relu_config8_U0","ID" : "17","Type" : "sequential"},
		{"Name" : "dense_array_ap_fixed_16u_array_ap_fixed_25_13_5_3_0_4u_config9_U0","ID" : "18","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_25_13_5_3_0_config9_s_fu_101","ID" : "19","Type" : "pipeline",
				"SubLoops" : [
				{"Name" : "ReuseLoop","ID" : "20","Type" : "pipeline"},]},]},]},
	{"Name" : "grp_wedrowiec_hls_axi_Pipeline_VITIS_LOOP_31_4_fu_190","ID" : "21","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_31_4","ID" : "22","Type" : "pipeline"},]},]
}]}
set SynModuleInfo {
  {SRCNAME wedrowiec_hls_axi_Pipeline_VITIS_LOOP_16_1 MODELNAME wedrowiec_hls_axi_Pipeline_VITIS_LOOP_16_1 RTLNAME wedrowiec_hls_axi_wedrowiec_hls_axi_Pipeline_VITIS_LOOP_16_1
    SUBMODULES {
      {MODELNAME wedrowiec_hls_axi_fpext_32ns_64_2_no_dsp_1 RTLNAME wedrowiec_hls_axi_fpext_32ns_64_2_no_dsp_1 BINDTYPE op TYPE fpext IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME wedrowiec_hls_axi_bitselect_1ns_54ns_32ns_1_1_1 RTLNAME wedrowiec_hls_axi_bitselect_1ns_54ns_32ns_1_1_1 BINDTYPE op TYPE bitselect IMPL auto}
      {MODELNAME wedrowiec_hls_axi_bitselect_1ns_54ns_32s_1_1_1 RTLNAME wedrowiec_hls_axi_bitselect_1ns_54ns_32s_1_1_1 BINDTYPE op TYPE bitselect IMPL auto}
      {MODELNAME wedrowiec_hls_axi_sparsemux_7_2_8_1_1 RTLNAME wedrowiec_hls_axi_sparsemux_7_2_8_1_1 BINDTYPE op TYPE sparsemux IMPL onehotencoding_realdef}
      {MODELNAME wedrowiec_hls_axi_sparsemux_7_2_1_1_1 RTLNAME wedrowiec_hls_axi_sparsemux_7_2_1_1_1 BINDTYPE op TYPE sparsemux IMPL onehotencoding_realdef}
      {MODELNAME wedrowiec_hls_axi_flow_control_loop_pipe_sequential_init RTLNAME wedrowiec_hls_axi_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME wedrowiec_hls_axi_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME dense<array,array<ap_fixed<25,12,5,3,0>,32u>,config3>_Pipeline_DataPrepare MODELNAME dense_array_array_ap_fixed_25_12_5_3_0_32u_config3_Pipeline_DataPrepare RTLNAME wedrowiec_hls_axi_dense_array_array_ap_fixed_25_12_5_3_0_32u_config3_Pipeline_DataPrepare}
  {SRCNAME dense_resource_rf_gt_nin_rem0<ap_ufixed,ap_fixed<25,12,5,3,0>,config3> MODELNAME dense_resource_rf_gt_nin_rem0_ap_ufixed_ap_fixed_25_12_5_3_0_config3_s RTLNAME wedrowiec_hls_axi_dense_resource_rf_gt_nin_rem0_ap_ufixed_ap_fixed_25_12_5_3_0_config3_s
    SUBMODULES {
      {MODELNAME wedrowiec_hls_axi_sparsemux_129_6_8_1_1 RTLNAME wedrowiec_hls_axi_sparsemux_129_6_8_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
      {MODELNAME wedrowiec_hls_axi_sparsemux_65_5_25_1_1 RTLNAME wedrowiec_hls_axi_sparsemux_65_5_25_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
      {MODELNAME wedrowiec_hls_axi_mac_muladd_8ns_7s_25s_26_1_1 RTLNAME wedrowiec_hls_axi_mac_muladd_8ns_7s_25s_26_1_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 0}
      {MODELNAME wedrowiec_hls_axi_dense_resource_rf_gt_nin_rem0_ap_ufixed_ap_fixed_25_12_5_3_0_config3_s_outidxbkb RTLNAME wedrowiec_hls_axi_dense_resource_rf_gt_nin_rem0_ap_ufixed_ap_fixed_25_12_5_3_0_config3_s_outidxbkb BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME wedrowiec_hls_axi_dense_resource_rf_gt_nin_rem0_ap_ufixed_ap_fixed_25_12_5_3_0_config3_s_w3_ROMcud RTLNAME wedrowiec_hls_axi_dense_resource_rf_gt_nin_rem0_ap_ufixed_ap_fixed_25_12_5_3_0_config3_s_w3_ROMcud BINDTYPE storage TYPE rom_np IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME dense<array<ap_ufixed,8u>,array<ap_fixed<25,12,5,3,0>,32u>,config3> MODELNAME dense_array_ap_ufixed_8u_array_ap_fixed_25_12_5_3_0_32u_config3_s RTLNAME wedrowiec_hls_axi_dense_array_ap_ufixed_8u_array_ap_fixed_25_12_5_3_0_32u_config3_s}
  {SRCNAME relu<array<ap_fixed,32u>,array<ap_fixed<10,4,0,0,0>,32u>,relu_config4> MODELNAME relu_array_ap_fixed_32u_array_ap_fixed_10_4_0_0_0_32u_relu_config4_s RTLNAME wedrowiec_hls_axi_relu_array_ap_fixed_32u_array_ap_fixed_10_4_0_0_0_32u_relu_config4_s}
  {SRCNAME dense_resource_rf_gt_nin_rem0<ap_fixed,ap_fixed<26,14,5,3,0>,config5> MODELNAME dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_26_14_5_3_0_config5_s RTLNAME wedrowiec_hls_axi_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_26_14_5_3_0_config5_s
    SUBMODULES {
      {MODELNAME wedrowiec_hls_axi_sparsemux_65_5_10_1_1 RTLNAME wedrowiec_hls_axi_sparsemux_65_5_10_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
      {MODELNAME wedrowiec_hls_axi_sparsemux_65_5_26_1_1 RTLNAME wedrowiec_hls_axi_sparsemux_65_5_26_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
      {MODELNAME wedrowiec_hls_axi_mac_muladd_10s_7s_26s_27_1_1 RTLNAME wedrowiec_hls_axi_mac_muladd_10s_7s_26s_27_1_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 0}
      {MODELNAME wedrowiec_hls_axi_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_26_14_5_3_0_config5_s_outidx_dEe RTLNAME wedrowiec_hls_axi_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_26_14_5_3_0_config5_s_outidx_dEe BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME wedrowiec_hls_axi_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_26_14_5_3_0_config5_s_w5_ROM_eOg RTLNAME wedrowiec_hls_axi_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_26_14_5_3_0_config5_s_w5_ROM_eOg BINDTYPE storage TYPE rom_np IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME dense<array<ap_fixed,32u>,array<ap_fixed<26,14,5,3,0>,32u>,config5> MODELNAME dense_array_ap_fixed_32u_array_ap_fixed_26_14_5_3_0_32u_config5_s RTLNAME wedrowiec_hls_axi_dense_array_ap_fixed_32u_array_ap_fixed_26_14_5_3_0_32u_config5_s}
  {SRCNAME relu<array<ap_fixed,32u>,array<ap_fixed<10,4,0,0,0>,32u>,relu_config6> MODELNAME relu_array_ap_fixed_32u_array_ap_fixed_10_4_0_0_0_32u_relu_config6_s RTLNAME wedrowiec_hls_axi_relu_array_ap_fixed_32u_array_ap_fixed_10_4_0_0_0_32u_relu_config6_s}
  {SRCNAME dense_resource_rf_gt_nin_rem0<ap_fixed,ap_fixed<26,14,5,3,0>,config7> MODELNAME dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_26_14_5_3_0_config7_s RTLNAME wedrowiec_hls_axi_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_26_14_5_3_0_config7_s
    SUBMODULES {
      {MODELNAME wedrowiec_hls_axi_sparsemux_33_4_26_1_1 RTLNAME wedrowiec_hls_axi_sparsemux_33_4_26_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
      {MODELNAME wedrowiec_hls_axi_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_26_14_5_3_0_config7_s_outidx_fYi RTLNAME wedrowiec_hls_axi_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_26_14_5_3_0_config7_s_outidx_fYi BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME wedrowiec_hls_axi_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_26_14_5_3_0_config7_s_w7_ROM_g8j RTLNAME wedrowiec_hls_axi_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_26_14_5_3_0_config7_s_w7_ROM_g8j BINDTYPE storage TYPE rom_np IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME dense<array<ap_fixed,32u>,array<ap_fixed<26,14,5,3,0>,16u>,config7> MODELNAME dense_array_ap_fixed_32u_array_ap_fixed_26_14_5_3_0_16u_config7_s RTLNAME wedrowiec_hls_axi_dense_array_ap_fixed_32u_array_ap_fixed_26_14_5_3_0_16u_config7_s}
  {SRCNAME relu<array<ap_fixed,16u>,array<ap_fixed<10,4,0,0,0>,16u>,relu_config8> MODELNAME relu_array_ap_fixed_16u_array_ap_fixed_10_4_0_0_0_16u_relu_config8_s RTLNAME wedrowiec_hls_axi_relu_array_ap_fixed_16u_array_ap_fixed_10_4_0_0_0_16u_relu_config8_s}
  {SRCNAME dense_resource_rf_gt_nin_rem0<ap_fixed,ap_fixed<25,13,5,3,0>,config9> MODELNAME dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_25_13_5_3_0_config9_s RTLNAME wedrowiec_hls_axi_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_25_13_5_3_0_config9_s
    SUBMODULES {
      {MODELNAME wedrowiec_hls_axi_sparsemux_33_4_10_1_1 RTLNAME wedrowiec_hls_axi_sparsemux_33_4_10_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
      {MODELNAME wedrowiec_hls_axi_sparsemux_9_2_25_1_1 RTLNAME wedrowiec_hls_axi_sparsemux_9_2_25_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
      {MODELNAME wedrowiec_hls_axi_mac_muladd_10s_7s_25s_26_1_1 RTLNAME wedrowiec_hls_axi_mac_muladd_10s_7s_25s_26_1_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 0}
      {MODELNAME wedrowiec_hls_axi_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_25_13_5_3_0_config9_s_outidx_hbi RTLNAME wedrowiec_hls_axi_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_25_13_5_3_0_config9_s_outidx_hbi BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME wedrowiec_hls_axi_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_25_13_5_3_0_config9_s_w9_ROM_ibs RTLNAME wedrowiec_hls_axi_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_25_13_5_3_0_config9_s_w9_ROM_ibs BINDTYPE storage TYPE rom_np IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME dense<array<ap_fixed,16u>,array<ap_fixed<25,13,5,3,0>,4u>,config9> MODELNAME dense_array_ap_fixed_16u_array_ap_fixed_25_13_5_3_0_4u_config9_s RTLNAME wedrowiec_hls_axi_dense_array_ap_fixed_16u_array_ap_fixed_25_13_5_3_0_4u_config9_s}
  {SRCNAME wedrowiec_hls MODELNAME wedrowiec_hls RTLNAME wedrowiec_hls_axi_wedrowiec_hls
    SUBMODULES {
      {MODELNAME wedrowiec_hls_axi_fifo_w800_d1_S RTLNAME wedrowiec_hls_axi_fifo_w800_d1_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_U}
      {MODELNAME wedrowiec_hls_axi_fifo_w320_d1_S RTLNAME wedrowiec_hls_axi_fifo_w320_d1_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer4_out_U}
      {MODELNAME wedrowiec_hls_axi_fifo_w832_d1_S RTLNAME wedrowiec_hls_axi_fifo_w832_d1_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer5_out_U}
      {MODELNAME wedrowiec_hls_axi_fifo_w320_d1_S RTLNAME wedrowiec_hls_axi_fifo_w320_d1_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer6_out_U}
      {MODELNAME wedrowiec_hls_axi_fifo_w416_d1_S RTLNAME wedrowiec_hls_axi_fifo_w416_d1_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer7_out_U}
      {MODELNAME wedrowiec_hls_axi_fifo_w160_d1_S RTLNAME wedrowiec_hls_axi_fifo_w160_d1_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer8_out_U}
      {MODELNAME wedrowiec_hls_axi_start_for_relu_array_ap_fixed_32u_array_ap_fixed_10_4_0_0_0_32u_relu_config4_U0 RTLNAME wedrowiec_hls_axi_start_for_relu_array_ap_fixed_32u_array_ap_fixed_10_4_0_0_0_32u_relu_config4_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_relu_array_ap_fixed_32u_array_ap_fixed_10_4_0_0_0_32u_relu_config4_U0_U}
      {MODELNAME wedrowiec_hls_axi_start_for_dense_array_ap_fixed_32u_array_ap_fixed_26_14_5_3_0_32u_config5_U0 RTLNAME wedrowiec_hls_axi_start_for_dense_array_ap_fixed_32u_array_ap_fixed_26_14_5_3_0_32u_config5_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_dense_array_ap_fixed_32u_array_ap_fixed_26_14_5_3_0_32u_config5_U0_U}
      {MODELNAME wedrowiec_hls_axi_start_for_relu_array_ap_fixed_32u_array_ap_fixed_10_4_0_0_0_32u_relu_config6_U0 RTLNAME wedrowiec_hls_axi_start_for_relu_array_ap_fixed_32u_array_ap_fixed_10_4_0_0_0_32u_relu_config6_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_relu_array_ap_fixed_32u_array_ap_fixed_10_4_0_0_0_32u_relu_config6_U0_U}
      {MODELNAME wedrowiec_hls_axi_start_for_dense_array_ap_fixed_32u_array_ap_fixed_26_14_5_3_0_16u_config7_U0 RTLNAME wedrowiec_hls_axi_start_for_dense_array_ap_fixed_32u_array_ap_fixed_26_14_5_3_0_16u_config7_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_dense_array_ap_fixed_32u_array_ap_fixed_26_14_5_3_0_16u_config7_U0_U}
      {MODELNAME wedrowiec_hls_axi_start_for_relu_array_ap_fixed_16u_array_ap_fixed_10_4_0_0_0_16u_relu_config8_U0 RTLNAME wedrowiec_hls_axi_start_for_relu_array_ap_fixed_16u_array_ap_fixed_10_4_0_0_0_16u_relu_config8_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_relu_array_ap_fixed_16u_array_ap_fixed_10_4_0_0_0_16u_relu_config8_U0_U}
      {MODELNAME wedrowiec_hls_axi_start_for_dense_array_ap_fixed_16u_array_ap_fixed_25_13_5_3_0_4u_config9_U0 RTLNAME wedrowiec_hls_axi_start_for_dense_array_ap_fixed_16u_array_ap_fixed_25_13_5_3_0_4u_config9_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_dense_array_ap_fixed_16u_array_ap_fixed_25_13_5_3_0_4u_config9_U0_U}
    }
  }
  {SRCNAME wedrowiec_hls_axi_Pipeline_VITIS_LOOP_31_4 MODELNAME wedrowiec_hls_axi_Pipeline_VITIS_LOOP_31_4 RTLNAME wedrowiec_hls_axi_wedrowiec_hls_axi_Pipeline_VITIS_LOOP_31_4
    SUBMODULES {
      {MODELNAME wedrowiec_hls_axi_ctlz_25_25_1_1 RTLNAME wedrowiec_hls_axi_ctlz_25_25_1_1 BINDTYPE op TYPE ctlz IMPL auto}
      {MODELNAME wedrowiec_hls_axi_bitselect_1ns_25ns_32s_1_1_1 RTLNAME wedrowiec_hls_axi_bitselect_1ns_25ns_32s_1_1_1 BINDTYPE op TYPE bitselect IMPL auto}
    }
  }
  {SRCNAME wedrowiec_hls_axi MODELNAME wedrowiec_hls_axi RTLNAME wedrowiec_hls_axi IS_TOP 1
    SUBMODULES {
      {MODELNAME wedrowiec_hls_axi_ctype_RAM_AUTO_1R1W RTLNAME wedrowiec_hls_axi_ctype_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME wedrowiec_hls_axi_fifo_w64_d8_S RTLNAME wedrowiec_hls_axi_fifo_w64_d8_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME in_local_U}
      {MODELNAME wedrowiec_hls_axi_fifo_w100_d1_S RTLNAME wedrowiec_hls_axi_fifo_w100_d1_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME out_local_U}
      {MODELNAME wedrowiec_hls_axi_regslice_both RTLNAME wedrowiec_hls_axi_regslice_both BINDTYPE interface TYPE adapter IMPL reg_slice}
    }
  }
}

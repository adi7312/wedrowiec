set SynModuleInfo {
  {SRCNAME dense<array,array<ap_fixed,32u>,config3>_Pipeline_DataPrepare MODELNAME dense_array_array_ap_fixed_32u_config3_Pipeline_DataPrepare RTLNAME wedrowiec_hls_dense_array_array_ap_fixed_32u_config3_Pipeline_DataPrepare
    SUBMODULES {
      {MODELNAME wedrowiec_hls_flow_control_loop_pipe_sequential_init RTLNAME wedrowiec_hls_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME wedrowiec_hls_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME {dense_latency<ap_int<8>, ap_fixed<21, 19, 5, 3, 0>, config3>} MODELNAME dense_latency_ap_int_8_ap_fixed_21_19_5_3_0_config3_s RTLNAME wedrowiec_hls_dense_latency_ap_int_8_ap_fixed_21_19_5_3_0_config3_s}
  {SRCNAME {dense_latency_wrapper<ap_int<8>, ap_fixed<21, 19, 5, 3, 0>, config3>} MODELNAME dense_latency_wrapper_ap_int_8_ap_fixed_21_19_5_3_0_config3_s RTLNAME wedrowiec_hls_dense_latency_wrapper_ap_int_8_ap_fixed_21_19_5_3_0_config3_s}
  {SRCNAME {dense<array<ap_int<8>, 8u>, array<ap_fixed<21, 19, 5, 3, 0>, 32u>, config3>} MODELNAME dense_array_ap_int_8_8u_array_ap_fixed_21_19_5_3_0_32u_config3_s RTLNAME wedrowiec_hls_dense_array_ap_int_8_8u_array_ap_fixed_21_19_5_3_0_32u_config3_s
    SUBMODULES {
      {MODELNAME wedrowiec_hls_regslice_both RTLNAME wedrowiec_hls_regslice_both BINDTYPE interface TYPE adapter IMPL reg_slice}
    }
  }
  {SRCNAME relu<array<ap_fixed,32u>,array<ap_fixed<6,4,0,0,0>,32u>,relu_config4> MODELNAME relu_array_ap_fixed_32u_array_ap_fixed_6_4_0_0_0_32u_relu_config4_s RTLNAME wedrowiec_hls_relu_array_ap_fixed_32u_array_ap_fixed_6_4_0_0_0_32u_relu_config4_s}
  {SRCNAME {dense_latency<ap_fixed<6, 4, 0, 0, 0>, ap_fixed<18, 14, 5, 3, 0>, config5>} MODELNAME dense_latency_ap_fixed_6_4_0_0_0_ap_fixed_18_14_5_3_0_config5_s RTLNAME wedrowiec_hls_dense_latency_ap_fixed_6_4_0_0_0_ap_fixed_18_14_5_3_0_config5_s}
  {SRCNAME dense_latency_wrapper<ap_fixed,ap_fixed<18,14,5,3,0>,config5> MODELNAME dense_latency_wrapper_ap_fixed_ap_fixed_18_14_5_3_0_config5_s RTLNAME wedrowiec_hls_dense_latency_wrapper_ap_fixed_ap_fixed_18_14_5_3_0_config5_s}
  {SRCNAME dense<array<ap_fixed,32u>,array<ap_fixed<18,14,5,3,0>,32u>,config5> MODELNAME dense_array_ap_fixed_32u_array_ap_fixed_18_14_5_3_0_32u_config5_s RTLNAME wedrowiec_hls_dense_array_ap_fixed_32u_array_ap_fixed_18_14_5_3_0_32u_config5_s}
  {SRCNAME relu<array<ap_fixed,32u>,array<ap_fixed<6,4,0,0,0>,32u>,relu_config6> MODELNAME relu_array_ap_fixed_32u_array_ap_fixed_6_4_0_0_0_32u_relu_config6_s RTLNAME wedrowiec_hls_relu_array_ap_fixed_32u_array_ap_fixed_6_4_0_0_0_32u_relu_config6_s}
  {SRCNAME {dense_latency<ap_fixed<6, 4, 0, 0, 0>, ap_fixed<18, 14, 5, 3, 0>, config7>} MODELNAME dense_latency_ap_fixed_6_4_0_0_0_ap_fixed_18_14_5_3_0_config7_s RTLNAME wedrowiec_hls_dense_latency_ap_fixed_6_4_0_0_0_ap_fixed_18_14_5_3_0_config7_s}
  {SRCNAME dense_latency_wrapper<ap_fixed,ap_fixed<18,14,5,3,0>,config7> MODELNAME dense_latency_wrapper_ap_fixed_ap_fixed_18_14_5_3_0_config7_s RTLNAME wedrowiec_hls_dense_latency_wrapper_ap_fixed_ap_fixed_18_14_5_3_0_config7_s}
  {SRCNAME dense<array<ap_fixed,32u>,array<ap_fixed<18,14,5,3,0>,16u>,config7> MODELNAME dense_array_ap_fixed_32u_array_ap_fixed_18_14_5_3_0_16u_config7_s RTLNAME wedrowiec_hls_dense_array_ap_fixed_32u_array_ap_fixed_18_14_5_3_0_16u_config7_s}
  {SRCNAME relu<array<ap_fixed,16u>,array<ap_fixed<6,4,0,0,0>,16u>,relu_config8> MODELNAME relu_array_ap_fixed_16u_array_ap_fixed_6_4_0_0_0_16u_relu_config8_s RTLNAME wedrowiec_hls_relu_array_ap_fixed_16u_array_ap_fixed_6_4_0_0_0_16u_relu_config8_s}
  {SRCNAME {dense_latency<ap_fixed<6, 4, 0, 0, 0>, ap_fixed<17, 13, 5, 3, 0>, config9>} MODELNAME dense_latency_ap_fixed_6_4_0_0_0_ap_fixed_17_13_5_3_0_config9_s RTLNAME wedrowiec_hls_dense_latency_ap_fixed_6_4_0_0_0_ap_fixed_17_13_5_3_0_config9_s}
  {SRCNAME dense_latency_wrapper<ap_fixed,ap_fixed<17,13,5,3,0>,config9> MODELNAME dense_latency_wrapper_ap_fixed_ap_fixed_17_13_5_3_0_config9_s RTLNAME wedrowiec_hls_dense_latency_wrapper_ap_fixed_ap_fixed_17_13_5_3_0_config9_s}
  {SRCNAME dense<array<ap_fixed,16u>,array<ap_fixed<17,13,5,3,0>,4u>,config9> MODELNAME dense_array_ap_fixed_16u_array_ap_fixed_17_13_5_3_0_4u_config9_s RTLNAME wedrowiec_hls_dense_array_ap_fixed_16u_array_ap_fixed_17_13_5_3_0_4u_config9_s}
  {SRCNAME wedrowiec_hls MODELNAME wedrowiec_hls RTLNAME wedrowiec_hls IS_TOP 1
    SUBMODULES {
      {MODELNAME wedrowiec_hls_fifo_w672_d1_S RTLNAME wedrowiec_hls_fifo_w672_d1_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_U}
      {MODELNAME wedrowiec_hls_fifo_w192_d1_S RTLNAME wedrowiec_hls_fifo_w192_d1_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer4_out_U}
      {MODELNAME wedrowiec_hls_fifo_w576_d1_S RTLNAME wedrowiec_hls_fifo_w576_d1_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer5_out_U}
      {MODELNAME wedrowiec_hls_fifo_w192_d1_S RTLNAME wedrowiec_hls_fifo_w192_d1_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer6_out_U}
      {MODELNAME wedrowiec_hls_fifo_w288_d1_S RTLNAME wedrowiec_hls_fifo_w288_d1_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer7_out_U}
      {MODELNAME wedrowiec_hls_fifo_w96_d1_S RTLNAME wedrowiec_hls_fifo_w96_d1_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer8_out_U}
      {MODELNAME wedrowiec_hls_start_for_relu_array_ap_fixed_32u_array_ap_fixed_6_4_0_0_0_32u_relu_config4_U0 RTLNAME wedrowiec_hls_start_for_relu_array_ap_fixed_32u_array_ap_fixed_6_4_0_0_0_32u_relu_config4_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_relu_array_ap_fixed_32u_array_ap_fixed_6_4_0_0_0_32u_relu_config4_U0_U}
      {MODELNAME wedrowiec_hls_start_for_dense_array_ap_fixed_32u_array_ap_fixed_18_14_5_3_0_32u_config5_U0 RTLNAME wedrowiec_hls_start_for_dense_array_ap_fixed_32u_array_ap_fixed_18_14_5_3_0_32u_config5_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_dense_array_ap_fixed_32u_array_ap_fixed_18_14_5_3_0_32u_config5_U0_U}
      {MODELNAME wedrowiec_hls_start_for_relu_array_ap_fixed_32u_array_ap_fixed_6_4_0_0_0_32u_relu_config6_U0 RTLNAME wedrowiec_hls_start_for_relu_array_ap_fixed_32u_array_ap_fixed_6_4_0_0_0_32u_relu_config6_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_relu_array_ap_fixed_32u_array_ap_fixed_6_4_0_0_0_32u_relu_config6_U0_U}
      {MODELNAME wedrowiec_hls_start_for_dense_array_ap_fixed_32u_array_ap_fixed_18_14_5_3_0_16u_config7_U0 RTLNAME wedrowiec_hls_start_for_dense_array_ap_fixed_32u_array_ap_fixed_18_14_5_3_0_16u_config7_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_dense_array_ap_fixed_32u_array_ap_fixed_18_14_5_3_0_16u_config7_U0_U}
      {MODELNAME wedrowiec_hls_start_for_relu_array_ap_fixed_16u_array_ap_fixed_6_4_0_0_0_16u_relu_config8_U0 RTLNAME wedrowiec_hls_start_for_relu_array_ap_fixed_16u_array_ap_fixed_6_4_0_0_0_16u_relu_config8_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_relu_array_ap_fixed_16u_array_ap_fixed_6_4_0_0_0_16u_relu_config8_U0_U}
      {MODELNAME wedrowiec_hls_start_for_dense_array_ap_fixed_16u_array_ap_fixed_17_13_5_3_0_4u_config9_U0 RTLNAME wedrowiec_hls_start_for_dense_array_ap_fixed_16u_array_ap_fixed_17_13_5_3_0_4u_config9_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_dense_array_ap_fixed_16u_array_ap_fixed_17_13_5_3_0_4u_config9_U0_U}
    }
  }
}

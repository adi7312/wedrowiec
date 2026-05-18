
wire kernel_monitor_reset;
wire kernel_monitor_clock;
wire kernel_monitor_report;
assign kernel_monitor_reset = ~ap_rst_n;
assign kernel_monitor_clock = ap_clk;
assign kernel_monitor_report = 1'b0;
wire [1:0] axis_block_sigs;
wire [10:0] inst_idle_sigs;
wire [6:0] inst_block_sigs;
wire kernel_block;

assign axis_block_sigs[0] = ~dense_array_ap_int_8_8u_array_ap_fixed_21_19_5_3_0_32u_config3_U0.grp_dense_array_array_ap_fixed_32u_config3_Pipeline_DataPrepare_fu_295.input_layer_TDATA_blk_n;
assign axis_block_sigs[1] = ~dense_array_ap_fixed_16u_array_ap_fixed_17_13_5_3_0_4u_config9_U0.layer9_out_TDATA_blk_n;

assign inst_idle_sigs[0] = dense_array_ap_int_8_8u_array_ap_fixed_21_19_5_3_0_32u_config3_U0.ap_idle;
assign inst_block_sigs[0] = (dense_array_ap_int_8_8u_array_ap_fixed_21_19_5_3_0_32u_config3_U0.ap_done & ~dense_array_ap_int_8_8u_array_ap_fixed_21_19_5_3_0_32u_config3_U0.ap_continue) | ~dense_array_ap_int_8_8u_array_ap_fixed_21_19_5_3_0_32u_config3_U0.layer3_out_blk_n;
assign inst_idle_sigs[1] = relu_array_ap_fixed_32u_array_ap_fixed_6_4_0_0_0_32u_relu_config4_U0.ap_idle;
assign inst_block_sigs[1] = (relu_array_ap_fixed_32u_array_ap_fixed_6_4_0_0_0_32u_relu_config4_U0.ap_done & ~relu_array_ap_fixed_32u_array_ap_fixed_6_4_0_0_0_32u_relu_config4_U0.ap_continue) | ~relu_array_ap_fixed_32u_array_ap_fixed_6_4_0_0_0_32u_relu_config4_U0.layer3_out_blk_n | ~relu_array_ap_fixed_32u_array_ap_fixed_6_4_0_0_0_32u_relu_config4_U0.layer4_out_blk_n;
assign inst_idle_sigs[2] = dense_array_ap_fixed_32u_array_ap_fixed_18_14_5_3_0_32u_config5_U0.ap_idle;
assign inst_block_sigs[2] = (dense_array_ap_fixed_32u_array_ap_fixed_18_14_5_3_0_32u_config5_U0.ap_done & ~dense_array_ap_fixed_32u_array_ap_fixed_18_14_5_3_0_32u_config5_U0.ap_continue) | ~dense_array_ap_fixed_32u_array_ap_fixed_18_14_5_3_0_32u_config5_U0.layer4_out_blk_n | ~dense_array_ap_fixed_32u_array_ap_fixed_18_14_5_3_0_32u_config5_U0.layer5_out_blk_n;
assign inst_idle_sigs[3] = relu_array_ap_fixed_32u_array_ap_fixed_6_4_0_0_0_32u_relu_config6_U0.ap_idle;
assign inst_block_sigs[3] = (relu_array_ap_fixed_32u_array_ap_fixed_6_4_0_0_0_32u_relu_config6_U0.ap_done & ~relu_array_ap_fixed_32u_array_ap_fixed_6_4_0_0_0_32u_relu_config6_U0.ap_continue) | ~relu_array_ap_fixed_32u_array_ap_fixed_6_4_0_0_0_32u_relu_config6_U0.layer5_out_blk_n | ~relu_array_ap_fixed_32u_array_ap_fixed_6_4_0_0_0_32u_relu_config6_U0.layer6_out_blk_n;
assign inst_idle_sigs[4] = dense_array_ap_fixed_32u_array_ap_fixed_18_14_5_3_0_16u_config7_U0.ap_idle;
assign inst_block_sigs[4] = (dense_array_ap_fixed_32u_array_ap_fixed_18_14_5_3_0_16u_config7_U0.ap_done & ~dense_array_ap_fixed_32u_array_ap_fixed_18_14_5_3_0_16u_config7_U0.ap_continue) | ~dense_array_ap_fixed_32u_array_ap_fixed_18_14_5_3_0_16u_config7_U0.layer6_out_blk_n | ~dense_array_ap_fixed_32u_array_ap_fixed_18_14_5_3_0_16u_config7_U0.layer7_out_blk_n;
assign inst_idle_sigs[5] = relu_array_ap_fixed_16u_array_ap_fixed_6_4_0_0_0_16u_relu_config8_U0.ap_idle;
assign inst_block_sigs[5] = (relu_array_ap_fixed_16u_array_ap_fixed_6_4_0_0_0_16u_relu_config8_U0.ap_done & ~relu_array_ap_fixed_16u_array_ap_fixed_6_4_0_0_0_16u_relu_config8_U0.ap_continue) | ~relu_array_ap_fixed_16u_array_ap_fixed_6_4_0_0_0_16u_relu_config8_U0.layer7_out_blk_n | ~relu_array_ap_fixed_16u_array_ap_fixed_6_4_0_0_0_16u_relu_config8_U0.layer8_out_blk_n;
assign inst_idle_sigs[6] = dense_array_ap_fixed_16u_array_ap_fixed_17_13_5_3_0_4u_config9_U0.ap_idle;
assign inst_block_sigs[6] = (dense_array_ap_fixed_16u_array_ap_fixed_17_13_5_3_0_4u_config9_U0.ap_done & ~dense_array_ap_fixed_16u_array_ap_fixed_17_13_5_3_0_4u_config9_U0.ap_continue) | ~dense_array_ap_fixed_16u_array_ap_fixed_17_13_5_3_0_4u_config9_U0.layer8_out_blk_n;

assign inst_idle_sigs[7] = 1'b0;
assign inst_idle_sigs[8] = dense_array_ap_int_8_8u_array_ap_fixed_21_19_5_3_0_32u_config3_U0.ap_idle;
assign inst_idle_sigs[9] = dense_array_ap_int_8_8u_array_ap_fixed_21_19_5_3_0_32u_config3_U0.grp_dense_array_array_ap_fixed_32u_config3_Pipeline_DataPrepare_fu_295.ap_idle;
assign inst_idle_sigs[10] = dense_array_ap_fixed_16u_array_ap_fixed_17_13_5_3_0_4u_config9_U0.ap_idle;

wedrowiec_hls_hls_deadlock_idx0_monitor wedrowiec_hls_hls_deadlock_idx0_monitor_U (
    .clock(kernel_monitor_clock),
    .reset(kernel_monitor_reset),
    .axis_block_sigs(axis_block_sigs),
    .inst_idle_sigs(inst_idle_sigs),
    .inst_block_sigs(inst_block_sigs),
    .block(kernel_block)
);


always @ (kernel_block or kernel_monitor_reset) begin
    if (kernel_block == 1'b1 && kernel_monitor_reset == 1'b0) begin
        find_kernel_block = 1'b1;
    end
    else begin
        find_kernel_block = 1'b0;
    end
end

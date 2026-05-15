`timescale 1 ns / 1 ps

module AESL_deadlock_kernel_monitor_top ( 
    input wire kernel_monitor_clock,
    input wire kernel_monitor_reset
);
wire [1:0] axis_block_sigs;
wire [9:0] inst_idle_sigs;
wire [6:0] inst_block_sigs;
wire kernel_block;

assign axis_block_sigs[0] = ~AESL_inst_wedrowiec_hls_axi.grp_wedrowiec_hls_axi_Pipeline_VITIS_LOOP_16_1_fu_158.in_r_TDATA_blk_n;
assign axis_block_sigs[1] = ~AESL_inst_wedrowiec_hls_axi.grp_wedrowiec_hls_axi_Pipeline_VITIS_LOOP_31_4_fu_190.out_r_TDATA_blk_n;

assign inst_idle_sigs[0] = AESL_inst_wedrowiec_hls_axi.grp_wedrowiec_hls_fu_168.dense_array_ap_ufixed_8u_array_ap_fixed_25_12_5_3_0_32u_config3_U0.ap_idle;
assign inst_block_sigs[0] = (AESL_inst_wedrowiec_hls_axi.grp_wedrowiec_hls_fu_168.dense_array_ap_ufixed_8u_array_ap_fixed_25_12_5_3_0_32u_config3_U0.ap_done & ~AESL_inst_wedrowiec_hls_axi.grp_wedrowiec_hls_fu_168.dense_array_ap_ufixed_8u_array_ap_fixed_25_12_5_3_0_32u_config3_U0.ap_continue);
assign inst_idle_sigs[1] = AESL_inst_wedrowiec_hls_axi.grp_wedrowiec_hls_fu_168.relu_array_ap_fixed_32u_array_ap_fixed_10_4_0_0_0_32u_relu_config4_U0.ap_idle;
assign inst_block_sigs[1] = (AESL_inst_wedrowiec_hls_axi.grp_wedrowiec_hls_fu_168.relu_array_ap_fixed_32u_array_ap_fixed_10_4_0_0_0_32u_relu_config4_U0.ap_done & ~AESL_inst_wedrowiec_hls_axi.grp_wedrowiec_hls_fu_168.relu_array_ap_fixed_32u_array_ap_fixed_10_4_0_0_0_32u_relu_config4_U0.ap_continue);
assign inst_idle_sigs[2] = AESL_inst_wedrowiec_hls_axi.grp_wedrowiec_hls_fu_168.dense_array_ap_fixed_32u_array_ap_fixed_26_14_5_3_0_32u_config5_U0.ap_idle;
assign inst_block_sigs[2] = (AESL_inst_wedrowiec_hls_axi.grp_wedrowiec_hls_fu_168.dense_array_ap_fixed_32u_array_ap_fixed_26_14_5_3_0_32u_config5_U0.ap_done & ~AESL_inst_wedrowiec_hls_axi.grp_wedrowiec_hls_fu_168.dense_array_ap_fixed_32u_array_ap_fixed_26_14_5_3_0_32u_config5_U0.ap_continue);
assign inst_idle_sigs[3] = AESL_inst_wedrowiec_hls_axi.grp_wedrowiec_hls_fu_168.relu_array_ap_fixed_32u_array_ap_fixed_10_4_0_0_0_32u_relu_config6_U0.ap_idle;
assign inst_block_sigs[3] = (AESL_inst_wedrowiec_hls_axi.grp_wedrowiec_hls_fu_168.relu_array_ap_fixed_32u_array_ap_fixed_10_4_0_0_0_32u_relu_config6_U0.ap_done & ~AESL_inst_wedrowiec_hls_axi.grp_wedrowiec_hls_fu_168.relu_array_ap_fixed_32u_array_ap_fixed_10_4_0_0_0_32u_relu_config6_U0.ap_continue);
assign inst_idle_sigs[4] = AESL_inst_wedrowiec_hls_axi.grp_wedrowiec_hls_fu_168.dense_array_ap_fixed_32u_array_ap_fixed_26_14_5_3_0_16u_config7_U0.ap_idle;
assign inst_block_sigs[4] = (AESL_inst_wedrowiec_hls_axi.grp_wedrowiec_hls_fu_168.dense_array_ap_fixed_32u_array_ap_fixed_26_14_5_3_0_16u_config7_U0.ap_done & ~AESL_inst_wedrowiec_hls_axi.grp_wedrowiec_hls_fu_168.dense_array_ap_fixed_32u_array_ap_fixed_26_14_5_3_0_16u_config7_U0.ap_continue);
assign inst_idle_sigs[5] = AESL_inst_wedrowiec_hls_axi.grp_wedrowiec_hls_fu_168.relu_array_ap_fixed_16u_array_ap_fixed_10_4_0_0_0_16u_relu_config8_U0.ap_idle;
assign inst_block_sigs[5] = (AESL_inst_wedrowiec_hls_axi.grp_wedrowiec_hls_fu_168.relu_array_ap_fixed_16u_array_ap_fixed_10_4_0_0_0_16u_relu_config8_U0.ap_done & ~AESL_inst_wedrowiec_hls_axi.grp_wedrowiec_hls_fu_168.relu_array_ap_fixed_16u_array_ap_fixed_10_4_0_0_0_16u_relu_config8_U0.ap_continue);
assign inst_idle_sigs[6] = AESL_inst_wedrowiec_hls_axi.grp_wedrowiec_hls_fu_168.dense_array_ap_fixed_16u_array_ap_fixed_25_13_5_3_0_4u_config9_U0.ap_idle;
assign inst_block_sigs[6] = (AESL_inst_wedrowiec_hls_axi.grp_wedrowiec_hls_fu_168.dense_array_ap_fixed_16u_array_ap_fixed_25_13_5_3_0_4u_config9_U0.ap_done & ~AESL_inst_wedrowiec_hls_axi.grp_wedrowiec_hls_fu_168.dense_array_ap_fixed_16u_array_ap_fixed_25_13_5_3_0_4u_config9_U0.ap_continue);

assign inst_idle_sigs[7] = 1'b0;
assign inst_idle_sigs[8] = AESL_inst_wedrowiec_hls_axi.grp_wedrowiec_hls_axi_Pipeline_VITIS_LOOP_16_1_fu_158.ap_idle;
assign inst_idle_sigs[9] = AESL_inst_wedrowiec_hls_axi.grp_wedrowiec_hls_axi_Pipeline_VITIS_LOOP_31_4_fu_190.ap_idle;

AESL_deadlock_idx0_monitor AESL_deadlock_idx0_monitor_U (
    .clock(kernel_monitor_clock),
    .reset(kernel_monitor_reset),
    .axis_block_sigs(axis_block_sigs),
    .inst_idle_sigs(inst_idle_sigs),
    .inst_block_sigs(inst_block_sigs),
    .block(kernel_block)
);


initial begin : trigger_axis_deadlock
reg block_delay;
    block_delay = 0;
    while(1) begin
        @(posedge kernel_monitor_clock);
    if (kernel_block == 1'b1 && block_delay == 1'b0)
        block_delay = kernel_block;
    end
end

endmodule

# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 1 \
    name input_layer \
    reset_level 1 \
    sync_rst true \
    corename {} \
    metadata {  } \
    op interface \
    ports { input_layer_TVALID { I 1 bit } input_layer_TDATA { I 64 vector } input_layer_TREADY { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'input_layer'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2 \
    name data_63_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_63_out \
    op interface \
    ports { data_63_out { O 8 vector } data_63_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3 \
    name data_62_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_62_out \
    op interface \
    ports { data_62_out { O 8 vector } data_62_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4 \
    name data_61_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_61_out \
    op interface \
    ports { data_61_out { O 8 vector } data_61_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5 \
    name data_60_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_60_out \
    op interface \
    ports { data_60_out { O 8 vector } data_60_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6 \
    name data_59_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_59_out \
    op interface \
    ports { data_59_out { O 8 vector } data_59_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7 \
    name data_58_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_58_out \
    op interface \
    ports { data_58_out { O 8 vector } data_58_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8 \
    name data_57_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_57_out \
    op interface \
    ports { data_57_out { O 8 vector } data_57_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9 \
    name data_56_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_56_out \
    op interface \
    ports { data_56_out { O 8 vector } data_56_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10 \
    name data_55_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_55_out \
    op interface \
    ports { data_55_out { O 8 vector } data_55_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11 \
    name data_54_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_54_out \
    op interface \
    ports { data_54_out { O 8 vector } data_54_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12 \
    name data_53_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_53_out \
    op interface \
    ports { data_53_out { O 8 vector } data_53_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13 \
    name data_52_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_52_out \
    op interface \
    ports { data_52_out { O 8 vector } data_52_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14 \
    name data_51_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_51_out \
    op interface \
    ports { data_51_out { O 8 vector } data_51_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 15 \
    name data_50_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_50_out \
    op interface \
    ports { data_50_out { O 8 vector } data_50_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 16 \
    name data_49_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_49_out \
    op interface \
    ports { data_49_out { O 8 vector } data_49_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 17 \
    name data_48_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_48_out \
    op interface \
    ports { data_48_out { O 8 vector } data_48_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18 \
    name data_47_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_47_out \
    op interface \
    ports { data_47_out { O 8 vector } data_47_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19 \
    name data_46_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_46_out \
    op interface \
    ports { data_46_out { O 8 vector } data_46_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20 \
    name data_45_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_45_out \
    op interface \
    ports { data_45_out { O 8 vector } data_45_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 21 \
    name data_44_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_44_out \
    op interface \
    ports { data_44_out { O 8 vector } data_44_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 22 \
    name data_43_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_43_out \
    op interface \
    ports { data_43_out { O 8 vector } data_43_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 23 \
    name data_42_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_42_out \
    op interface \
    ports { data_42_out { O 8 vector } data_42_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 24 \
    name data_41_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_41_out \
    op interface \
    ports { data_41_out { O 8 vector } data_41_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 25 \
    name data_40_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_40_out \
    op interface \
    ports { data_40_out { O 8 vector } data_40_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 26 \
    name data_39_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_39_out \
    op interface \
    ports { data_39_out { O 8 vector } data_39_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 27 \
    name data_38_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_38_out \
    op interface \
    ports { data_38_out { O 8 vector } data_38_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 28 \
    name data_37_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_37_out \
    op interface \
    ports { data_37_out { O 8 vector } data_37_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 29 \
    name data_36_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_36_out \
    op interface \
    ports { data_36_out { O 8 vector } data_36_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 30 \
    name data_35_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_35_out \
    op interface \
    ports { data_35_out { O 8 vector } data_35_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 31 \
    name data_34_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_34_out \
    op interface \
    ports { data_34_out { O 8 vector } data_34_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 32 \
    name data_33_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_33_out \
    op interface \
    ports { data_33_out { O 8 vector } data_33_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 33 \
    name data_32_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_32_out \
    op interface \
    ports { data_32_out { O 8 vector } data_32_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 34 \
    name data_31_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_31_out \
    op interface \
    ports { data_31_out { O 8 vector } data_31_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 35 \
    name data_30_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_30_out \
    op interface \
    ports { data_30_out { O 8 vector } data_30_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 36 \
    name data_29_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_29_out \
    op interface \
    ports { data_29_out { O 8 vector } data_29_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 37 \
    name data_28_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_28_out \
    op interface \
    ports { data_28_out { O 8 vector } data_28_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 38 \
    name data_27_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_27_out \
    op interface \
    ports { data_27_out { O 8 vector } data_27_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 39 \
    name data_26_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_26_out \
    op interface \
    ports { data_26_out { O 8 vector } data_26_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 40 \
    name data_25_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_25_out \
    op interface \
    ports { data_25_out { O 8 vector } data_25_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 41 \
    name data_24_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_24_out \
    op interface \
    ports { data_24_out { O 8 vector } data_24_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 42 \
    name data_23_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_23_out \
    op interface \
    ports { data_23_out { O 8 vector } data_23_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 43 \
    name data_22_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_22_out \
    op interface \
    ports { data_22_out { O 8 vector } data_22_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 44 \
    name data_21_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_21_out \
    op interface \
    ports { data_21_out { O 8 vector } data_21_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 45 \
    name data_20_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_20_out \
    op interface \
    ports { data_20_out { O 8 vector } data_20_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 46 \
    name data_19_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_19_out \
    op interface \
    ports { data_19_out { O 8 vector } data_19_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 47 \
    name data_18_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_18_out \
    op interface \
    ports { data_18_out { O 8 vector } data_18_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 48 \
    name data_17_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_17_out \
    op interface \
    ports { data_17_out { O 8 vector } data_17_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 49 \
    name data_16_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_16_out \
    op interface \
    ports { data_16_out { O 8 vector } data_16_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 50 \
    name data_15_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_15_out \
    op interface \
    ports { data_15_out { O 8 vector } data_15_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 51 \
    name data_14_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_14_out \
    op interface \
    ports { data_14_out { O 8 vector } data_14_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 52 \
    name data_13_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_13_out \
    op interface \
    ports { data_13_out { O 8 vector } data_13_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 53 \
    name data_12_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_12_out \
    op interface \
    ports { data_12_out { O 8 vector } data_12_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 54 \
    name data_11_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_11_out \
    op interface \
    ports { data_11_out { O 8 vector } data_11_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 55 \
    name data_10_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_10_out \
    op interface \
    ports { data_10_out { O 8 vector } data_10_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 56 \
    name data_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_9_out \
    op interface \
    ports { data_9_out { O 8 vector } data_9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 57 \
    name data_8_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_8_out \
    op interface \
    ports { data_8_out { O 8 vector } data_8_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 58 \
    name data_7_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_7_out \
    op interface \
    ports { data_7_out { O 8 vector } data_7_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 59 \
    name data_6_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_6_out \
    op interface \
    ports { data_6_out { O 8 vector } data_6_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 60 \
    name data_5_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_5_out \
    op interface \
    ports { data_5_out { O 8 vector } data_5_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 61 \
    name data_4_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_4_out \
    op interface \
    ports { data_4_out { O 8 vector } data_4_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 62 \
    name data_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_3_out \
    op interface \
    ports { data_3_out { O 8 vector } data_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 63 \
    name data_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_2_out \
    op interface \
    ports { data_2_out { O 8 vector } data_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 64 \
    name data_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_1_out \
    op interface \
    ports { data_1_out { O 8 vector } data_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 65 \
    name data_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_out \
    op interface \
    ports { data_out { O 8 vector } data_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# flow_control definition:
set InstName wedrowiec_hls_flow_control_loop_pipe_sequential_init_U
set CompName wedrowiec_hls_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix wedrowiec_hls_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}



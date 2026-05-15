# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 67 \
    name in_local \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_local \
    op interface \
    ports { in_local_dout { I 64 vector } in_local_empty_n { I 1 bit } in_local_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 68 \
    name p_0_7_0_0_0127_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_7_0_0_0127_out \
    op interface \
    ports { p_0_7_0_0_0127_out { O 8 vector } p_0_7_0_0_0127_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 69 \
    name p_0_6_0_0_0125_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_6_0_0_0125_out \
    op interface \
    ports { p_0_6_0_0_0125_out { O 8 vector } p_0_6_0_0_0125_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 70 \
    name p_0_5_0_0_0123_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_5_0_0_0123_out \
    op interface \
    ports { p_0_5_0_0_0123_out { O 8 vector } p_0_5_0_0_0123_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 71 \
    name p_0_4_0_0_0121_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_4_0_0_0121_out \
    op interface \
    ports { p_0_4_0_0_0121_out { O 8 vector } p_0_4_0_0_0121_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 72 \
    name p_0_3_0_0_0119_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_3_0_0_0119_out \
    op interface \
    ports { p_0_3_0_0_0119_out { O 8 vector } p_0_3_0_0_0119_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 73 \
    name p_0_2_0_0_0117_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_2_0_0_0117_out \
    op interface \
    ports { p_0_2_0_0_0117_out { O 8 vector } p_0_2_0_0_0117_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 74 \
    name p_0_1_0_0_0115_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_1_0_0_0115_out \
    op interface \
    ports { p_0_1_0_0_0115_out { O 8 vector } p_0_1_0_0_0115_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 75 \
    name p_0_0_0_0_0113_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0_0_0113_out \
    op interface \
    ports { p_0_0_0_0_0113_out { O 8 vector } p_0_0_0_0_0113_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 76 \
    name p_0_7_0_0_0111_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_7_0_0_0111_out \
    op interface \
    ports { p_0_7_0_0_0111_out { O 8 vector } p_0_7_0_0_0111_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 77 \
    name p_0_6_0_0_0109_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_6_0_0_0109_out \
    op interface \
    ports { p_0_6_0_0_0109_out { O 8 vector } p_0_6_0_0_0109_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 78 \
    name p_0_5_0_0_0107_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_5_0_0_0107_out \
    op interface \
    ports { p_0_5_0_0_0107_out { O 8 vector } p_0_5_0_0_0107_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 79 \
    name p_0_4_0_0_0105_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_4_0_0_0105_out \
    op interface \
    ports { p_0_4_0_0_0105_out { O 8 vector } p_0_4_0_0_0105_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 80 \
    name p_0_3_0_0_0103_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_3_0_0_0103_out \
    op interface \
    ports { p_0_3_0_0_0103_out { O 8 vector } p_0_3_0_0_0103_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 81 \
    name p_0_2_0_0_0101_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_2_0_0_0101_out \
    op interface \
    ports { p_0_2_0_0_0101_out { O 8 vector } p_0_2_0_0_0101_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 82 \
    name p_0_1_0_0_099_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_1_0_0_099_out \
    op interface \
    ports { p_0_1_0_0_099_out { O 8 vector } p_0_1_0_0_099_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 83 \
    name p_0_0_0_0_097_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0_0_097_out \
    op interface \
    ports { p_0_0_0_0_097_out { O 8 vector } p_0_0_0_0_097_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 84 \
    name p_0_7_0_0_095_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_7_0_0_095_out \
    op interface \
    ports { p_0_7_0_0_095_out { O 8 vector } p_0_7_0_0_095_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 85 \
    name p_0_6_0_0_093_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_6_0_0_093_out \
    op interface \
    ports { p_0_6_0_0_093_out { O 8 vector } p_0_6_0_0_093_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 86 \
    name p_0_5_0_0_091_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_5_0_0_091_out \
    op interface \
    ports { p_0_5_0_0_091_out { O 8 vector } p_0_5_0_0_091_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 87 \
    name p_0_4_0_0_089_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_4_0_0_089_out \
    op interface \
    ports { p_0_4_0_0_089_out { O 8 vector } p_0_4_0_0_089_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 88 \
    name p_0_3_0_0_087_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_3_0_0_087_out \
    op interface \
    ports { p_0_3_0_0_087_out { O 8 vector } p_0_3_0_0_087_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 89 \
    name p_0_2_0_0_085_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_2_0_0_085_out \
    op interface \
    ports { p_0_2_0_0_085_out { O 8 vector } p_0_2_0_0_085_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 90 \
    name p_0_1_0_0_083_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_1_0_0_083_out \
    op interface \
    ports { p_0_1_0_0_083_out { O 8 vector } p_0_1_0_0_083_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 91 \
    name p_0_0_0_0_081_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0_0_081_out \
    op interface \
    ports { p_0_0_0_0_081_out { O 8 vector } p_0_0_0_0_081_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 92 \
    name p_0_7_0_0_079_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_7_0_0_079_out \
    op interface \
    ports { p_0_7_0_0_079_out { O 8 vector } p_0_7_0_0_079_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 93 \
    name p_0_6_0_0_077_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_6_0_0_077_out \
    op interface \
    ports { p_0_6_0_0_077_out { O 8 vector } p_0_6_0_0_077_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 94 \
    name p_0_5_0_0_075_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_5_0_0_075_out \
    op interface \
    ports { p_0_5_0_0_075_out { O 8 vector } p_0_5_0_0_075_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 95 \
    name p_0_4_0_0_073_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_4_0_0_073_out \
    op interface \
    ports { p_0_4_0_0_073_out { O 8 vector } p_0_4_0_0_073_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 96 \
    name p_0_3_0_0_071_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_3_0_0_071_out \
    op interface \
    ports { p_0_3_0_0_071_out { O 8 vector } p_0_3_0_0_071_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 97 \
    name p_0_2_0_0_069_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_2_0_0_069_out \
    op interface \
    ports { p_0_2_0_0_069_out { O 8 vector } p_0_2_0_0_069_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 98 \
    name p_0_1_0_0_067_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_1_0_0_067_out \
    op interface \
    ports { p_0_1_0_0_067_out { O 8 vector } p_0_1_0_0_067_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 99 \
    name p_0_0_0_0_065_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0_0_065_out \
    op interface \
    ports { p_0_0_0_0_065_out { O 8 vector } p_0_0_0_0_065_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 100 \
    name p_0_7_0_0_063_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_7_0_0_063_out \
    op interface \
    ports { p_0_7_0_0_063_out { O 8 vector } p_0_7_0_0_063_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 101 \
    name p_0_6_0_0_061_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_6_0_0_061_out \
    op interface \
    ports { p_0_6_0_0_061_out { O 8 vector } p_0_6_0_0_061_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 102 \
    name p_0_5_0_0_059_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_5_0_0_059_out \
    op interface \
    ports { p_0_5_0_0_059_out { O 8 vector } p_0_5_0_0_059_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 103 \
    name p_0_4_0_0_057_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_4_0_0_057_out \
    op interface \
    ports { p_0_4_0_0_057_out { O 8 vector } p_0_4_0_0_057_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 104 \
    name p_0_3_0_0_055_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_3_0_0_055_out \
    op interface \
    ports { p_0_3_0_0_055_out { O 8 vector } p_0_3_0_0_055_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 105 \
    name p_0_2_0_0_053_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_2_0_0_053_out \
    op interface \
    ports { p_0_2_0_0_053_out { O 8 vector } p_0_2_0_0_053_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 106 \
    name p_0_1_0_0_051_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_1_0_0_051_out \
    op interface \
    ports { p_0_1_0_0_051_out { O 8 vector } p_0_1_0_0_051_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 107 \
    name p_0_0_0_0_049_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0_0_049_out \
    op interface \
    ports { p_0_0_0_0_049_out { O 8 vector } p_0_0_0_0_049_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 108 \
    name p_0_7_0_0_047_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_7_0_0_047_out \
    op interface \
    ports { p_0_7_0_0_047_out { O 8 vector } p_0_7_0_0_047_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 109 \
    name p_0_6_0_0_045_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_6_0_0_045_out \
    op interface \
    ports { p_0_6_0_0_045_out { O 8 vector } p_0_6_0_0_045_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 110 \
    name p_0_5_0_0_043_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_5_0_0_043_out \
    op interface \
    ports { p_0_5_0_0_043_out { O 8 vector } p_0_5_0_0_043_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 111 \
    name p_0_4_0_0_041_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_4_0_0_041_out \
    op interface \
    ports { p_0_4_0_0_041_out { O 8 vector } p_0_4_0_0_041_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 112 \
    name p_0_3_0_0_039_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_3_0_0_039_out \
    op interface \
    ports { p_0_3_0_0_039_out { O 8 vector } p_0_3_0_0_039_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 113 \
    name p_0_2_0_0_037_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_2_0_0_037_out \
    op interface \
    ports { p_0_2_0_0_037_out { O 8 vector } p_0_2_0_0_037_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 114 \
    name p_0_1_0_0_035_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_1_0_0_035_out \
    op interface \
    ports { p_0_1_0_0_035_out { O 8 vector } p_0_1_0_0_035_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 115 \
    name p_0_0_0_0_033_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0_0_033_out \
    op interface \
    ports { p_0_0_0_0_033_out { O 8 vector } p_0_0_0_0_033_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 116 \
    name p_0_7_0_0_031_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_7_0_0_031_out \
    op interface \
    ports { p_0_7_0_0_031_out { O 8 vector } p_0_7_0_0_031_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 117 \
    name p_0_6_0_0_029_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_6_0_0_029_out \
    op interface \
    ports { p_0_6_0_0_029_out { O 8 vector } p_0_6_0_0_029_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 118 \
    name p_0_5_0_0_027_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_5_0_0_027_out \
    op interface \
    ports { p_0_5_0_0_027_out { O 8 vector } p_0_5_0_0_027_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 119 \
    name p_0_4_0_0_025_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_4_0_0_025_out \
    op interface \
    ports { p_0_4_0_0_025_out { O 8 vector } p_0_4_0_0_025_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 120 \
    name p_0_3_0_0_023_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_3_0_0_023_out \
    op interface \
    ports { p_0_3_0_0_023_out { O 8 vector } p_0_3_0_0_023_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 121 \
    name p_0_2_0_0_021_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_2_0_0_021_out \
    op interface \
    ports { p_0_2_0_0_021_out { O 8 vector } p_0_2_0_0_021_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 122 \
    name p_0_1_0_0_019_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_1_0_0_019_out \
    op interface \
    ports { p_0_1_0_0_019_out { O 8 vector } p_0_1_0_0_019_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 123 \
    name p_0_0_0_0_017_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0_0_017_out \
    op interface \
    ports { p_0_0_0_0_017_out { O 8 vector } p_0_0_0_0_017_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 124 \
    name p_0_7_0_0_015_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_7_0_0_015_out \
    op interface \
    ports { p_0_7_0_0_015_out { O 8 vector } p_0_7_0_0_015_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 125 \
    name p_0_6_0_0_013_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_6_0_0_013_out \
    op interface \
    ports { p_0_6_0_0_013_out { O 8 vector } p_0_6_0_0_013_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 126 \
    name p_0_5_0_0_011_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_5_0_0_011_out \
    op interface \
    ports { p_0_5_0_0_011_out { O 8 vector } p_0_5_0_0_011_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 127 \
    name p_0_4_0_0_09_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_4_0_0_09_out \
    op interface \
    ports { p_0_4_0_0_09_out { O 8 vector } p_0_4_0_0_09_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 128 \
    name p_0_3_0_0_07_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_3_0_0_07_out \
    op interface \
    ports { p_0_3_0_0_07_out { O 8 vector } p_0_3_0_0_07_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 129 \
    name p_0_2_0_0_05_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_2_0_0_05_out \
    op interface \
    ports { p_0_2_0_0_05_out { O 8 vector } p_0_2_0_0_05_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 130 \
    name p_0_1_0_0_03_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_1_0_0_03_out \
    op interface \
    ports { p_0_1_0_0_03_out { O 8 vector } p_0_1_0_0_03_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 131 \
    name p_0_0_0_0_01_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0_0_01_out \
    op interface \
    ports { p_0_0_0_0_01_out { O 8 vector } p_0_0_0_0_01_out_ap_vld { O 1 bit } } \
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
set InstName wedrowiec_hls_axi_flow_control_loop_pipe_sequential_init_U
set CompName wedrowiec_hls_axi_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix wedrowiec_hls_axi_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}



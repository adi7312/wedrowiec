# This script segment is generated automatically by AutoPilot

set name wedrowiec_hls_axi_mul_11s_5ns_15_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set name wedrowiec_hls_axi_mul_10s_7s_16_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 840 \
    name data_0_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_0_val \
    op interface \
    ports { data_0_val { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 841 \
    name data_1_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_1_val \
    op interface \
    ports { data_1_val { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 842 \
    name data_2_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_2_val \
    op interface \
    ports { data_2_val { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 843 \
    name data_3_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_3_val \
    op interface \
    ports { data_3_val { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 844 \
    name data_4_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_4_val \
    op interface \
    ports { data_4_val { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 845 \
    name data_5_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_5_val \
    op interface \
    ports { data_5_val { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 846 \
    name data_6_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_6_val \
    op interface \
    ports { data_6_val { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 847 \
    name data_7_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_7_val \
    op interface \
    ports { data_7_val { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 848 \
    name data_8_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_8_val \
    op interface \
    ports { data_8_val { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 849 \
    name data_9_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_9_val \
    op interface \
    ports { data_9_val { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 850 \
    name data_10_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_10_val \
    op interface \
    ports { data_10_val { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 851 \
    name data_11_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_11_val \
    op interface \
    ports { data_11_val { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 852 \
    name data_12_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_12_val \
    op interface \
    ports { data_12_val { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 853 \
    name data_13_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_13_val \
    op interface \
    ports { data_13_val { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 854 \
    name data_14_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_14_val \
    op interface \
    ports { data_14_val { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 855 \
    name data_15_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_15_val \
    op interface \
    ports { data_15_val { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 856 \
    name data_16_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_16_val \
    op interface \
    ports { data_16_val { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 857 \
    name data_17_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_17_val \
    op interface \
    ports { data_17_val { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 858 \
    name data_18_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_18_val \
    op interface \
    ports { data_18_val { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 859 \
    name data_19_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_19_val \
    op interface \
    ports { data_19_val { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 860 \
    name data_20_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_20_val \
    op interface \
    ports { data_20_val { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 861 \
    name data_21_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_21_val \
    op interface \
    ports { data_21_val { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 862 \
    name data_22_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_22_val \
    op interface \
    ports { data_22_val { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 863 \
    name data_23_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_23_val \
    op interface \
    ports { data_23_val { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 864 \
    name data_24_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_24_val \
    op interface \
    ports { data_24_val { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 865 \
    name data_25_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_25_val \
    op interface \
    ports { data_25_val { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 866 \
    name data_26_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_26_val \
    op interface \
    ports { data_26_val { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 867 \
    name data_27_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_27_val \
    op interface \
    ports { data_27_val { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 868 \
    name data_28_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_28_val \
    op interface \
    ports { data_28_val { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 869 \
    name data_29_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_29_val \
    op interface \
    ports { data_29_val { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 870 \
    name data_30_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_30_val \
    op interface \
    ports { data_30_val { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 871 \
    name data_31_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_31_val \
    op interface \
    ports { data_31_val { I 10 vector } } \
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

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -2 \
    name ap_return \
    type ap_return \
    reset_level 1 \
    sync_rst true \
    corename ap_return \
    op interface \
    ports { ap_return { O 1 vector } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -3 \
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
    id -4 \
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



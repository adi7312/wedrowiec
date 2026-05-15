
set PATH=
call G:/Xilinx/Vivado/2024.2/bin/xelab xil_defaultlib.apatb_wedrowiec_hls_axi_top glbl -Oenable_linking_all_libraries  -prj wedrowiec_hls_axi.prj -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_12 -L axi_protocol_checker_v1_1_13 -L axis_protocol_checker_v1_1_11 -L axis_protocol_checker_v1_1_12 -L xil_defaultlib -L unisims_ver -L xpm  -L floating_point_v7_0_24 -L floating_point_v7_1_19 --lib "ieee_proposed=./ieee_proposed" -s wedrowiec_hls_axi -debug all
call G:/Xilinx/Vivado/2024.2/bin/xsim --noieeewarnings wedrowiec_hls_axi -tclbatch wedrowiec_hls_axi.tcl -view wedrowiec_hls_axi_dataflow_ana.wcfg -protoinst wedrowiec_hls_axi.protoinst


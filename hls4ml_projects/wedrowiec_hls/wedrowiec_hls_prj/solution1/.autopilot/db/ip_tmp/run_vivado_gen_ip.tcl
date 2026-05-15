create_project prj -part xc7z020-clg400-1 -force
set_property target_language verilog [current_project]
set vivado_ver [version -short]
set COE_DIR "../../syn/verilog"
source "G:/Xlinix-workspace/projekt-hls/hls4ml_projects/wedrowiec_hls/wedrowiec_hls_prj/solution1/syn/verilog/wedrowiec_hls_axi_fpext_32ns_64_2_no_dsp_1_ip.tcl"

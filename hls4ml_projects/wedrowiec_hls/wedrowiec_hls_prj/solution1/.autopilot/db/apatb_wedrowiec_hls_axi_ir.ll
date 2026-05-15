; ModuleID = 'G:/Xlinix-workspace/projekt-hls/hls4ml_projects/wedrowiec_hls/wedrowiec_hls_prj/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"class.hls::stream<hls::axis<float, 0, 0, 0, '\5Cx11', true>, 0>" = type { %"struct.hls::axis<float, 0, 0, 0, '\5Cx11', true>" }
%"struct.hls::axis<float, 0, 0, 0, '\5Cx11', true>" = type { float, %"class.std::ios_base::Init", %"class.std::ios_base::Init", %"class.std::ios_base::Init", %"struct.ap_uint<1>", %"class.std::ios_base::Init", %"class.std::ios_base::Init" }
%"struct.ap_uint<1>" = type { %"struct.ap_int_base<1, false>" }
%"struct.ap_int_base<1, false>" = type { %"struct.ssdm_int<1, false>" }
%"struct.ssdm_int<1, false>" = type { i1 }
%"class.std::ios_base::Init" = type { i8 }

; Function Attrs: noinline willreturn
define void @apatb_wedrowiec_hls_axi_ir(%"class.hls::stream<hls::axis<float, 0, 0, 0, '\5Cx11', true>, 0>"* noalias nonnull dereferenceable(12) %in, %"class.hls::stream<hls::axis<float, 0, 0, 0, '\5Cx11', true>, 0>"* noalias nonnull dereferenceable(12) %out) local_unnamed_addr #0 {
entry:
  %in_copy.data = alloca i32, align 512
  %in_copy.last = alloca i1, align 512
  %out_copy.data = alloca i32, align 512
  %out_copy.last = alloca i1, align 512
  call fastcc void @copy_in(%"class.hls::stream<hls::axis<float, 0, 0, 0, '\5Cx11', true>, 0>"* nonnull %in, i32* nonnull align 512 %in_copy.data, i1* nonnull align 512 %in_copy.last, %"class.hls::stream<hls::axis<float, 0, 0, 0, '\5Cx11', true>, 0>"* nonnull %out, i32* nonnull align 512 %out_copy.data, i1* nonnull align 512 %out_copy.last)
  call void @apatb_wedrowiec_hls_axi_hw(i32* %in_copy.data, i1* %in_copy.last, i32* %out_copy.data, i1* %out_copy.last)
  call void @copy_back(%"class.hls::stream<hls::axis<float, 0, 0, 0, '\5Cx11', true>, 0>"* %in, i32* %in_copy.data, i1* %in_copy.last, %"class.hls::stream<hls::axis<float, 0, 0, 0, '\5Cx11', true>, 0>"* %out, i32* %out_copy.data, i1* %out_copy.last)
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_in(%"class.hls::stream<hls::axis<float, 0, 0, 0, '\5Cx11', true>, 0>"* noalias, i32* noalias align 512 "unpacked"="1.0" %_V_data_V, i1* noalias align 512 "unpacked"="1.1" %_V_last_V, %"class.hls::stream<hls::axis<float, 0, 0, 0, '\5Cx11', true>, 0>"* noalias, i32* noalias align 512 "unpacked"="3.0" %_V_data_V1, i1* noalias align 512 "unpacked"="3.1" %_V_last_V2) unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<float, 0, 0, 0, '\5Cx11', true>, 0>.162"(i32* align 512 %_V_data_V, i1* align 512 %_V_last_V, %"class.hls::stream<hls::axis<float, 0, 0, 0, '\5Cx11', true>, 0>"* %0)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<float, 0, 0, 0, '\5Cx11', true>, 0>.162"(i32* align 512 %_V_data_V1, i1* align 512 %_V_last_V2, %"class.hls::stream<hls::axis<float, 0, 0, 0, '\5Cx11', true>, 0>"* %1)
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_out(%"class.hls::stream<hls::axis<float, 0, 0, 0, '\5Cx11', true>, 0>"* noalias, i32* noalias align 512 "unpacked"="1.0" %_V_data_V, i1* noalias align 512 "unpacked"="1.1" %_V_last_V, %"class.hls::stream<hls::axis<float, 0, 0, 0, '\5Cx11', true>, 0>"* noalias, i32* noalias align 512 "unpacked"="3.0" %_V_data_V1, i1* noalias align 512 "unpacked"="3.1" %_V_last_V2) unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<float, 0, 0, 0, '\5Cx11', true>, 0>"(%"class.hls::stream<hls::axis<float, 0, 0, 0, '\5Cx11', true>, 0>"* %0, i32* align 512 %_V_data_V, i1* align 512 %_V_last_V)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<float, 0, 0, 0, '\5Cx11', true>, 0>"(%"class.hls::stream<hls::axis<float, 0, 0, 0, '\5Cx11', true>, 0>"* %1, i32* align 512 %_V_data_V1, i1* align 512 %_V_last_V2)
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<float, 0, 0, 0, '\5Cx11', true>, 0>"(%"class.hls::stream<hls::axis<float, 0, 0, 0, '\5Cx11', true>, 0>"* noalias %dst, i32* noalias align 512 "unpacked"="1.0" %src_V_data_V, i1* noalias align 512 "unpacked"="1.1" %src_V_last_V) unnamed_addr #3 {
entry:
  %0 = icmp eq %"class.hls::stream<hls::axis<float, 0, 0, 0, '\5Cx11', true>, 0>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<float, 0, 0, 0, '\5Cx11', true>, 0>.157"(%"class.hls::stream<hls::axis<float, 0, 0, 0, '\5Cx11', true>, 0>"* nonnull %dst, i32* align 512 %src_V_data_V, i1* align 512 %src_V_last_V)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<float, 0, 0, 0, '\5Cx11', true>, 0>.157"(%"class.hls::stream<hls::axis<float, 0, 0, 0, '\5Cx11', true>, 0>"* noalias nocapture, i32* noalias nocapture align 512 "unpacked"="1.0" %_V_data_V, i1* noalias nocapture align 512 "unpacked"="1.1" %_V_last_V) unnamed_addr #4 {
entry:
  %1 = alloca i32
  %2 = alloca i1
  %3 = alloca %"class.hls::stream<hls::axis<float, 0, 0, 0, '\5Cx11', true>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast i32* %_V_data_V to i8*
  %5 = call i1 @fpga_fifo_not_empty_4(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast i32* %1 to i8*
  %7 = bitcast i32* %_V_data_V to i8*
  call void @fpga_fifo_pop_4(i8* %6, i8* %7)
  %8 = load volatile i32, i32* %1
  %9 = bitcast i1* %2 to i8*
  %10 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_pop_1(i8* %9, i8* %10)
  %11 = bitcast i1* %2 to i8*
  %12 = load i8, i8* %11
  %13 = trunc i8 %12 to i1
  %14 = bitcast i32 %8 to float
  %.fca.0.0.insert = insertvalue %"class.hls::stream<hls::axis<float, 0, 0, 0, '\5Cx11', true>, 0>" undef, float %14, 0, 0
  %.fca.0.4.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<float, 0, 0, 0, '\5Cx11', true>, 0>" %.fca.0.0.insert, i1 %13, 0, 4, 0, 0, 0
  store %"class.hls::stream<hls::axis<float, 0, 0, 0, '\5Cx11', true>, 0>" %.fca.0.4.0.0.0.insert, %"class.hls::stream<hls::axis<float, 0, 0, 0, '\5Cx11', true>, 0>"* %3
  %15 = bitcast %"class.hls::stream<hls::axis<float, 0, 0, 0, '\5Cx11', true>, 0>"* %3 to i8*
  %16 = bitcast %"class.hls::stream<hls::axis<float, 0, 0, 0, '\5Cx11', true>, 0>"* %0 to i8*
  call void @fpga_fifo_push_12(i8* %15, i8* %16)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<float, 0, 0, 0, '\5Cx11', true>, 0>.162"(i32* noalias align 512 "unpacked"="0.0" %dst_V_data_V, i1* noalias align 512 "unpacked"="0.1" %dst_V_last_V, %"class.hls::stream<hls::axis<float, 0, 0, 0, '\5Cx11', true>, 0>"* noalias %src) unnamed_addr #3 {
entry:
  %0 = icmp eq %"class.hls::stream<hls::axis<float, 0, 0, 0, '\5Cx11', true>, 0>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<float, 0, 0, 0, '\5Cx11', true>, 0>.165"(i32* align 512 %dst_V_data_V, i1* align 512 %dst_V_last_V, %"class.hls::stream<hls::axis<float, 0, 0, 0, '\5Cx11', true>, 0>"* nonnull %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<float, 0, 0, 0, '\5Cx11', true>, 0>.165"(i32* noalias nocapture align 512 "unpacked"="0.0" %_V_data_V, i1* noalias nocapture align 512 "unpacked"="0.1" %_V_last_V, %"class.hls::stream<hls::axis<float, 0, 0, 0, '\5Cx11', true>, 0>"* noalias nocapture) unnamed_addr #4 {
entry:
  %1 = alloca %"class.hls::stream<hls::axis<float, 0, 0, 0, '\5Cx11', true>, 0>"
  %2 = alloca i32
  %3 = alloca i1
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast %"class.hls::stream<hls::axis<float, 0, 0, 0, '\5Cx11', true>, 0>"* %0 to i8*
  %5 = call i1 @fpga_fifo_not_empty_12(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast %"class.hls::stream<hls::axis<float, 0, 0, 0, '\5Cx11', true>, 0>"* %1 to i8*
  %7 = bitcast %"class.hls::stream<hls::axis<float, 0, 0, 0, '\5Cx11', true>, 0>"* %0 to i8*
  call void @fpga_fifo_pop_12(i8* %6, i8* %7)
  %8 = load volatile %"class.hls::stream<hls::axis<float, 0, 0, 0, '\5Cx11', true>, 0>", %"class.hls::stream<hls::axis<float, 0, 0, 0, '\5Cx11', true>, 0>"* %1
  %.fca.0.0.extract = extractvalue %"class.hls::stream<hls::axis<float, 0, 0, 0, '\5Cx11', true>, 0>" %8, 0, 0
  %9 = bitcast float %.fca.0.0.extract to i32
  %.fca.0.4.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<float, 0, 0, 0, '\5Cx11', true>, 0>" %8, 0, 4, 0, 0, 0
  store i32 %9, i32* %2
  %10 = bitcast i32* %2 to i8*
  %11 = bitcast i32* %_V_data_V to i8*
  call void @fpga_fifo_push_4(i8* %10, i8* %11)
  store i1 %.fca.0.4.0.0.0.extract, i1* %3
  %12 = bitcast i1* %3 to i8*
  %13 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_push_1(i8* %12, i8* %13)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

declare i8* @malloc(i64)

declare void @free(i8*)

declare void @apatb_wedrowiec_hls_axi_hw(i32*, i1*, i32*, i1*)

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_back(%"class.hls::stream<hls::axis<float, 0, 0, 0, '\5Cx11', true>, 0>"* noalias, i32* noalias align 512 "unpacked"="1.0" %_V_data_V, i1* noalias align 512 "unpacked"="1.1" %_V_last_V, %"class.hls::stream<hls::axis<float, 0, 0, 0, '\5Cx11', true>, 0>"* noalias, i32* noalias align 512 "unpacked"="3.0" %_V_data_V1, i1* noalias align 512 "unpacked"="3.1" %_V_last_V2) unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<float, 0, 0, 0, '\5Cx11', true>, 0>"(%"class.hls::stream<hls::axis<float, 0, 0, 0, '\5Cx11', true>, 0>"* %0, i32* align 512 %_V_data_V, i1* align 512 %_V_last_V)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<float, 0, 0, 0, '\5Cx11', true>, 0>"(%"class.hls::stream<hls::axis<float, 0, 0, 0, '\5Cx11', true>, 0>"* %1, i32* align 512 %_V_data_V1, i1* align 512 %_V_last_V2)
  ret void
}

declare void @wedrowiec_hls_axi_hw_stub(%"class.hls::stream<hls::axis<float, 0, 0, 0, '\5Cx11', true>, 0>"* noalias nonnull, %"class.hls::stream<hls::axis<float, 0, 0, 0, '\5Cx11', true>, 0>"* noalias nonnull)

define void @wedrowiec_hls_axi_hw_stub_wrapper(i32*, i1*, i32*, i1*) #5 {
entry:
  %4 = call i8* @malloc(i64 12)
  %5 = bitcast i8* %4 to %"class.hls::stream<hls::axis<float, 0, 0, 0, '\5Cx11', true>, 0>"*
  %6 = call i8* @malloc(i64 12)
  %7 = bitcast i8* %6 to %"class.hls::stream<hls::axis<float, 0, 0, 0, '\5Cx11', true>, 0>"*
  call void @copy_out(%"class.hls::stream<hls::axis<float, 0, 0, 0, '\5Cx11', true>, 0>"* %5, i32* %0, i1* %1, %"class.hls::stream<hls::axis<float, 0, 0, 0, '\5Cx11', true>, 0>"* %7, i32* %2, i1* %3)
  call void @wedrowiec_hls_axi_hw_stub(%"class.hls::stream<hls::axis<float, 0, 0, 0, '\5Cx11', true>, 0>"* %5, %"class.hls::stream<hls::axis<float, 0, 0, 0, '\5Cx11', true>, 0>"* %7)
  call void @copy_in(%"class.hls::stream<hls::axis<float, 0, 0, 0, '\5Cx11', true>, 0>"* %5, i32* %0, i1* %1, %"class.hls::stream<hls::axis<float, 0, 0, 0, '\5Cx11', true>, 0>"* %7, i32* %2, i1* %3)
  call void @free(i8* %4)
  call void @free(i8* %6)
  ret void
}

declare i1 @fpga_fifo_not_empty_12(i8*)

declare i1 @fpga_fifo_not_empty_4(i8*)

declare void @fpga_fifo_pop_12(i8*, i8*)

declare void @fpga_fifo_pop_4(i8*, i8*)

declare void @fpga_fifo_pop_1(i8*, i8*)

declare void @fpga_fifo_push_12(i8*, i8*)

declare void @fpga_fifo_push_4(i8*, i8*)

declare void @fpga_fifo_push_1(i8*, i8*)

attributes #0 = { noinline willreturn "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline willreturn "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline willreturn "fpga.wrapper.func"="copyout" }
attributes #3 = { argmemonly noinline willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { argmemonly noinline willreturn "fpga.wrapper.func"="streamcpy_hls" }
attributes #5 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.rotate.disable"}

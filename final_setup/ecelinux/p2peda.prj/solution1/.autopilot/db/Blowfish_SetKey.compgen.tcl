# This script segment is generated automatically by AutoPilot

set id 25
set name dut_urem_7ns_5ns_bkb
set corename simcore_urem_seq
set op urem
set stage_num 11
set max_latency -1
set registered_input 1
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set start_width 1
set start_signed 0
set done_width 1
set in0_width 7
set in0_signed 0
set in1_width 5
set in1_signed 0
set ce_width 1
set ce_signed 0
set out_width 7
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_urem] == "ap_gen_simcore_urem"} {
eval "ap_gen_simcore_urem { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    start_width ${start_width} \
    start_signed ${start_signed} \
    done_width ${done_width} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_urem, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op urem
set corename DivnS_SEQ
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_div] == "::AESL_LIB_VIRTEX::xil_gen_div"} {
eval "::AESL_LIB_VIRTEX::xil_gen_div { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    start_width ${start_width} \
    start_signed ${start_signed} \
    done_width ${done_width} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_div, check your platform lib"
}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 27 \
    name key \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename key \
    op interface \
    ports { key_address0 { O 6 vector } key_ce0 { O 1 bit } key_q0 { I 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'key'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 28 \
    name S_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename S_0 \
    op interface \
    ports { S_0_address0 { O 8 vector } S_0_ce0 { O 1 bit } S_0_we0 { O 1 bit } S_0_d0 { O 32 vector } S_0_q0 { I 32 vector } S_0_address1 { O 8 vector } S_0_ce1 { O 1 bit } S_0_we1 { O 1 bit } S_0_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'S_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 29 \
    name S_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename S_1 \
    op interface \
    ports { S_1_address0 { O 8 vector } S_1_ce0 { O 1 bit } S_1_we0 { O 1 bit } S_1_d0 { O 32 vector } S_1_q0 { I 32 vector } S_1_address1 { O 8 vector } S_1_ce1 { O 1 bit } S_1_we1 { O 1 bit } S_1_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'S_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 30 \
    name S_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename S_2 \
    op interface \
    ports { S_2_address0 { O 8 vector } S_2_ce0 { O 1 bit } S_2_we0 { O 1 bit } S_2_d0 { O 32 vector } S_2_q0 { I 32 vector } S_2_address1 { O 8 vector } S_2_ce1 { O 1 bit } S_2_we1 { O 1 bit } S_2_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'S_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 31 \
    name S_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename S_3 \
    op interface \
    ports { S_3_address0 { O 8 vector } S_3_ce0 { O 1 bit } S_3_we0 { O 1 bit } S_3_d0 { O 32 vector } S_3_q0 { I 32 vector } S_3_address1 { O 8 vector } S_3_ce1 { O 1 bit } S_3_we1 { O 1 bit } S_3_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'S_3'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 32 \
    name P_0 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_P_0 \
    op interface \
    ports { P_0_i { I 32 vector } P_0_o { O 32 vector } P_0_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 33 \
    name P_1 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_P_1 \
    op interface \
    ports { P_1_i { I 32 vector } P_1_o { O 32 vector } P_1_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 34 \
    name P_2 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_P_2 \
    op interface \
    ports { P_2_i { I 32 vector } P_2_o { O 32 vector } P_2_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 35 \
    name P_3 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_P_3 \
    op interface \
    ports { P_3_i { I 32 vector } P_3_o { O 32 vector } P_3_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 36 \
    name P_4 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_P_4 \
    op interface \
    ports { P_4_i { I 32 vector } P_4_o { O 32 vector } P_4_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 37 \
    name P_5 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_P_5 \
    op interface \
    ports { P_5_i { I 32 vector } P_5_o { O 32 vector } P_5_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 38 \
    name P_6 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_P_6 \
    op interface \
    ports { P_6_i { I 32 vector } P_6_o { O 32 vector } P_6_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 39 \
    name P_7 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_P_7 \
    op interface \
    ports { P_7_i { I 32 vector } P_7_o { O 32 vector } P_7_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 40 \
    name P_8 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_P_8 \
    op interface \
    ports { P_8_i { I 32 vector } P_8_o { O 32 vector } P_8_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 41 \
    name P_9 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_P_9 \
    op interface \
    ports { P_9_i { I 32 vector } P_9_o { O 32 vector } P_9_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 42 \
    name P_10 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_P_10 \
    op interface \
    ports { P_10_i { I 32 vector } P_10_o { O 32 vector } P_10_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 43 \
    name P_11 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_P_11 \
    op interface \
    ports { P_11_i { I 32 vector } P_11_o { O 32 vector } P_11_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 44 \
    name P_12 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_P_12 \
    op interface \
    ports { P_12_i { I 32 vector } P_12_o { O 32 vector } P_12_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 45 \
    name P_13 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_P_13 \
    op interface \
    ports { P_13_i { I 32 vector } P_13_o { O 32 vector } P_13_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 46 \
    name P_14 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_P_14 \
    op interface \
    ports { P_14_i { I 32 vector } P_14_o { O 32 vector } P_14_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 47 \
    name P_15 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_P_15 \
    op interface \
    ports { P_15_i { I 32 vector } P_15_o { O 32 vector } P_15_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 48 \
    name P_16 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_P_16 \
    op interface \
    ports { P_16_i { I 32 vector } P_16_o { O 32 vector } P_16_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 49 \
    name P_17 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_P_17 \
    op interface \
    ports { P_17_i { I 32 vector } P_17_o { O 32 vector } P_17_o_ap_vld { O 1 bit } } \
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



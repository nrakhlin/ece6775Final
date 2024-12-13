# This script segment is generated automatically by AutoPilot

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
    id 21 \
    name S_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename S_0 \
    op interface \
    ports { S_0_address0 { O 8 vector } S_0_ce0 { O 1 bit } S_0_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'S_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 22 \
    name S_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename S_1 \
    op interface \
    ports { S_1_address0 { O 8 vector } S_1_ce0 { O 1 bit } S_1_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'S_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 23 \
    name S_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename S_2 \
    op interface \
    ports { S_2_address0 { O 8 vector } S_2_ce0 { O 1 bit } S_2_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'S_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 24 \
    name S_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename S_3 \
    op interface \
    ports { S_3_address0 { O 8 vector } S_3_ce0 { O 1 bit } S_3_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'S_3'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1 \
    name left_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_left_read \
    op interface \
    ports { left_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2 \
    name right_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_right_read \
    op interface \
    ports { right_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3 \
    name P_0_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P_0_read \
    op interface \
    ports { P_0_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4 \
    name P_1_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P_1_read \
    op interface \
    ports { P_1_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5 \
    name P_2_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P_2_read \
    op interface \
    ports { P_2_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6 \
    name P_3_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P_3_read \
    op interface \
    ports { P_3_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7 \
    name P_4_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P_4_read \
    op interface \
    ports { P_4_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8 \
    name P_5_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P_5_read \
    op interface \
    ports { P_5_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9 \
    name P_6_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P_6_read \
    op interface \
    ports { P_6_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10 \
    name P_7_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P_7_read \
    op interface \
    ports { P_7_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11 \
    name P_8_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P_8_read \
    op interface \
    ports { P_8_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12 \
    name P_9_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P_9_read \
    op interface \
    ports { P_9_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13 \
    name P_10_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P_10_read \
    op interface \
    ports { P_10_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14 \
    name P_11_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P_11_read \
    op interface \
    ports { P_11_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 15 \
    name P_12_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P_12_read \
    op interface \
    ports { P_12_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 16 \
    name P_13_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P_13_read \
    op interface \
    ports { P_13_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 17 \
    name P_14_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P_14_read \
    op interface \
    ports { P_14_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18 \
    name P_15_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P_15_read \
    op interface \
    ports { P_15_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19 \
    name P_16_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P_16_read \
    op interface \
    ports { P_16_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20 \
    name P_17_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P_17_read \
    op interface \
    ports { P_17_read { I 32 vector } } \
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



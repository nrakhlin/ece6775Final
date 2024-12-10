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
    id 35 \
    name state \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename state \
    op interface \
    ports { state_address0 { O 4 vector } state_ce0 { O 1 bit } state_we0 { O 1 bit } state_d0 { O 8 vector } state_q0 { I 8 vector } state_address1 { O 4 vector } state_ce1 { O 1 bit } state_we1 { O 1 bit } state_d1 { O 8 vector } state_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'state'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 36 \
    name roundKey_0_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_roundKey_0_read \
    op interface \
    ports { roundKey_0_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 37 \
    name roundKey_1_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_roundKey_1_read \
    op interface \
    ports { roundKey_1_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 38 \
    name roundKey_2_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_roundKey_2_read \
    op interface \
    ports { roundKey_2_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 39 \
    name roundKey_3_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_roundKey_3_read \
    op interface \
    ports { roundKey_3_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 40 \
    name roundKey_4_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_roundKey_4_read \
    op interface \
    ports { roundKey_4_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 41 \
    name roundKey_5_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_roundKey_5_read \
    op interface \
    ports { roundKey_5_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 42 \
    name roundKey_6_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_roundKey_6_read \
    op interface \
    ports { roundKey_6_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 43 \
    name roundKey_7_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_roundKey_7_read \
    op interface \
    ports { roundKey_7_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 44 \
    name roundKey_8_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_roundKey_8_read \
    op interface \
    ports { roundKey_8_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 45 \
    name roundKey_9_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_roundKey_9_read \
    op interface \
    ports { roundKey_9_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 46 \
    name roundKey_10_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_roundKey_10_read \
    op interface \
    ports { roundKey_10_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 47 \
    name roundKey_11_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_roundKey_11_read \
    op interface \
    ports { roundKey_11_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 48 \
    name roundKey_12_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_roundKey_12_read \
    op interface \
    ports { roundKey_12_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 49 \
    name roundKey_13_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_roundKey_13_read \
    op interface \
    ports { roundKey_13_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 50 \
    name roundKey_14_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_roundKey_14_read \
    op interface \
    ports { roundKey_14_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 51 \
    name roundKey_15_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_roundKey_15_read \
    op interface \
    ports { roundKey_15_read { I 8 vector } } \
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



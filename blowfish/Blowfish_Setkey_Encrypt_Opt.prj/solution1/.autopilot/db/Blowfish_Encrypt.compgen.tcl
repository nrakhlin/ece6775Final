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
    id 84 \
    name plaintext \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename plaintext \
    op interface \
    ports { plaintext_address0 { O 3 vector } plaintext_ce0 { O 1 bit } plaintext_q0 { I 8 vector } plaintext_address1 { O 3 vector } plaintext_ce1 { O 1 bit } plaintext_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'plaintext'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 85 \
    name ciphertext \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename ciphertext \
    op interface \
    ports { ciphertext_address0 { O 3 vector } ciphertext_ce0 { O 1 bit } ciphertext_we0 { O 1 bit } ciphertext_d0 { O 8 vector } ciphertext_address1 { O 3 vector } ciphertext_ce1 { O 1 bit } ciphertext_we1 { O 1 bit } ciphertext_d1 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'ciphertext'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 104 \
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
    id 105 \
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
    id 106 \
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
    id 107 \
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
    id 86 \
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
    id 87 \
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
    id 88 \
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
    id 89 \
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
    id 90 \
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
    id 91 \
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
    id 92 \
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
    id 93 \
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
    id 94 \
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
    id 95 \
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
    id 96 \
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
    id 97 \
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
    id 98 \
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
    id 99 \
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
    id 100 \
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
    id 101 \
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
    id 102 \
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
    id 103 \
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



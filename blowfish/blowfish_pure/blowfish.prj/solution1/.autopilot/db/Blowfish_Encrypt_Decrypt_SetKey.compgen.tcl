# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

set axilite_register_dict [dict create]
# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 27 \
    name Blowfish_pary_s \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename Blowfish_pary_s \
    op interface \
    ports { Blowfish_pary_s_address0 { O 5 vector } Blowfish_pary_s_ce0 { O 1 bit } Blowfish_pary_s_we0 { O 1 bit } Blowfish_pary_s_d0 { O 32 vector } Blowfish_pary_s_q0 { I 32 vector } Blowfish_pary_s_address1 { O 5 vector } Blowfish_pary_s_ce1 { O 1 bit } Blowfish_pary_s_we1 { O 1 bit } Blowfish_pary_s_d1 { O 32 vector } Blowfish_pary_s_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Blowfish_pary_s'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 28 \
    name Blowfish_sbox_s \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename Blowfish_sbox_s \
    op interface \
    ports { Blowfish_sbox_s_address0 { O 10 vector } Blowfish_sbox_s_ce0 { O 1 bit } Blowfish_sbox_s_we0 { O 1 bit } Blowfish_sbox_s_d0 { O 32 vector } Blowfish_sbox_s_q0 { I 32 vector } Blowfish_sbox_s_address1 { O 10 vector } Blowfish_sbox_s_ce1 { O 1 bit } Blowfish_sbox_s_we1 { O 1 bit } Blowfish_sbox_s_d1 { O 32 vector } Blowfish_sbox_s_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Blowfish_sbox_s'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 30 \
    name key \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename key \
    op interface \
    ports { key_address0 { O 6 vector } key_ce0 { O 1 bit } key_q0 { I 8 vector } key_address1 { O 6 vector } key_ce1 { O 1 bit } key_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'key'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 32 \
    name decrypted \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename decrypted \
    op interface \
    ports { decrypted_address0 { O 3 vector } decrypted_ce0 { O 1 bit } decrypted_we0 { O 1 bit } decrypted_d0 { O 8 vector } decrypted_q0 { I 8 vector } decrypted_address1 { O 3 vector } decrypted_ce1 { O 1 bit } decrypted_we1 { O 1 bit } decrypted_d1 { O 8 vector } decrypted_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'decrypted'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 33 \
    name encrypted \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename encrypted \
    op interface \
    ports { encrypted_address0 { O 3 vector } encrypted_ce0 { O 1 bit } encrypted_we0 { O 1 bit } encrypted_d0 { O 8 vector } encrypted_q0 { I 8 vector } encrypted_address1 { O 3 vector } encrypted_ce1 { O 1 bit } encrypted_we1 { O 1 bit } encrypted_d1 { O 8 vector } encrypted_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'encrypted'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 34 \
    name plaintext \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename plaintext \
    op interface \
    ports { plaintext_address0 { O 3 vector } plaintext_ce0 { O 1 bit } plaintext_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'plaintext'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 29 \
    name set_key \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_set_key \
    op interface \
    ports { set_key { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 31 \
    name key_byte_length \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_key_byte_length \
    op interface \
    ports { key_byte_length { I 32 vector } } \
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



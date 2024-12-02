# This script segment is generated automatically by AutoPilot

# Memory (RAM/ROM)  definition:
set ID 129
set hasByteEnable 0
set MemName Blowfish_SetKey_EfYi
set CoreName ap_simcore_mem
set PortList { 2 2 }
set DataWd 8
set AddrRange 8
set AddrWd 3
set impl_style block
set TrueReset 0
set HasInitializer 0
set IsROM 0
set ROMData {}
set NumOfStage 2
set MaxLatency -1
set DelayBudget 2.322
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName RAM
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_RAM] == "::AESL_LIB_VIRTEX::xil_gen_RAM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_RAM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_RAM, check your platform lib"
  }
}


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
    id 131 \
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
    id 133 \
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
    id 134 \
    name decryptedtext \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename decryptedtext \
    op interface \
    ports { decryptedtext_address0 { O 3 vector } decryptedtext_ce0 { O 1 bit } decryptedtext_we0 { O 1 bit } decryptedtext_d0 { O 8 vector } decryptedtext_address1 { O 3 vector } decryptedtext_ce1 { O 1 bit } decryptedtext_we1 { O 1 bit } decryptedtext_d1 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'decryptedtext'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 153 \
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
    id 154 \
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
    id 155 \
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
    id 156 \
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
    id 130 \
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
    id 132 \
    name key_size \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_key_size \
    op interface \
    ports { key_size { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 135 \
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
    id 136 \
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
    id 137 \
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
    id 138 \
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
    id 139 \
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
    id 140 \
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
    id 141 \
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
    id 142 \
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
    id 143 \
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
    id 144 \
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
    id 145 \
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
    id 146 \
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
    id 147 \
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
    id 148 \
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
    id 149 \
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
    id 150 \
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
    id 151 \
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
    id 152 \
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



# This script segment is generated automatically by AutoPilot

# Memory (RAM/ROM)  definition:
set ID 305
set hasByteEnable 0
set MemName aes_encrypt_block
set CoreName ap_simcore_mem
set PortList { 2 2 }
set DataWd 8
set AddrRange 16
set AddrWd 4
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

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 306 \
    name input_0_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_0_read \
    op interface \
    ports { input_0_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 307 \
    name input_1_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_1_read \
    op interface \
    ports { input_1_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 308 \
    name input_2_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_2_read \
    op interface \
    ports { input_2_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 309 \
    name input_3_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_3_read \
    op interface \
    ports { input_3_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 310 \
    name input_4_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_4_read \
    op interface \
    ports { input_4_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 311 \
    name input_5_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_5_read \
    op interface \
    ports { input_5_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 312 \
    name input_6_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_6_read \
    op interface \
    ports { input_6_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 313 \
    name input_7_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_7_read \
    op interface \
    ports { input_7_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 314 \
    name input_8_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_8_read \
    op interface \
    ports { input_8_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 315 \
    name input_9_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_9_read \
    op interface \
    ports { input_9_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 316 \
    name input_10_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_10_read \
    op interface \
    ports { input_10_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 317 \
    name input_11_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_11_read \
    op interface \
    ports { input_11_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 318 \
    name input_12_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_12_read \
    op interface \
    ports { input_12_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 319 \
    name input_13_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_13_read \
    op interface \
    ports { input_13_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 320 \
    name input_14_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_14_read \
    op interface \
    ports { input_14_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 321 \
    name input_15_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_15_read \
    op interface \
    ports { input_15_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 322 \
    name output_0_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_output_0_read \
    op interface \
    ports { output_0_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 323 \
    name output_1_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_output_1_read \
    op interface \
    ports { output_1_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 324 \
    name output_2_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_output_2_read \
    op interface \
    ports { output_2_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 325 \
    name output_3_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_output_3_read \
    op interface \
    ports { output_3_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 326 \
    name output_4_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_output_4_read \
    op interface \
    ports { output_4_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 327 \
    name output_5_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_output_5_read \
    op interface \
    ports { output_5_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 328 \
    name output_6_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_output_6_read \
    op interface \
    ports { output_6_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 329 \
    name output_7_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_output_7_read \
    op interface \
    ports { output_7_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 330 \
    name output_8_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_output_8_read \
    op interface \
    ports { output_8_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 331 \
    name output_9_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_output_9_read \
    op interface \
    ports { output_9_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 332 \
    name output_10_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_output_10_read \
    op interface \
    ports { output_10_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 333 \
    name output_11_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_output_11_read \
    op interface \
    ports { output_11_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 334 \
    name output_12_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_output_12_read \
    op interface \
    ports { output_12_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 335 \
    name output_13_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_output_13_read \
    op interface \
    ports { output_13_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 336 \
    name output_14_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_output_14_read \
    op interface \
    ports { output_14_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 337 \
    name output_15_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_output_15_read \
    op interface \
    ports { output_15_read { I 8 vector } } \
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



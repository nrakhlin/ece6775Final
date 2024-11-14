# This script segment is generated automatically by AutoPilot

# Memory (RAM/ROM)  definition:
set ID 1
set hasByteEnable 0
set MemName createRoundKey_embkb
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 8
set AddrRange 176
set AddrWd 8
set TrueReset 0
set IsROM 1
set ROMData { "01101011" "01101011" "01101011" "01101011" "01100101" "01100101" "01100101" "01100101" "01111001" "01111001" "01111001" "01111001" "00101110" "00101110" "00101110" "00101110" "01011011" "01011010" "01011010" "01011010" "00111110" "00111111" "00111111" "00111111" "01000111" "01000110" "01000110" "01000110" "01101001" "01101000" "01101000" "01101000" "00011100" "00011111" "00011111" "10100011" "00100010" "00100000" "00100000" "10011100" "01100101" "01100110" "01100110" "11011010" "00001100" "00001110" "00001110" "10110010" "10110011" "10110100" "00101000" "01011101" "10010001" "10010100" "00001000" "11000001" "11110100" "11110010" "01101110" "00011011" "11111000" "11111100" "01100000" "10101001" "00001011" "01100100" "11111011" "00011100" "10011010" "11110000" "11110011" "11011101" "01101110" "00000010" "10011101" "11000110" "10010110" "11111110" "11111101" "01101111" "10100000" "00110000" "01010011" "10001100" "00111010" "11000000" "10100000" "01010001" "01010100" "11000010" "00111101" "10010111" "11000010" "00111100" "11000000" "11111000" "01101011" "10001010" "00010010" "10101001" "01010001" "01001010" "10110010" "11111000" "00000101" "10001000" "10001111" "01101111" "11000111" "10110100" "01001111" "10010111" "10100110" "00001110" "10011010" "01101111" "11110111" "01000100" "00101000" "10010111" "11110010" "11001100" "10100111" "11111000" "00110101" "01111000" "11101000" "01101111" "10011010" "10010101" "00110010" "11111001" "01101101" "11010001" "00011010" "01101110" "10011111" "00011101" "10111101" "10010110" "10101010" "01100101" "01010101" "11111001" "11001100" "01101001" "10101011" "01010101" "10100001" "10111000" "10110001" "00111011" "00111110" "10100101" "00001100" "10101101" "10010100" "11000000" "01011001" "01010100" "01000000" "10100010" "10001011" "01110111" "11100001" "00011010" "00111010" "01001100" "11011111" "10111111" "00110110" "11100001" "01001011" "01111111" "01101111" "10110101" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 3.254
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
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
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


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
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
    id 3 \
    name roundKey \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename roundKey \
    op interface \
    ports { roundKey_address0 { O 4 vector } roundKey_ce0 { O 1 bit } roundKey_we0 { O 1 bit } roundKey_d0 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'roundKey'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2 \
    name expandedKey_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_expandedKey_offset \
    op interface \
    ports { expandedKey_offset { I 9 vector } } \
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



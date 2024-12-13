// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _aes_main_HH_
#define _aes_main_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "aes_round.h"
#include "createRoundKey.h"
#include "addRoundKey.h"
#include "aes_main_expandedlbW.h"
#include "aes_main_sbox.h"

namespace ap_rtl {

struct aes_main : public sc_module {
    // Port declarations 16
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<4> > state_address0;
    sc_out< sc_logic > state_ce0;
    sc_out< sc_logic > state_we0;
    sc_out< sc_lv<8> > state_d0;
    sc_in< sc_lv<8> > state_q0;
    sc_out< sc_lv<4> > state_address1;
    sc_out< sc_logic > state_ce1;
    sc_out< sc_logic > state_we1;
    sc_out< sc_lv<8> > state_d1;
    sc_in< sc_lv<8> > state_q1;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    aes_main(sc_module_name name);
    SC_HAS_PROCESS(aes_main);

    ~aes_main();

    sc_trace_file* mVcdFile;

    aes_main_expandedlbW* expandedKey_U;
    aes_main_sbox* sbox_U;
    aes_round* grp_aes_round_fu_380;
    createRoundKey* grp_createRoundKey_fu_404;
    addRoundKey* grp_addRoundKey_fu_413;
    sc_signal< sc_lv<47> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > expandedKey_ce0;
    sc_signal< sc_lv<8> > expandedKey_q0;
    sc_signal< sc_logic > expandedKey_ce1;
    sc_signal< sc_lv<8> > expandedKey_q1;
    sc_signal< sc_lv<8> > sbox_address0;
    sc_signal< sc_logic > sbox_ce0;
    sc_signal< sc_lv<8> > sbox_q0;
    sc_signal< sc_lv<8> > sbox_address1;
    sc_signal< sc_logic > sbox_ce1;
    sc_signal< sc_lv<8> > sbox_q1;
    sc_signal< sc_lv<4> > i_0_reg_368;
    sc_signal< sc_lv<8> > reg_531;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage9;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< bool > ap_block_state20_pp0_stage9_iter0;
    sc_signal< bool > ap_block_pp0_stage9_11001;
    sc_signal< sc_lv<1> > icmp_ln26_reg_740;
    sc_signal< sc_logic > ap_CS_fsm_state55;
    sc_signal< sc_lv<8> > reg_537;
    sc_signal< sc_lv<8> > reg_543;
    sc_signal< sc_lv<8> > reg_549;
    sc_signal< sc_lv<8> > reg_555;
    sc_signal< sc_lv<8> > reg_561;
    sc_signal< sc_lv<8> > reg_567;
    sc_signal< sc_lv<8> > reg_573;
    sc_signal< sc_lv<8> > reg_579;
    sc_signal< sc_lv<8> > reg_585;
    sc_signal< sc_lv<8> > reg_591;
    sc_signal< sc_lv<8> > reg_597;
    sc_signal< sc_lv<8> > reg_603;
    sc_signal< sc_lv<8> > reg_609;
    sc_signal< sc_lv<8> > reg_615;
    sc_signal< sc_lv<8> > reg_621;
    sc_signal< sc_lv<8> > reg_627;
    sc_signal< sc_logic > ap_CS_fsm_state40;
    sc_signal< sc_logic > ap_CS_fsm_state46;
    sc_signal< sc_lv<8> > reg_631;
    sc_signal< sc_lv<8> > reg_635;
    sc_signal< sc_logic > ap_CS_fsm_state41;
    sc_signal< sc_logic > ap_CS_fsm_state47;
    sc_signal< sc_lv<8> > reg_639;
    sc_signal< sc_lv<1> > icmp_ln26_fu_643_p2;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< bool > ap_block_state11_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state30_pp0_stage0_iter1;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<1> > icmp_ln26_reg_740_pp0_iter1_reg;
    sc_signal< sc_lv<4> > i_fu_662_p2;
    sc_signal< sc_lv<4> > i_reg_744;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage18;
    sc_signal< bool > ap_block_state29_pp0_stage18_iter0;
    sc_signal< bool > ap_block_pp0_stage18_11001;
    sc_signal< sc_lv<4> > state_addr_reg_749;
    sc_signal< sc_logic > ap_CS_fsm_state39;
    sc_signal< sc_lv<4> > state_addr_16_reg_754;
    sc_signal< sc_lv<4> > state_addr_17_reg_759;
    sc_signal< sc_lv<4> > state_addr_18_reg_764;
    sc_signal< sc_lv<4> > state_addr_19_reg_769;
    sc_signal< sc_lv<4> > state_addr_20_reg_774;
    sc_signal< sc_lv<8> > state_load_19_reg_779;
    sc_signal< sc_logic > ap_CS_fsm_state42;
    sc_signal< sc_lv<8> > state_load_20_reg_784;
    sc_signal< sc_lv<4> > state_addr_21_reg_789;
    sc_signal< sc_lv<4> > state_addr_22_reg_794;
    sc_signal< sc_lv<8> > state_load_21_reg_799;
    sc_signal< sc_logic > ap_CS_fsm_state43;
    sc_signal< sc_lv<8> > state_load_22_reg_804;
    sc_signal< sc_lv<4> > state_addr_23_reg_809;
    sc_signal< sc_lv<4> > state_addr_24_reg_814;
    sc_signal< sc_lv<8> > state_load_23_reg_819;
    sc_signal< sc_logic > ap_CS_fsm_state44;
    sc_signal< sc_lv<8> > state_load_24_reg_824;
    sc_signal< sc_lv<4> > state_addr_25_reg_829;
    sc_signal< sc_lv<4> > state_addr_26_reg_834;
    sc_signal< sc_lv<8> > state_load_25_reg_839;
    sc_signal< sc_logic > ap_CS_fsm_state45;
    sc_signal< sc_lv<8> > state_load_26_reg_844;
    sc_signal< sc_lv<4> > state_addr_27_reg_849;
    sc_signal< sc_lv<4> > state_addr_28_reg_854;
    sc_signal< sc_lv<4> > state_addr_29_reg_869;
    sc_signal< sc_lv<4> > state_addr_30_reg_874;
    sc_signal< sc_logic > ap_CS_fsm_state48;
    sc_signal< sc_logic > ap_CS_fsm_state49;
    sc_signal< sc_logic > ap_CS_fsm_state50;
    sc_signal< sc_logic > ap_CS_fsm_state51;
    sc_signal< sc_logic > ap_CS_fsm_state52;
    sc_signal< sc_logic > ap_CS_fsm_state53;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_logic > grp_addRoundKey_fu_413_ap_ready;
    sc_signal< sc_logic > grp_addRoundKey_fu_413_ap_done;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state11;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< bool > ap_block_pp0_stage18_subdone;
    sc_signal< bool > ap_block_state19_pp0_stage8_iter0;
    sc_signal< bool > ap_block_state38_pp0_stage8_iter1;
    sc_signal< bool > ap_block_pp0_stage8_subdone;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage8;
    sc_signal< sc_logic > grp_aes_round_fu_380_ap_start;
    sc_signal< sc_logic > grp_aes_round_fu_380_ap_done;
    sc_signal< sc_logic > grp_aes_round_fu_380_ap_idle;
    sc_signal< sc_logic > grp_aes_round_fu_380_ap_ready;
    sc_signal< sc_lv<4> > grp_aes_round_fu_380_state_address0;
    sc_signal< sc_logic > grp_aes_round_fu_380_state_ce0;
    sc_signal< sc_logic > grp_aes_round_fu_380_state_we0;
    sc_signal< sc_lv<8> > grp_aes_round_fu_380_state_d0;
    sc_signal< sc_lv<4> > grp_aes_round_fu_380_state_address1;
    sc_signal< sc_logic > grp_aes_round_fu_380_state_ce1;
    sc_signal< sc_logic > grp_aes_round_fu_380_state_we1;
    sc_signal< sc_lv<8> > grp_aes_round_fu_380_state_d1;
    sc_signal< sc_logic > grp_createRoundKey_fu_404_ap_start;
    sc_signal< sc_logic > grp_createRoundKey_fu_404_ap_done;
    sc_signal< sc_logic > grp_createRoundKey_fu_404_ap_idle;
    sc_signal< sc_logic > grp_createRoundKey_fu_404_ap_ready;
    sc_signal< sc_lv<8> > grp_createRoundKey_fu_404_expandedKey_address0;
    sc_signal< sc_logic > grp_createRoundKey_fu_404_expandedKey_ce0;
    sc_signal< sc_lv<8> > grp_createRoundKey_fu_404_expandedKey_address1;
    sc_signal< sc_logic > grp_createRoundKey_fu_404_expandedKey_ce1;
    sc_signal< sc_lv<9> > grp_createRoundKey_fu_404_ptr;
    sc_signal< sc_lv<8> > grp_createRoundKey_fu_404_ap_return_0;
    sc_signal< sc_lv<8> > grp_createRoundKey_fu_404_ap_return_1;
    sc_signal< sc_lv<8> > grp_createRoundKey_fu_404_ap_return_2;
    sc_signal< sc_lv<8> > grp_createRoundKey_fu_404_ap_return_3;
    sc_signal< sc_lv<8> > grp_createRoundKey_fu_404_ap_return_4;
    sc_signal< sc_lv<8> > grp_createRoundKey_fu_404_ap_return_5;
    sc_signal< sc_lv<8> > grp_createRoundKey_fu_404_ap_return_6;
    sc_signal< sc_lv<8> > grp_createRoundKey_fu_404_ap_return_7;
    sc_signal< sc_lv<8> > grp_createRoundKey_fu_404_ap_return_8;
    sc_signal< sc_lv<8> > grp_createRoundKey_fu_404_ap_return_9;
    sc_signal< sc_lv<8> > grp_createRoundKey_fu_404_ap_return_10;
    sc_signal< sc_lv<8> > grp_createRoundKey_fu_404_ap_return_11;
    sc_signal< sc_lv<8> > grp_createRoundKey_fu_404_ap_return_12;
    sc_signal< sc_lv<8> > grp_createRoundKey_fu_404_ap_return_13;
    sc_signal< sc_lv<8> > grp_createRoundKey_fu_404_ap_return_14;
    sc_signal< sc_lv<8> > grp_createRoundKey_fu_404_ap_return_15;
    sc_signal< sc_logic > grp_addRoundKey_fu_413_ap_start;
    sc_signal< sc_logic > grp_addRoundKey_fu_413_ap_idle;
    sc_signal< sc_lv<4> > grp_addRoundKey_fu_413_state_address0;
    sc_signal< sc_logic > grp_addRoundKey_fu_413_state_ce0;
    sc_signal< sc_logic > grp_addRoundKey_fu_413_state_we0;
    sc_signal< sc_lv<8> > grp_addRoundKey_fu_413_state_d0;
    sc_signal< sc_lv<4> > grp_addRoundKey_fu_413_state_address1;
    sc_signal< sc_logic > grp_addRoundKey_fu_413_state_ce1;
    sc_signal< sc_logic > grp_addRoundKey_fu_413_state_we1;
    sc_signal< sc_lv<8> > grp_addRoundKey_fu_413_state_d1;
    sc_signal< sc_lv<4> > ap_phi_mux_i_0_phi_fu_372_p4;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_logic > grp_aes_round_fu_380_ap_start_reg;
    sc_signal< bool > ap_block_pp0_stage8_11001;
    sc_signal< bool > ap_block_pp0_stage9;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage10;
    sc_signal< bool > ap_block_pp0_stage10;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage11;
    sc_signal< bool > ap_block_pp0_stage11;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage12;
    sc_signal< bool > ap_block_pp0_stage12;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage13;
    sc_signal< bool > ap_block_pp0_stage13;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage14;
    sc_signal< bool > ap_block_pp0_stage14;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage15;
    sc_signal< bool > ap_block_pp0_stage15;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage16;
    sc_signal< bool > ap_block_pp0_stage16;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage17;
    sc_signal< bool > ap_block_pp0_stage17;
    sc_signal< bool > ap_block_pp0_stage18;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage3;
    sc_signal< bool > ap_block_pp0_stage3;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage4;
    sc_signal< bool > ap_block_pp0_stage4;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage7;
    sc_signal< bool > ap_block_pp0_stage7;
    sc_signal< bool > ap_block_pp0_stage8;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage1;
    sc_signal< bool > ap_block_pp0_stage1;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage2;
    sc_signal< bool > ap_block_pp0_stage2;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage5;
    sc_signal< bool > ap_block_pp0_stage5;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage6;
    sc_signal< bool > ap_block_pp0_stage6;
    sc_signal< sc_logic > grp_createRoundKey_fu_404_ap_start_reg;
    sc_signal< sc_lv<47> > ap_NS_fsm;
    sc_signal< sc_logic > ap_NS_fsm_state47;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_logic > ap_CS_fsm_state54;
    sc_signal< sc_lv<9> > zext_ln28_fu_657_p1;
    sc_signal< sc_logic > grp_addRoundKey_fu_413_ap_start_reg;
    sc_signal< sc_logic > ap_CS_fsm_state56;
    sc_signal< sc_lv<64> > zext_ln46_fu_668_p1;
    sc_signal< sc_lv<64> > zext_ln46_16_fu_673_p1;
    sc_signal< sc_lv<64> > zext_ln46_17_fu_678_p1;
    sc_signal< sc_lv<64> > zext_ln46_18_fu_683_p1;
    sc_signal< sc_lv<64> > zext_ln46_20_fu_688_p1;
    sc_signal< sc_lv<64> > zext_ln46_21_fu_692_p1;
    sc_signal< sc_lv<64> > zext_ln46_19_fu_696_p1;
    sc_signal< sc_lv<64> > zext_ln46_22_fu_700_p1;
    sc_signal< sc_lv<64> > zext_ln46_25_fu_704_p1;
    sc_signal< sc_lv<64> > zext_ln46_26_fu_708_p1;
    sc_signal< sc_lv<64> > zext_ln46_23_fu_712_p1;
    sc_signal< sc_lv<64> > zext_ln46_24_fu_716_p1;
    sc_signal< sc_lv<64> > zext_ln46_27_fu_720_p1;
    sc_signal< sc_lv<64> > zext_ln46_30_fu_725_p1;
    sc_signal< sc_lv<64> > zext_ln46_28_fu_730_p1;
    sc_signal< sc_lv<64> > zext_ln46_29_fu_735_p1;
    sc_signal< sc_lv<8> > shl_ln_fu_649_p3;
    sc_signal< bool > ap_block_state12_pp0_stage1_iter0;
    sc_signal< bool > ap_block_state31_pp0_stage1_iter1;
    sc_signal< bool > ap_block_pp0_stage1_subdone;
    sc_signal< bool > ap_block_state13_pp0_stage2_iter0;
    sc_signal< bool > ap_block_state32_pp0_stage2_iter1;
    sc_signal< bool > ap_block_pp0_stage2_subdone;
    sc_signal< bool > ap_block_state14_pp0_stage3_iter0;
    sc_signal< bool > ap_block_state33_pp0_stage3_iter1;
    sc_signal< bool > ap_block_pp0_stage3_subdone;
    sc_signal< bool > ap_block_state15_pp0_stage4_iter0;
    sc_signal< bool > ap_block_state34_pp0_stage4_iter1;
    sc_signal< bool > ap_block_pp0_stage4_subdone;
    sc_signal< bool > ap_block_state16_pp0_stage5_iter0;
    sc_signal< bool > ap_block_state35_pp0_stage5_iter1;
    sc_signal< bool > ap_block_pp0_stage5_subdone;
    sc_signal< bool > ap_block_state17_pp0_stage6_iter0;
    sc_signal< bool > ap_block_state36_pp0_stage6_iter1;
    sc_signal< bool > ap_block_pp0_stage6_subdone;
    sc_signal< bool > ap_block_state18_pp0_stage7_iter0;
    sc_signal< bool > ap_block_state37_pp0_stage7_iter1;
    sc_signal< bool > ap_block_pp0_stage7_subdone;
    sc_signal< bool > ap_block_pp0_stage9_subdone;
    sc_signal< bool > ap_block_state21_pp0_stage10_iter0;
    sc_signal< bool > ap_block_pp0_stage10_subdone;
    sc_signal< bool > ap_block_state22_pp0_stage11_iter0;
    sc_signal< bool > ap_block_pp0_stage11_subdone;
    sc_signal< bool > ap_block_state23_pp0_stage12_iter0;
    sc_signal< bool > ap_block_pp0_stage12_subdone;
    sc_signal< bool > ap_block_state24_pp0_stage13_iter0;
    sc_signal< bool > ap_block_pp0_stage13_subdone;
    sc_signal< bool > ap_block_state25_pp0_stage14_iter0;
    sc_signal< bool > ap_block_pp0_stage14_subdone;
    sc_signal< bool > ap_block_state26_pp0_stage15_iter0;
    sc_signal< bool > ap_block_pp0_stage15_subdone;
    sc_signal< bool > ap_block_state27_pp0_stage16_iter0;
    sc_signal< bool > ap_block_pp0_stage16_subdone;
    sc_signal< bool > ap_block_state28_pp0_stage17_iter0;
    sc_signal< bool > ap_block_pp0_stage17_subdone;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<47> ap_ST_fsm_state1;
    static const sc_lv<47> ap_ST_fsm_state2;
    static const sc_lv<47> ap_ST_fsm_state3;
    static const sc_lv<47> ap_ST_fsm_state4;
    static const sc_lv<47> ap_ST_fsm_state5;
    static const sc_lv<47> ap_ST_fsm_state6;
    static const sc_lv<47> ap_ST_fsm_state7;
    static const sc_lv<47> ap_ST_fsm_state8;
    static const sc_lv<47> ap_ST_fsm_state9;
    static const sc_lv<47> ap_ST_fsm_state10;
    static const sc_lv<47> ap_ST_fsm_pp0_stage0;
    static const sc_lv<47> ap_ST_fsm_pp0_stage1;
    static const sc_lv<47> ap_ST_fsm_pp0_stage2;
    static const sc_lv<47> ap_ST_fsm_pp0_stage3;
    static const sc_lv<47> ap_ST_fsm_pp0_stage4;
    static const sc_lv<47> ap_ST_fsm_pp0_stage5;
    static const sc_lv<47> ap_ST_fsm_pp0_stage6;
    static const sc_lv<47> ap_ST_fsm_pp0_stage7;
    static const sc_lv<47> ap_ST_fsm_pp0_stage8;
    static const sc_lv<47> ap_ST_fsm_pp0_stage9;
    static const sc_lv<47> ap_ST_fsm_pp0_stage10;
    static const sc_lv<47> ap_ST_fsm_pp0_stage11;
    static const sc_lv<47> ap_ST_fsm_pp0_stage12;
    static const sc_lv<47> ap_ST_fsm_pp0_stage13;
    static const sc_lv<47> ap_ST_fsm_pp0_stage14;
    static const sc_lv<47> ap_ST_fsm_pp0_stage15;
    static const sc_lv<47> ap_ST_fsm_pp0_stage16;
    static const sc_lv<47> ap_ST_fsm_pp0_stage17;
    static const sc_lv<47> ap_ST_fsm_pp0_stage18;
    static const sc_lv<47> ap_ST_fsm_state39;
    static const sc_lv<47> ap_ST_fsm_state40;
    static const sc_lv<47> ap_ST_fsm_state41;
    static const sc_lv<47> ap_ST_fsm_state42;
    static const sc_lv<47> ap_ST_fsm_state43;
    static const sc_lv<47> ap_ST_fsm_state44;
    static const sc_lv<47> ap_ST_fsm_state45;
    static const sc_lv<47> ap_ST_fsm_state46;
    static const sc_lv<47> ap_ST_fsm_state47;
    static const sc_lv<47> ap_ST_fsm_state48;
    static const sc_lv<47> ap_ST_fsm_state49;
    static const sc_lv<47> ap_ST_fsm_state50;
    static const sc_lv<47> ap_ST_fsm_state51;
    static const sc_lv<47> ap_ST_fsm_state52;
    static const sc_lv<47> ap_ST_fsm_state53;
    static const sc_lv<47> ap_ST_fsm_state54;
    static const sc_lv<47> ap_ST_fsm_state55;
    static const sc_lv<47> ap_ST_fsm_state56;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_13;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2D;
    static const sc_lv<32> ap_const_lv32_1E;
    static const sc_lv<32> ap_const_lv32_24;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<32> ap_const_lv32_25;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_1C;
    static const sc_lv<32> ap_const_lv32_1D;
    static const sc_lv<32> ap_const_lv32_20;
    static const sc_lv<32> ap_const_lv32_21;
    static const sc_lv<32> ap_const_lv32_22;
    static const sc_lv<32> ap_const_lv32_23;
    static const sc_lv<32> ap_const_lv32_26;
    static const sc_lv<32> ap_const_lv32_27;
    static const sc_lv<32> ap_const_lv32_28;
    static const sc_lv<32> ap_const_lv32_29;
    static const sc_lv<32> ap_const_lv32_2A;
    static const sc_lv<32> ap_const_lv32_2B;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_12;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<32> ap_const_lv32_14;
    static const sc_lv<32> ap_const_lv32_15;
    static const sc_lv<32> ap_const_lv32_16;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<32> ap_const_lv32_18;
    static const sc_lv<32> ap_const_lv32_19;
    static const sc_lv<32> ap_const_lv32_1A;
    static const sc_lv<32> ap_const_lv32_1B;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<32> ap_const_lv32_11;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_2C;
    static const sc_lv<9> ap_const_lv9_0;
    static const sc_lv<9> ap_const_lv9_A0;
    static const sc_lv<32> ap_const_lv32_2E;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<64> ap_const_lv64_1;
    static const sc_lv<64> ap_const_lv64_2;
    static const sc_lv<64> ap_const_lv64_3;
    static const sc_lv<64> ap_const_lv64_4;
    static const sc_lv<64> ap_const_lv64_5;
    static const sc_lv<64> ap_const_lv64_6;
    static const sc_lv<64> ap_const_lv64_7;
    static const sc_lv<64> ap_const_lv64_8;
    static const sc_lv<64> ap_const_lv64_9;
    static const sc_lv<64> ap_const_lv64_A;
    static const sc_lv<64> ap_const_lv64_B;
    static const sc_lv<64> ap_const_lv64_C;
    static const sc_lv<64> ap_const_lv64_D;
    static const sc_lv<64> ap_const_lv64_E;
    static const sc_lv<64> ap_const_lv64_F;
    static const sc_lv<4> ap_const_lv4_A;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<8> ap_const_lv8_0;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_pp0_stage1();
    void thread_ap_CS_fsm_pp0_stage10();
    void thread_ap_CS_fsm_pp0_stage11();
    void thread_ap_CS_fsm_pp0_stage12();
    void thread_ap_CS_fsm_pp0_stage13();
    void thread_ap_CS_fsm_pp0_stage14();
    void thread_ap_CS_fsm_pp0_stage15();
    void thread_ap_CS_fsm_pp0_stage16();
    void thread_ap_CS_fsm_pp0_stage17();
    void thread_ap_CS_fsm_pp0_stage18();
    void thread_ap_CS_fsm_pp0_stage2();
    void thread_ap_CS_fsm_pp0_stage3();
    void thread_ap_CS_fsm_pp0_stage4();
    void thread_ap_CS_fsm_pp0_stage5();
    void thread_ap_CS_fsm_pp0_stage6();
    void thread_ap_CS_fsm_pp0_stage7();
    void thread_ap_CS_fsm_pp0_stage8();
    void thread_ap_CS_fsm_pp0_stage9();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state39();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state40();
    void thread_ap_CS_fsm_state41();
    void thread_ap_CS_fsm_state42();
    void thread_ap_CS_fsm_state43();
    void thread_ap_CS_fsm_state44();
    void thread_ap_CS_fsm_state45();
    void thread_ap_CS_fsm_state46();
    void thread_ap_CS_fsm_state47();
    void thread_ap_CS_fsm_state48();
    void thread_ap_CS_fsm_state49();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state50();
    void thread_ap_CS_fsm_state51();
    void thread_ap_CS_fsm_state52();
    void thread_ap_CS_fsm_state53();
    void thread_ap_CS_fsm_state54();
    void thread_ap_CS_fsm_state55();
    void thread_ap_CS_fsm_state56();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_NS_fsm_state47();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_pp0_stage1();
    void thread_ap_block_pp0_stage10();
    void thread_ap_block_pp0_stage10_subdone();
    void thread_ap_block_pp0_stage11();
    void thread_ap_block_pp0_stage11_subdone();
    void thread_ap_block_pp0_stage12();
    void thread_ap_block_pp0_stage12_subdone();
    void thread_ap_block_pp0_stage13();
    void thread_ap_block_pp0_stage13_subdone();
    void thread_ap_block_pp0_stage14();
    void thread_ap_block_pp0_stage14_subdone();
    void thread_ap_block_pp0_stage15();
    void thread_ap_block_pp0_stage15_subdone();
    void thread_ap_block_pp0_stage16();
    void thread_ap_block_pp0_stage16_subdone();
    void thread_ap_block_pp0_stage17();
    void thread_ap_block_pp0_stage17_subdone();
    void thread_ap_block_pp0_stage18();
    void thread_ap_block_pp0_stage18_11001();
    void thread_ap_block_pp0_stage18_subdone();
    void thread_ap_block_pp0_stage1_subdone();
    void thread_ap_block_pp0_stage2();
    void thread_ap_block_pp0_stage2_subdone();
    void thread_ap_block_pp0_stage3();
    void thread_ap_block_pp0_stage3_subdone();
    void thread_ap_block_pp0_stage4();
    void thread_ap_block_pp0_stage4_subdone();
    void thread_ap_block_pp0_stage5();
    void thread_ap_block_pp0_stage5_subdone();
    void thread_ap_block_pp0_stage6();
    void thread_ap_block_pp0_stage6_subdone();
    void thread_ap_block_pp0_stage7();
    void thread_ap_block_pp0_stage7_subdone();
    void thread_ap_block_pp0_stage8();
    void thread_ap_block_pp0_stage8_11001();
    void thread_ap_block_pp0_stage8_subdone();
    void thread_ap_block_pp0_stage9();
    void thread_ap_block_pp0_stage9_11001();
    void thread_ap_block_pp0_stage9_subdone();
    void thread_ap_block_state11_pp0_stage0_iter0();
    void thread_ap_block_state12_pp0_stage1_iter0();
    void thread_ap_block_state13_pp0_stage2_iter0();
    void thread_ap_block_state14_pp0_stage3_iter0();
    void thread_ap_block_state15_pp0_stage4_iter0();
    void thread_ap_block_state16_pp0_stage5_iter0();
    void thread_ap_block_state17_pp0_stage6_iter0();
    void thread_ap_block_state18_pp0_stage7_iter0();
    void thread_ap_block_state19_pp0_stage8_iter0();
    void thread_ap_block_state20_pp0_stage9_iter0();
    void thread_ap_block_state21_pp0_stage10_iter0();
    void thread_ap_block_state22_pp0_stage11_iter0();
    void thread_ap_block_state23_pp0_stage12_iter0();
    void thread_ap_block_state24_pp0_stage13_iter0();
    void thread_ap_block_state25_pp0_stage14_iter0();
    void thread_ap_block_state26_pp0_stage15_iter0();
    void thread_ap_block_state27_pp0_stage16_iter0();
    void thread_ap_block_state28_pp0_stage17_iter0();
    void thread_ap_block_state29_pp0_stage18_iter0();
    void thread_ap_block_state30_pp0_stage0_iter1();
    void thread_ap_block_state31_pp0_stage1_iter1();
    void thread_ap_block_state32_pp0_stage2_iter1();
    void thread_ap_block_state33_pp0_stage3_iter1();
    void thread_ap_block_state34_pp0_stage4_iter1();
    void thread_ap_block_state35_pp0_stage5_iter1();
    void thread_ap_block_state36_pp0_stage6_iter1();
    void thread_ap_block_state37_pp0_stage7_iter1();
    void thread_ap_block_state38_pp0_stage8_iter1();
    void thread_ap_condition_pp0_exit_iter0_state11();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_phi_mux_i_0_phi_fu_372_p4();
    void thread_ap_ready();
    void thread_expandedKey_ce0();
    void thread_expandedKey_ce1();
    void thread_grp_addRoundKey_fu_413_ap_start();
    void thread_grp_aes_round_fu_380_ap_start();
    void thread_grp_createRoundKey_fu_404_ap_start();
    void thread_grp_createRoundKey_fu_404_ptr();
    void thread_i_fu_662_p2();
    void thread_icmp_ln26_fu_643_p2();
    void thread_sbox_address0();
    void thread_sbox_address1();
    void thread_sbox_ce0();
    void thread_sbox_ce1();
    void thread_shl_ln_fu_649_p3();
    void thread_state_addr_16_reg_754();
    void thread_state_addr_17_reg_759();
    void thread_state_addr_18_reg_764();
    void thread_state_addr_19_reg_769();
    void thread_state_addr_20_reg_774();
    void thread_state_addr_21_reg_789();
    void thread_state_addr_22_reg_794();
    void thread_state_addr_23_reg_809();
    void thread_state_addr_24_reg_814();
    void thread_state_addr_25_reg_829();
    void thread_state_addr_26_reg_834();
    void thread_state_addr_27_reg_849();
    void thread_state_addr_28_reg_854();
    void thread_state_addr_29_reg_869();
    void thread_state_addr_30_reg_874();
    void thread_state_addr_reg_749();
    void thread_state_address0();
    void thread_state_address1();
    void thread_state_ce0();
    void thread_state_ce1();
    void thread_state_d0();
    void thread_state_d1();
    void thread_state_we0();
    void thread_state_we1();
    void thread_zext_ln28_fu_657_p1();
    void thread_zext_ln46_16_fu_673_p1();
    void thread_zext_ln46_17_fu_678_p1();
    void thread_zext_ln46_18_fu_683_p1();
    void thread_zext_ln46_19_fu_696_p1();
    void thread_zext_ln46_20_fu_688_p1();
    void thread_zext_ln46_21_fu_692_p1();
    void thread_zext_ln46_22_fu_700_p1();
    void thread_zext_ln46_23_fu_712_p1();
    void thread_zext_ln46_24_fu_716_p1();
    void thread_zext_ln46_25_fu_704_p1();
    void thread_zext_ln46_26_fu_708_p1();
    void thread_zext_ln46_27_fu_720_p1();
    void thread_zext_ln46_28_fu_730_p1();
    void thread_zext_ln46_29_fu_735_p1();
    void thread_zext_ln46_30_fu_725_p1();
    void thread_zext_ln46_fu_668_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif

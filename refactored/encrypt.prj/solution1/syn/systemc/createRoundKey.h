// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _createRoundKey_HH_
#define _createRoundKey_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "encrypt_dut_mux_4cud.h"

namespace ap_rtl {

struct createRoundKey : public sc_module {
    // Port declarations 48
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_logic > ap_ce;
    sc_out< sc_lv<6> > expandedKey_0_address0;
    sc_out< sc_logic > expandedKey_0_ce0;
    sc_in< sc_lv<8> > expandedKey_0_q0;
    sc_out< sc_lv<6> > expandedKey_0_address1;
    sc_out< sc_logic > expandedKey_0_ce1;
    sc_in< sc_lv<8> > expandedKey_0_q1;
    sc_out< sc_lv<6> > expandedKey_1_address0;
    sc_out< sc_logic > expandedKey_1_ce0;
    sc_in< sc_lv<8> > expandedKey_1_q0;
    sc_out< sc_lv<6> > expandedKey_1_address1;
    sc_out< sc_logic > expandedKey_1_ce1;
    sc_in< sc_lv<8> > expandedKey_1_q1;
    sc_out< sc_lv<6> > expandedKey_2_address0;
    sc_out< sc_logic > expandedKey_2_ce0;
    sc_in< sc_lv<8> > expandedKey_2_q0;
    sc_out< sc_lv<6> > expandedKey_2_address1;
    sc_out< sc_logic > expandedKey_2_ce1;
    sc_in< sc_lv<8> > expandedKey_2_q1;
    sc_out< sc_lv<6> > expandedKey_3_address0;
    sc_out< sc_logic > expandedKey_3_ce0;
    sc_in< sc_lv<8> > expandedKey_3_q0;
    sc_out< sc_lv<6> > expandedKey_3_address1;
    sc_out< sc_logic > expandedKey_3_ce1;
    sc_in< sc_lv<8> > expandedKey_3_q1;
    sc_in< sc_lv<10> > ptr;
    sc_out< sc_lv<8> > ap_return_0;
    sc_out< sc_lv<8> > ap_return_1;
    sc_out< sc_lv<8> > ap_return_2;
    sc_out< sc_lv<8> > ap_return_3;
    sc_out< sc_lv<8> > ap_return_4;
    sc_out< sc_lv<8> > ap_return_5;
    sc_out< sc_lv<8> > ap_return_6;
    sc_out< sc_lv<8> > ap_return_7;
    sc_out< sc_lv<8> > ap_return_8;
    sc_out< sc_lv<8> > ap_return_9;
    sc_out< sc_lv<8> > ap_return_10;
    sc_out< sc_lv<8> > ap_return_11;
    sc_out< sc_lv<8> > ap_return_12;
    sc_out< sc_lv<8> > ap_return_13;
    sc_out< sc_lv<8> > ap_return_14;
    sc_out< sc_lv<8> > ap_return_15;


    // Module declarations
    createRoundKey(sc_module_name name);
    SC_HAS_PROCESS(createRoundKey);

    ~createRoundKey();

    sc_trace_file* mVcdFile;

    encrypt_dut_mux_4cud<1,1,8,8,8,8,32,8>* encrypt_dut_mux_4cud_U25;
    encrypt_dut_mux_4cud<1,1,8,8,8,8,32,8>* encrypt_dut_mux_4cud_U26;
    encrypt_dut_mux_4cud<1,1,8,8,8,8,32,8>* encrypt_dut_mux_4cud_U27;
    encrypt_dut_mux_4cud<1,1,8,8,8,8,32,8>* encrypt_dut_mux_4cud_U28;
    sc_signal< sc_lv<8> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage7;
    sc_signal< bool > ap_block_state8_pp0_stage7_iter0;
    sc_signal< bool > ap_block_pp0_stage7_11001;
    sc_signal< sc_lv<2> > trunc_ln318_fu_662_p1;
    sc_signal< sc_lv<2> > trunc_ln318_reg_1121;
    sc_signal< bool > ap_block_state1_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state9_pp0_stage0_iter1;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<8> > trunc_ln318_1_fu_666_p1;
    sc_signal< sc_lv<8> > trunc_ln318_1_reg_1126;
    sc_signal< sc_lv<32> > zext_ln318_fu_712_p1;
    sc_signal< sc_lv<32> > zext_ln318_reg_1184;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage1;
    sc_signal< bool > ap_block_state2_pp0_stage1_iter0;
    sc_signal< bool > ap_block_pp0_stage1_11001;
    sc_signal< sc_lv<8> > grp_fu_610_p6;
    sc_signal< sc_lv<8> > roundKey_0_write_as_reg_1192;
    sc_signal< sc_lv<8> > grp_fu_623_p6;
    sc_signal< sc_lv<8> > roundKey_4_write_as_reg_1197;
    sc_signal< sc_lv<8> > grp_fu_636_p6;
    sc_signal< sc_lv<8> > roundKey_8_write_as_reg_1242;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage2;
    sc_signal< bool > ap_block_state3_pp0_stage2_iter0;
    sc_signal< bool > ap_block_pp0_stage2_11001;
    sc_signal< sc_lv<8> > grp_fu_649_p6;
    sc_signal< sc_lv<8> > roundKey_12_write_a_reg_1247;
    sc_signal< sc_lv<8> > roundKey_1_write_as_reg_1292;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage3;
    sc_signal< bool > ap_block_state4_pp0_stage3_iter0;
    sc_signal< bool > ap_block_pp0_stage3_11001;
    sc_signal< sc_lv<8> > roundKey_5_write_as_reg_1297;
    sc_signal< sc_lv<8> > roundKey_9_write_as_reg_1342;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage4;
    sc_signal< bool > ap_block_state5_pp0_stage4_iter0;
    sc_signal< bool > ap_block_pp0_stage4_11001;
    sc_signal< sc_lv<8> > roundKey_13_write_a_reg_1347;
    sc_signal< sc_lv<8> > roundKey_2_write_as_reg_1392;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage5;
    sc_signal< bool > ap_block_state6_pp0_stage5_iter0;
    sc_signal< bool > ap_block_pp0_stage5_11001;
    sc_signal< sc_lv<8> > roundKey_6_write_as_reg_1397;
    sc_signal< sc_lv<8> > roundKey_10_write_a_reg_1442;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage6;
    sc_signal< bool > ap_block_state7_pp0_stage6_iter0;
    sc_signal< bool > ap_block_pp0_stage6_11001;
    sc_signal< sc_lv<8> > roundKey_14_write_a_reg_1447;
    sc_signal< sc_lv<8> > roundKey_3_write_as_reg_1492;
    sc_signal< sc_lv<8> > roundKey_7_write_as_reg_1497;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0_reg;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< bool > ap_block_pp0_stage7_subdone;
    sc_signal< sc_lv<64> > zext_ln318_1_fu_680_p1;
    sc_signal< sc_lv<64> > zext_ln318_2_fu_704_p1;
    sc_signal< sc_lv<64> > zext_ln318_3_fu_732_p1;
    sc_signal< bool > ap_block_pp0_stage1;
    sc_signal< sc_lv<64> > zext_ln318_4_fu_755_p1;
    sc_signal< sc_lv<64> > zext_ln318_5_fu_778_p1;
    sc_signal< bool > ap_block_pp0_stage2;
    sc_signal< sc_lv<64> > zext_ln318_6_fu_801_p1;
    sc_signal< sc_lv<64> > zext_ln318_7_fu_824_p1;
    sc_signal< bool > ap_block_pp0_stage3;
    sc_signal< sc_lv<64> > zext_ln318_8_fu_847_p1;
    sc_signal< sc_lv<64> > zext_ln318_9_fu_870_p1;
    sc_signal< bool > ap_block_pp0_stage4;
    sc_signal< sc_lv<64> > zext_ln318_10_fu_893_p1;
    sc_signal< sc_lv<64> > zext_ln318_11_fu_916_p1;
    sc_signal< bool > ap_block_pp0_stage5;
    sc_signal< sc_lv<64> > zext_ln318_12_fu_939_p1;
    sc_signal< sc_lv<64> > zext_ln318_13_fu_962_p1;
    sc_signal< bool > ap_block_pp0_stage6;
    sc_signal< sc_lv<64> > zext_ln318_14_fu_985_p1;
    sc_signal< sc_lv<64> > zext_ln318_15_fu_1008_p1;
    sc_signal< bool > ap_block_pp0_stage7;
    sc_signal< sc_lv<64> > zext_ln318_16_fu_1031_p1;
    sc_signal< sc_lv<32> > grp_fu_610_p5;
    sc_signal< sc_lv<32> > grp_fu_623_p5;
    sc_signal< sc_lv<6> > lshr_ln_fu_670_p4;
    sc_signal< sc_lv<8> > add_ln318_fu_688_p2;
    sc_signal< sc_lv<6> > lshr_ln318_1_fu_694_p4;
    sc_signal< sc_lv<8> > add_ln318_1_fu_717_p2;
    sc_signal< sc_lv<6> > lshr_ln318_2_fu_722_p4;
    sc_signal< sc_lv<8> > add_ln318_2_fu_740_p2;
    sc_signal< sc_lv<6> > lshr_ln318_3_fu_745_p4;
    sc_signal< sc_lv<8> > add_ln318_3_fu_763_p2;
    sc_signal< sc_lv<6> > lshr_ln318_4_fu_768_p4;
    sc_signal< sc_lv<8> > add_ln318_4_fu_786_p2;
    sc_signal< sc_lv<6> > lshr_ln318_5_fu_791_p4;
    sc_signal< sc_lv<8> > add_ln318_5_fu_809_p2;
    sc_signal< sc_lv<6> > lshr_ln318_6_fu_814_p4;
    sc_signal< sc_lv<8> > add_ln318_6_fu_832_p2;
    sc_signal< sc_lv<6> > lshr_ln318_7_fu_837_p4;
    sc_signal< sc_lv<8> > add_ln318_7_fu_855_p2;
    sc_signal< sc_lv<6> > lshr_ln318_8_fu_860_p4;
    sc_signal< sc_lv<8> > add_ln318_8_fu_878_p2;
    sc_signal< sc_lv<6> > lshr_ln318_9_fu_883_p4;
    sc_signal< sc_lv<8> > add_ln318_9_fu_901_p2;
    sc_signal< sc_lv<6> > lshr_ln318_s_fu_906_p4;
    sc_signal< sc_lv<8> > add_ln318_10_fu_924_p2;
    sc_signal< sc_lv<6> > lshr_ln318_10_fu_929_p4;
    sc_signal< sc_lv<8> > add_ln318_11_fu_947_p2;
    sc_signal< sc_lv<6> > lshr_ln318_11_fu_952_p4;
    sc_signal< sc_lv<8> > add_ln318_12_fu_970_p2;
    sc_signal< sc_lv<6> > lshr_ln318_12_fu_975_p4;
    sc_signal< sc_lv<8> > add_ln318_13_fu_993_p2;
    sc_signal< sc_lv<6> > lshr_ln318_13_fu_998_p4;
    sc_signal< sc_lv<8> > add_ln318_14_fu_1016_p2;
    sc_signal< sc_lv<6> > lshr_ln318_14_fu_1021_p4;
    sc_signal< sc_lv<8> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0_0to0;
    sc_signal< sc_logic > ap_reset_idle_pp0;
    sc_signal< sc_logic > ap_idle_pp0_1to1;
    sc_signal< bool > ap_block_pp0_stage1_subdone;
    sc_signal< bool > ap_block_pp0_stage2_subdone;
    sc_signal< bool > ap_block_pp0_stage3_subdone;
    sc_signal< bool > ap_block_pp0_stage4_subdone;
    sc_signal< bool > ap_block_pp0_stage5_subdone;
    sc_signal< bool > ap_block_pp0_stage6_subdone;
    sc_signal< sc_logic > ap_enable_pp0;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<8> ap_ST_fsm_pp0_stage0;
    static const sc_lv<8> ap_ST_fsm_pp0_stage1;
    static const sc_lv<8> ap_ST_fsm_pp0_stage2;
    static const sc_lv<8> ap_ST_fsm_pp0_stage3;
    static const sc_lv<8> ap_ST_fsm_pp0_stage4;
    static const sc_lv<8> ap_ST_fsm_pp0_stage5;
    static const sc_lv<8> ap_ST_fsm_pp0_stage6;
    static const sc_lv<8> ap_ST_fsm_pp0_stage7;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_0;
    static const bool ap_const_boolean_0;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<8> ap_const_lv8_1;
    static const sc_lv<8> ap_const_lv8_2;
    static const sc_lv<8> ap_const_lv8_3;
    static const sc_lv<8> ap_const_lv8_4;
    static const sc_lv<8> ap_const_lv8_5;
    static const sc_lv<8> ap_const_lv8_6;
    static const sc_lv<8> ap_const_lv8_7;
    static const sc_lv<8> ap_const_lv8_8;
    static const sc_lv<8> ap_const_lv8_9;
    static const sc_lv<8> ap_const_lv8_A;
    static const sc_lv<8> ap_const_lv8_B;
    static const sc_lv<8> ap_const_lv8_C;
    static const sc_lv<8> ap_const_lv8_D;
    static const sc_lv<8> ap_const_lv8_E;
    static const sc_lv<8> ap_const_lv8_F;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_add_ln318_10_fu_924_p2();
    void thread_add_ln318_11_fu_947_p2();
    void thread_add_ln318_12_fu_970_p2();
    void thread_add_ln318_13_fu_993_p2();
    void thread_add_ln318_14_fu_1016_p2();
    void thread_add_ln318_1_fu_717_p2();
    void thread_add_ln318_2_fu_740_p2();
    void thread_add_ln318_3_fu_763_p2();
    void thread_add_ln318_4_fu_786_p2();
    void thread_add_ln318_5_fu_809_p2();
    void thread_add_ln318_6_fu_832_p2();
    void thread_add_ln318_7_fu_855_p2();
    void thread_add_ln318_8_fu_878_p2();
    void thread_add_ln318_9_fu_901_p2();
    void thread_add_ln318_fu_688_p2();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_pp0_stage1();
    void thread_ap_CS_fsm_pp0_stage2();
    void thread_ap_CS_fsm_pp0_stage3();
    void thread_ap_CS_fsm_pp0_stage4();
    void thread_ap_CS_fsm_pp0_stage5();
    void thread_ap_CS_fsm_pp0_stage6();
    void thread_ap_CS_fsm_pp0_stage7();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_pp0_stage1();
    void thread_ap_block_pp0_stage1_11001();
    void thread_ap_block_pp0_stage1_subdone();
    void thread_ap_block_pp0_stage2();
    void thread_ap_block_pp0_stage2_11001();
    void thread_ap_block_pp0_stage2_subdone();
    void thread_ap_block_pp0_stage3();
    void thread_ap_block_pp0_stage3_11001();
    void thread_ap_block_pp0_stage3_subdone();
    void thread_ap_block_pp0_stage4();
    void thread_ap_block_pp0_stage4_11001();
    void thread_ap_block_pp0_stage4_subdone();
    void thread_ap_block_pp0_stage5();
    void thread_ap_block_pp0_stage5_11001();
    void thread_ap_block_pp0_stage5_subdone();
    void thread_ap_block_pp0_stage6();
    void thread_ap_block_pp0_stage6_11001();
    void thread_ap_block_pp0_stage6_subdone();
    void thread_ap_block_pp0_stage7();
    void thread_ap_block_pp0_stage7_11001();
    void thread_ap_block_pp0_stage7_subdone();
    void thread_ap_block_state1_pp0_stage0_iter0();
    void thread_ap_block_state2_pp0_stage1_iter0();
    void thread_ap_block_state3_pp0_stage2_iter0();
    void thread_ap_block_state4_pp0_stage3_iter0();
    void thread_ap_block_state5_pp0_stage4_iter0();
    void thread_ap_block_state6_pp0_stage5_iter0();
    void thread_ap_block_state7_pp0_stage6_iter0();
    void thread_ap_block_state8_pp0_stage7_iter0();
    void thread_ap_block_state9_pp0_stage0_iter1();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_enable_reg_pp0_iter0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_idle_pp0_0to0();
    void thread_ap_idle_pp0_1to1();
    void thread_ap_ready();
    void thread_ap_reset_idle_pp0();
    void thread_ap_return_0();
    void thread_ap_return_1();
    void thread_ap_return_10();
    void thread_ap_return_11();
    void thread_ap_return_12();
    void thread_ap_return_13();
    void thread_ap_return_14();
    void thread_ap_return_15();
    void thread_ap_return_2();
    void thread_ap_return_3();
    void thread_ap_return_4();
    void thread_ap_return_5();
    void thread_ap_return_6();
    void thread_ap_return_7();
    void thread_ap_return_8();
    void thread_ap_return_9();
    void thread_expandedKey_0_address0();
    void thread_expandedKey_0_address1();
    void thread_expandedKey_0_ce0();
    void thread_expandedKey_0_ce1();
    void thread_expandedKey_1_address0();
    void thread_expandedKey_1_address1();
    void thread_expandedKey_1_ce0();
    void thread_expandedKey_1_ce1();
    void thread_expandedKey_2_address0();
    void thread_expandedKey_2_address1();
    void thread_expandedKey_2_ce0();
    void thread_expandedKey_2_ce1();
    void thread_expandedKey_3_address0();
    void thread_expandedKey_3_address1();
    void thread_expandedKey_3_ce0();
    void thread_expandedKey_3_ce1();
    void thread_grp_fu_610_p5();
    void thread_grp_fu_623_p5();
    void thread_lshr_ln318_10_fu_929_p4();
    void thread_lshr_ln318_11_fu_952_p4();
    void thread_lshr_ln318_12_fu_975_p4();
    void thread_lshr_ln318_13_fu_998_p4();
    void thread_lshr_ln318_14_fu_1021_p4();
    void thread_lshr_ln318_1_fu_694_p4();
    void thread_lshr_ln318_2_fu_722_p4();
    void thread_lshr_ln318_3_fu_745_p4();
    void thread_lshr_ln318_4_fu_768_p4();
    void thread_lshr_ln318_5_fu_791_p4();
    void thread_lshr_ln318_6_fu_814_p4();
    void thread_lshr_ln318_7_fu_837_p4();
    void thread_lshr_ln318_8_fu_860_p4();
    void thread_lshr_ln318_9_fu_883_p4();
    void thread_lshr_ln318_s_fu_906_p4();
    void thread_lshr_ln_fu_670_p4();
    void thread_trunc_ln318_1_fu_666_p1();
    void thread_trunc_ln318_fu_662_p1();
    void thread_zext_ln318_10_fu_893_p1();
    void thread_zext_ln318_11_fu_916_p1();
    void thread_zext_ln318_12_fu_939_p1();
    void thread_zext_ln318_13_fu_962_p1();
    void thread_zext_ln318_14_fu_985_p1();
    void thread_zext_ln318_15_fu_1008_p1();
    void thread_zext_ln318_16_fu_1031_p1();
    void thread_zext_ln318_1_fu_680_p1();
    void thread_zext_ln318_2_fu_704_p1();
    void thread_zext_ln318_3_fu_732_p1();
    void thread_zext_ln318_4_fu_755_p1();
    void thread_zext_ln318_5_fu_778_p1();
    void thread_zext_ln318_6_fu_801_p1();
    void thread_zext_ln318_7_fu_824_p1();
    void thread_zext_ln318_8_fu_847_p1();
    void thread_zext_ln318_9_fu_870_p1();
    void thread_zext_ln318_fu_712_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif

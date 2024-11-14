// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _aes_round_HH_
#define _aes_round_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "mixColumns.h"
#include "core_sbox.h"

namespace ap_rtl {

struct aes_round : public sc_module {
    // Port declarations 14
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
    sc_out< sc_lv<4> > roundKey_address0;
    sc_out< sc_logic > roundKey_ce0;
    sc_in< sc_lv<8> > roundKey_q0;


    // Module declarations
    aes_round(sc_module_name name);
    SC_HAS_PROCESS(aes_round);

    ~aes_round();

    sc_trace_file* mVcdFile;

    core_sbox* sbox_U;
    mixColumns* grp_mixColumns_fu_161;
    sc_signal< sc_lv<11> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<8> > sbox_address0;
    sc_signal< sc_logic > sbox_ce0;
    sc_signal< sc_lv<8> > sbox_q0;
    sc_signal< sc_lv<5> > i_fu_173_p2;
    sc_signal< sc_lv<5> > i_reg_258;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<4> > state_addr_3_reg_263;
    sc_signal< sc_lv<1> > icmp_ln183_fu_167_p2;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<3> > k_fu_195_p2;
    sc_signal< sc_lv<3> > k_reg_286;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<8> > tmp_reg_291;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<4> > sext_ln202_fu_201_p1;
    sc_signal< sc_lv<4> > sext_ln202_reg_296;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<3> > j_fu_211_p2;
    sc_signal< sc_lv<3> > j_reg_304;
    sc_signal< sc_lv<1> > icmp_ln202_fu_205_p2;
    sc_signal< sc_lv<5> > i_6_fu_236_p2;
    sc_signal< sc_lv<5> > i_6_reg_317;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_lv<4> > state_addr_4_reg_322;
    sc_signal< sc_lv<1> > icmp_ln228_fu_230_p2;
    sc_signal< sc_logic > grp_mixColumns_fu_161_ap_start;
    sc_signal< sc_logic > grp_mixColumns_fu_161_ap_done;
    sc_signal< sc_logic > grp_mixColumns_fu_161_ap_idle;
    sc_signal< sc_logic > grp_mixColumns_fu_161_ap_ready;
    sc_signal< sc_lv<4> > grp_mixColumns_fu_161_state_address0;
    sc_signal< sc_logic > grp_mixColumns_fu_161_state_ce0;
    sc_signal< sc_logic > grp_mixColumns_fu_161_state_we0;
    sc_signal< sc_lv<8> > grp_mixColumns_fu_161_state_d0;
    sc_signal< sc_lv<5> > i_0_i_reg_117;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<3> > k_0_i_reg_128;
    sc_signal< sc_lv<3> > j_0_i_reg_139;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<5> > i_0_i4_reg_150;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_logic > grp_mixColumns_fu_161_ap_start_reg;
    sc_signal< sc_lv<1> > icmp_ln199_fu_189_p2;
    sc_signal< sc_lv<64> > zext_ln184_fu_179_p1;
    sc_signal< sc_lv<64> > zext_ln71_fu_184_p1;
    sc_signal< sc_lv<64> > zext_ln203_fu_221_p1;
    sc_signal< sc_lv<64> > zext_ln203_1_fu_226_p1;
    sc_signal< sc_lv<64> > zext_ln229_fu_242_p1;
    sc_signal< sc_lv<8> > xor_ln229_fu_248_p2;
    sc_signal< sc_lv<4> > sext_ln203_fu_217_p1;
    sc_signal< sc_lv<11> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<11> ap_ST_fsm_state1;
    static const sc_lv<11> ap_ST_fsm_state2;
    static const sc_lv<11> ap_ST_fsm_state3;
    static const sc_lv<11> ap_ST_fsm_state4;
    static const sc_lv<11> ap_ST_fsm_state5;
    static const sc_lv<11> ap_ST_fsm_state6;
    static const sc_lv<11> ap_ST_fsm_state7;
    static const sc_lv<11> ap_ST_fsm_state8;
    static const sc_lv<11> ap_ST_fsm_state9;
    static const sc_lv<11> ap_ST_fsm_state10;
    static const sc_lv<11> ap_ST_fsm_state11;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<3> ap_const_lv3_4;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<64> ap_const_lv64_C;
    static const sc_lv<64> ap_const_lv64_F;
    static const sc_lv<5> ap_const_lv5_10;
    static const sc_lv<5> ap_const_lv5_1;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<3> ap_const_lv3_7;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state11();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_grp_mixColumns_fu_161_ap_start();
    void thread_i_6_fu_236_p2();
    void thread_i_fu_173_p2();
    void thread_icmp_ln183_fu_167_p2();
    void thread_icmp_ln199_fu_189_p2();
    void thread_icmp_ln202_fu_205_p2();
    void thread_icmp_ln228_fu_230_p2();
    void thread_j_fu_211_p2();
    void thread_k_fu_195_p2();
    void thread_roundKey_address0();
    void thread_roundKey_ce0();
    void thread_sbox_address0();
    void thread_sbox_ce0();
    void thread_sext_ln202_fu_201_p1();
    void thread_sext_ln203_fu_217_p1();
    void thread_state_address0();
    void thread_state_ce0();
    void thread_state_d0();
    void thread_state_we0();
    void thread_xor_ln229_fu_248_p2();
    void thread_zext_ln184_fu_179_p1();
    void thread_zext_ln203_1_fu_226_p1();
    void thread_zext_ln203_fu_221_p1();
    void thread_zext_ln229_fu_242_p1();
    void thread_zext_ln71_fu_184_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _aes_encrypt_HH_
#define _aes_encrypt_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "aes_main.h"
#include "aes_encrypt_block.h"

namespace ap_rtl {

struct aes_encrypt : public sc_module {
    // Port declarations 13
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<4> > input_r_address0;
    sc_out< sc_logic > input_r_ce0;
    sc_in< sc_lv<8> > input_r_q0;
    sc_out< sc_lv<4> > output_r_address0;
    sc_out< sc_logic > output_r_ce0;
    sc_out< sc_logic > output_r_we0;
    sc_out< sc_lv<8> > output_r_d0;


    // Module declarations
    aes_encrypt(sc_module_name name);
    SC_HAS_PROCESS(aes_encrypt);

    ~aes_encrypt();

    sc_trace_file* mVcdFile;

    aes_encrypt_block* block_U;
    aes_main* grp_aes_main_fu_123;
    sc_signal< sc_lv<8> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<4> > zext_ln47_fu_132_p1;
    sc_signal< sc_lv<4> > zext_ln47_reg_282;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<3> > i_fu_142_p2;
    sc_signal< sc_lv<3> > i_reg_290;
    sc_signal< sc_lv<4> > shl_ln_fu_152_p3;
    sc_signal< sc_lv<4> > shl_ln_reg_295;
    sc_signal< sc_lv<1> > icmp_ln47_fu_136_p2;
    sc_signal< sc_lv<3> > j_fu_170_p2;
    sc_signal< sc_lv<3> > j_reg_303;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<1> > icmp_ln50_fu_164_p2;
    sc_signal< sc_lv<4> > add_ln52_1_fu_198_p2;
    sc_signal< sc_lv<4> > add_ln52_1_reg_313;
    sc_signal< sc_lv<4> > zext_ln63_fu_207_p1;
    sc_signal< sc_lv<4> > zext_ln63_reg_318;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<3> > i_15_fu_217_p2;
    sc_signal< sc_lv<3> > i_15_reg_326;
    sc_signal< sc_lv<4> > shl_ln3_fu_227_p3;
    sc_signal< sc_lv<4> > shl_ln3_reg_331;
    sc_signal< sc_lv<1> > icmp_ln63_fu_211_p2;
    sc_signal< sc_lv<3> > j_4_fu_245_p2;
    sc_signal< sc_lv<3> > j_4_reg_339;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<1> > icmp_ln66_fu_239_p2;
    sc_signal< sc_lv<4> > add_ln68_1_fu_273_p2;
    sc_signal< sc_lv<4> > add_ln68_1_reg_349;
    sc_signal< sc_lv<4> > block_address0;
    sc_signal< sc_logic > block_ce0;
    sc_signal< sc_logic > block_we0;
    sc_signal< sc_lv<8> > block_d0;
    sc_signal< sc_lv<8> > block_q0;
    sc_signal< sc_logic > block_ce1;
    sc_signal< sc_logic > block_we1;
    sc_signal< sc_lv<8> > block_q1;
    sc_signal< sc_logic > grp_aes_main_fu_123_ap_start;
    sc_signal< sc_logic > grp_aes_main_fu_123_ap_done;
    sc_signal< sc_logic > grp_aes_main_fu_123_ap_idle;
    sc_signal< sc_logic > grp_aes_main_fu_123_ap_ready;
    sc_signal< sc_lv<4> > grp_aes_main_fu_123_state_address0;
    sc_signal< sc_logic > grp_aes_main_fu_123_state_ce0;
    sc_signal< sc_logic > grp_aes_main_fu_123_state_we0;
    sc_signal< sc_lv<8> > grp_aes_main_fu_123_state_d0;
    sc_signal< sc_lv<4> > grp_aes_main_fu_123_state_address1;
    sc_signal< sc_logic > grp_aes_main_fu_123_state_ce1;
    sc_signal< sc_logic > grp_aes_main_fu_123_state_we1;
    sc_signal< sc_lv<8> > grp_aes_main_fu_123_state_d1;
    sc_signal< sc_lv<3> > i_0_reg_79;
    sc_signal< sc_lv<3> > j_0_reg_90;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<3> > i_1_reg_101;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<3> > j_1_reg_112;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_logic > grp_aes_main_fu_123_ap_start_reg;
    sc_signal< sc_lv<64> > zext_ln52_fu_181_p1;
    sc_signal< sc_lv<64> > zext_ln52_1_fu_203_p1;
    sc_signal< sc_lv<64> > zext_ln68_fu_268_p1;
    sc_signal< sc_lv<64> > zext_ln68_1_fu_278_p1;
    sc_signal< sc_lv<2> > trunc_ln52_fu_148_p1;
    sc_signal< sc_lv<4> > zext_ln50_fu_160_p1;
    sc_signal< sc_lv<4> > add_ln52_fu_176_p2;
    sc_signal< sc_lv<2> > trunc_ln52_1_fu_186_p1;
    sc_signal< sc_lv<4> > shl_ln52_1_fu_190_p3;
    sc_signal< sc_lv<2> > trunc_ln68_fu_223_p1;
    sc_signal< sc_lv<2> > trunc_ln68_1_fu_251_p1;
    sc_signal< sc_lv<4> > shl_ln68_1_fu_255_p3;
    sc_signal< sc_lv<4> > add_ln68_fu_263_p2;
    sc_signal< sc_lv<4> > zext_ln66_fu_235_p1;
    sc_signal< sc_lv<8> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<8> ap_ST_fsm_state1;
    static const sc_lv<8> ap_ST_fsm_state2;
    static const sc_lv<8> ap_ST_fsm_state3;
    static const sc_lv<8> ap_ST_fsm_state4;
    static const sc_lv<8> ap_ST_fsm_state5;
    static const sc_lv<8> ap_ST_fsm_state6;
    static const sc_lv<8> ap_ST_fsm_state7;
    static const sc_lv<8> ap_ST_fsm_state8;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<3> ap_const_lv3_4;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<2> ap_const_lv2_0;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_add_ln52_1_fu_198_p2();
    void thread_add_ln52_fu_176_p2();
    void thread_add_ln68_1_fu_273_p2();
    void thread_add_ln68_fu_263_p2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_block_address0();
    void thread_block_ce0();
    void thread_block_ce1();
    void thread_block_d0();
    void thread_block_we0();
    void thread_block_we1();
    void thread_grp_aes_main_fu_123_ap_start();
    void thread_i_15_fu_217_p2();
    void thread_i_fu_142_p2();
    void thread_icmp_ln47_fu_136_p2();
    void thread_icmp_ln50_fu_164_p2();
    void thread_icmp_ln63_fu_211_p2();
    void thread_icmp_ln66_fu_239_p2();
    void thread_input_r_address0();
    void thread_input_r_ce0();
    void thread_j_4_fu_245_p2();
    void thread_j_fu_170_p2();
    void thread_output_r_address0();
    void thread_output_r_ce0();
    void thread_output_r_d0();
    void thread_output_r_we0();
    void thread_shl_ln3_fu_227_p3();
    void thread_shl_ln52_1_fu_190_p3();
    void thread_shl_ln68_1_fu_255_p3();
    void thread_shl_ln_fu_152_p3();
    void thread_trunc_ln52_1_fu_186_p1();
    void thread_trunc_ln52_fu_148_p1();
    void thread_trunc_ln68_1_fu_251_p1();
    void thread_trunc_ln68_fu_223_p1();
    void thread_zext_ln47_fu_132_p1();
    void thread_zext_ln50_fu_160_p1();
    void thread_zext_ln52_1_fu_203_p1();
    void thread_zext_ln52_fu_181_p1();
    void thread_zext_ln63_fu_207_p1();
    void thread_zext_ln66_fu_235_p1();
    void thread_zext_ln68_1_fu_278_p1();
    void thread_zext_ln68_fu_268_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif

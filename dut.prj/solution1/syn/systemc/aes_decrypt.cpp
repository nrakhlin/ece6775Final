// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "aes_decrypt.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic aes_decrypt::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic aes_decrypt::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<8> aes_decrypt::ap_ST_fsm_state1 = "1";
const sc_lv<8> aes_decrypt::ap_ST_fsm_state2 = "10";
const sc_lv<8> aes_decrypt::ap_ST_fsm_state3 = "100";
const sc_lv<8> aes_decrypt::ap_ST_fsm_state4 = "1000";
const sc_lv<8> aes_decrypt::ap_ST_fsm_state5 = "10000";
const sc_lv<8> aes_decrypt::ap_ST_fsm_state6 = "100000";
const sc_lv<8> aes_decrypt::ap_ST_fsm_state7 = "1000000";
const sc_lv<8> aes_decrypt::ap_ST_fsm_state8 = "10000000";
const sc_lv<32> aes_decrypt::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> aes_decrypt::ap_const_lv32_1 = "1";
const sc_lv<1> aes_decrypt::ap_const_lv1_0 = "0";
const sc_lv<32> aes_decrypt::ap_const_lv32_2 = "10";
const sc_lv<32> aes_decrypt::ap_const_lv32_5 = "101";
const sc_lv<32> aes_decrypt::ap_const_lv32_6 = "110";
const sc_lv<3> aes_decrypt::ap_const_lv3_0 = "000";
const sc_lv<1> aes_decrypt::ap_const_lv1_1 = "1";
const sc_lv<32> aes_decrypt::ap_const_lv32_3 = "11";
const sc_lv<32> aes_decrypt::ap_const_lv32_4 = "100";
const sc_lv<32> aes_decrypt::ap_const_lv32_7 = "111";
const sc_lv<3> aes_decrypt::ap_const_lv3_4 = "100";
const sc_lv<3> aes_decrypt::ap_const_lv3_1 = "1";
const sc_lv<2> aes_decrypt::ap_const_lv2_0 = "00";
const bool aes_decrypt::ap_const_boolean_1 = true;

aes_decrypt::aes_decrypt(sc_module_name name) : sc_module(name), mVcdFile(0) {
    ciphertext_U = new aes_decrypt_ciphedEe("ciphertext_U");
    ciphertext_U->clk(ap_clk);
    ciphertext_U->reset(ap_rst);
    ciphertext_U->address0(ciphertext_address0);
    ciphertext_U->ce0(ciphertext_ce0);
    ciphertext_U->q0(ciphertext_q0);
    block_U = new aes_invMain_roundcud("block_U");
    block_U->clk(ap_clk);
    block_U->reset(ap_rst);
    block_U->address0(block_address0);
    block_U->ce0(block_ce0);
    block_U->we0(block_we0);
    block_U->d0(block_d0);
    block_U->q0(block_q0);
    grp_aes_invMain_fu_123 = new aes_invMain("grp_aes_invMain_fu_123");
    grp_aes_invMain_fu_123->ap_clk(ap_clk);
    grp_aes_invMain_fu_123->ap_rst(ap_rst);
    grp_aes_invMain_fu_123->ap_start(grp_aes_invMain_fu_123_ap_start);
    grp_aes_invMain_fu_123->ap_done(grp_aes_invMain_fu_123_ap_done);
    grp_aes_invMain_fu_123->ap_idle(grp_aes_invMain_fu_123_ap_idle);
    grp_aes_invMain_fu_123->ap_ready(grp_aes_invMain_fu_123_ap_ready);
    grp_aes_invMain_fu_123->state_address0(grp_aes_invMain_fu_123_state_address0);
    grp_aes_invMain_fu_123->state_ce0(grp_aes_invMain_fu_123_state_ce0);
    grp_aes_invMain_fu_123->state_we0(grp_aes_invMain_fu_123_state_we0);
    grp_aes_invMain_fu_123->state_d0(grp_aes_invMain_fu_123_state_d0);
    grp_aes_invMain_fu_123->state_q0(block_q0);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_add_ln675_1_fu_198_p2);
    sensitive << ( zext_ln671_reg_282 );
    sensitive << ( shl_ln675_1_fu_190_p3 );

    SC_METHOD(thread_add_ln675_fu_176_p2);
    sensitive << ( shl_ln_reg_295 );
    sensitive << ( zext_ln674_fu_160_p1 );

    SC_METHOD(thread_add_ln689_1_fu_273_p2);
    sensitive << ( shl_ln2_reg_331 );
    sensitive << ( zext_ln688_fu_235_p1 );

    SC_METHOD(thread_add_ln689_fu_263_p2);
    sensitive << ( zext_ln685_reg_318 );
    sensitive << ( shl_ln689_1_fu_255_p3 );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state3);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state4);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state5);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state6);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state7);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state8);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( icmp_ln685_fu_211_p2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( icmp_ln685_fu_211_p2 );

    SC_METHOD(thread_block_address0);
    sensitive << ( ap_CS_fsm_state7 );
    sensitive << ( grp_aes_invMain_fu_123_state_address0 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( zext_ln675_1_fu_203_p1 );
    sensitive << ( zext_ln689_fu_268_p1 );

    SC_METHOD(thread_block_ce0);
    sensitive << ( ap_CS_fsm_state7 );
    sensitive << ( grp_aes_invMain_fu_123_state_ce0 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_block_d0);
    sensitive << ( ciphertext_q0 );
    sensitive << ( grp_aes_invMain_fu_123_state_d0 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_block_we0);
    sensitive << ( grp_aes_invMain_fu_123_state_we0 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_ciphertext_address0);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( zext_ln675_fu_181_p1 );

    SC_METHOD(thread_ciphertext_ce0);
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_grp_aes_invMain_fu_123_ap_start);
    sensitive << ( grp_aes_invMain_fu_123_ap_start_reg );

    SC_METHOD(thread_i_7_fu_217_p2);
    sensitive << ( i_1_reg_101 );

    SC_METHOD(thread_i_fu_142_p2);
    sensitive << ( i_0_reg_79 );

    SC_METHOD(thread_icmp_ln671_fu_136_p2);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( i_0_reg_79 );

    SC_METHOD(thread_icmp_ln674_fu_164_p2);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( j_0_reg_90 );

    SC_METHOD(thread_icmp_ln685_fu_211_p2);
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( i_1_reg_101 );

    SC_METHOD(thread_icmp_ln688_fu_239_p2);
    sensitive << ( ap_CS_fsm_state7 );
    sensitive << ( j_1_reg_112 );

    SC_METHOD(thread_j_3_fu_245_p2);
    sensitive << ( j_1_reg_112 );

    SC_METHOD(thread_j_fu_170_p2);
    sensitive << ( j_0_reg_90 );

    SC_METHOD(thread_output_r_address0);
    sensitive << ( ap_CS_fsm_state8 );
    sensitive << ( zext_ln689_1_fu_278_p1 );

    SC_METHOD(thread_output_r_ce0);
    sensitive << ( ap_CS_fsm_state8 );

    SC_METHOD(thread_output_r_d0);
    sensitive << ( block_q0 );
    sensitive << ( ap_CS_fsm_state8 );

    SC_METHOD(thread_output_r_we0);
    sensitive << ( ap_CS_fsm_state8 );

    SC_METHOD(thread_shl_ln2_fu_227_p3);
    sensitive << ( trunc_ln689_fu_223_p1 );

    SC_METHOD(thread_shl_ln675_1_fu_190_p3);
    sensitive << ( trunc_ln675_1_fu_186_p1 );

    SC_METHOD(thread_shl_ln689_1_fu_255_p3);
    sensitive << ( trunc_ln689_1_fu_251_p1 );

    SC_METHOD(thread_shl_ln_fu_152_p3);
    sensitive << ( trunc_ln675_fu_148_p1 );

    SC_METHOD(thread_trunc_ln675_1_fu_186_p1);
    sensitive << ( j_0_reg_90 );

    SC_METHOD(thread_trunc_ln675_fu_148_p1);
    sensitive << ( i_0_reg_79 );

    SC_METHOD(thread_trunc_ln689_1_fu_251_p1);
    sensitive << ( j_1_reg_112 );

    SC_METHOD(thread_trunc_ln689_fu_223_p1);
    sensitive << ( i_1_reg_101 );

    SC_METHOD(thread_zext_ln671_fu_132_p1);
    sensitive << ( i_0_reg_79 );

    SC_METHOD(thread_zext_ln674_fu_160_p1);
    sensitive << ( j_0_reg_90 );

    SC_METHOD(thread_zext_ln675_1_fu_203_p1);
    sensitive << ( add_ln675_1_reg_313 );

    SC_METHOD(thread_zext_ln675_fu_181_p1);
    sensitive << ( add_ln675_fu_176_p2 );

    SC_METHOD(thread_zext_ln685_fu_207_p1);
    sensitive << ( i_1_reg_101 );

    SC_METHOD(thread_zext_ln688_fu_235_p1);
    sensitive << ( j_1_reg_112 );

    SC_METHOD(thread_zext_ln689_1_fu_278_p1);
    sensitive << ( add_ln689_1_reg_349 );

    SC_METHOD(thread_zext_ln689_fu_268_p1);
    sensitive << ( add_ln689_fu_263_p2 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln671_fu_136_p2 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( icmp_ln674_fu_164_p2 );
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( icmp_ln685_fu_211_p2 );
    sensitive << ( ap_CS_fsm_state7 );
    sensitive << ( icmp_ln688_fu_239_p2 );
    sensitive << ( grp_aes_invMain_fu_123_ap_done );
    sensitive << ( ap_CS_fsm_state5 );

    ap_CS_fsm = "00000001";
    grp_aes_invMain_fu_123_ap_start_reg = SC_LOGIC_0;
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "aes_decrypt_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, output_r_address0, "(port)output_r_address0");
    sc_trace(mVcdFile, output_r_ce0, "(port)output_r_ce0");
    sc_trace(mVcdFile, output_r_we0, "(port)output_r_we0");
    sc_trace(mVcdFile, output_r_d0, "(port)output_r_d0");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, ciphertext_address0, "ciphertext_address0");
    sc_trace(mVcdFile, ciphertext_ce0, "ciphertext_ce0");
    sc_trace(mVcdFile, ciphertext_q0, "ciphertext_q0");
    sc_trace(mVcdFile, zext_ln671_fu_132_p1, "zext_ln671_fu_132_p1");
    sc_trace(mVcdFile, zext_ln671_reg_282, "zext_ln671_reg_282");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, i_fu_142_p2, "i_fu_142_p2");
    sc_trace(mVcdFile, i_reg_290, "i_reg_290");
    sc_trace(mVcdFile, shl_ln_fu_152_p3, "shl_ln_fu_152_p3");
    sc_trace(mVcdFile, shl_ln_reg_295, "shl_ln_reg_295");
    sc_trace(mVcdFile, icmp_ln671_fu_136_p2, "icmp_ln671_fu_136_p2");
    sc_trace(mVcdFile, j_fu_170_p2, "j_fu_170_p2");
    sc_trace(mVcdFile, j_reg_303, "j_reg_303");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, icmp_ln674_fu_164_p2, "icmp_ln674_fu_164_p2");
    sc_trace(mVcdFile, add_ln675_1_fu_198_p2, "add_ln675_1_fu_198_p2");
    sc_trace(mVcdFile, add_ln675_1_reg_313, "add_ln675_1_reg_313");
    sc_trace(mVcdFile, zext_ln685_fu_207_p1, "zext_ln685_fu_207_p1");
    sc_trace(mVcdFile, zext_ln685_reg_318, "zext_ln685_reg_318");
    sc_trace(mVcdFile, ap_CS_fsm_state6, "ap_CS_fsm_state6");
    sc_trace(mVcdFile, i_7_fu_217_p2, "i_7_fu_217_p2");
    sc_trace(mVcdFile, i_7_reg_326, "i_7_reg_326");
    sc_trace(mVcdFile, shl_ln2_fu_227_p3, "shl_ln2_fu_227_p3");
    sc_trace(mVcdFile, shl_ln2_reg_331, "shl_ln2_reg_331");
    sc_trace(mVcdFile, icmp_ln685_fu_211_p2, "icmp_ln685_fu_211_p2");
    sc_trace(mVcdFile, j_3_fu_245_p2, "j_3_fu_245_p2");
    sc_trace(mVcdFile, j_3_reg_339, "j_3_reg_339");
    sc_trace(mVcdFile, ap_CS_fsm_state7, "ap_CS_fsm_state7");
    sc_trace(mVcdFile, icmp_ln688_fu_239_p2, "icmp_ln688_fu_239_p2");
    sc_trace(mVcdFile, add_ln689_1_fu_273_p2, "add_ln689_1_fu_273_p2");
    sc_trace(mVcdFile, add_ln689_1_reg_349, "add_ln689_1_reg_349");
    sc_trace(mVcdFile, block_address0, "block_address0");
    sc_trace(mVcdFile, block_ce0, "block_ce0");
    sc_trace(mVcdFile, block_we0, "block_we0");
    sc_trace(mVcdFile, block_d0, "block_d0");
    sc_trace(mVcdFile, block_q0, "block_q0");
    sc_trace(mVcdFile, grp_aes_invMain_fu_123_ap_start, "grp_aes_invMain_fu_123_ap_start");
    sc_trace(mVcdFile, grp_aes_invMain_fu_123_ap_done, "grp_aes_invMain_fu_123_ap_done");
    sc_trace(mVcdFile, grp_aes_invMain_fu_123_ap_idle, "grp_aes_invMain_fu_123_ap_idle");
    sc_trace(mVcdFile, grp_aes_invMain_fu_123_ap_ready, "grp_aes_invMain_fu_123_ap_ready");
    sc_trace(mVcdFile, grp_aes_invMain_fu_123_state_address0, "grp_aes_invMain_fu_123_state_address0");
    sc_trace(mVcdFile, grp_aes_invMain_fu_123_state_ce0, "grp_aes_invMain_fu_123_state_ce0");
    sc_trace(mVcdFile, grp_aes_invMain_fu_123_state_we0, "grp_aes_invMain_fu_123_state_we0");
    sc_trace(mVcdFile, grp_aes_invMain_fu_123_state_d0, "grp_aes_invMain_fu_123_state_d0");
    sc_trace(mVcdFile, i_0_reg_79, "i_0_reg_79");
    sc_trace(mVcdFile, j_0_reg_90, "j_0_reg_90");
    sc_trace(mVcdFile, ap_CS_fsm_state4, "ap_CS_fsm_state4");
    sc_trace(mVcdFile, i_1_reg_101, "i_1_reg_101");
    sc_trace(mVcdFile, ap_CS_fsm_state5, "ap_CS_fsm_state5");
    sc_trace(mVcdFile, j_1_reg_112, "j_1_reg_112");
    sc_trace(mVcdFile, ap_CS_fsm_state8, "ap_CS_fsm_state8");
    sc_trace(mVcdFile, grp_aes_invMain_fu_123_ap_start_reg, "grp_aes_invMain_fu_123_ap_start_reg");
    sc_trace(mVcdFile, zext_ln675_fu_181_p1, "zext_ln675_fu_181_p1");
    sc_trace(mVcdFile, zext_ln675_1_fu_203_p1, "zext_ln675_1_fu_203_p1");
    sc_trace(mVcdFile, zext_ln689_fu_268_p1, "zext_ln689_fu_268_p1");
    sc_trace(mVcdFile, zext_ln689_1_fu_278_p1, "zext_ln689_1_fu_278_p1");
    sc_trace(mVcdFile, trunc_ln675_fu_148_p1, "trunc_ln675_fu_148_p1");
    sc_trace(mVcdFile, zext_ln674_fu_160_p1, "zext_ln674_fu_160_p1");
    sc_trace(mVcdFile, add_ln675_fu_176_p2, "add_ln675_fu_176_p2");
    sc_trace(mVcdFile, trunc_ln675_1_fu_186_p1, "trunc_ln675_1_fu_186_p1");
    sc_trace(mVcdFile, shl_ln675_1_fu_190_p3, "shl_ln675_1_fu_190_p3");
    sc_trace(mVcdFile, trunc_ln689_fu_223_p1, "trunc_ln689_fu_223_p1");
    sc_trace(mVcdFile, trunc_ln689_1_fu_251_p1, "trunc_ln689_1_fu_251_p1");
    sc_trace(mVcdFile, shl_ln689_1_fu_255_p3, "shl_ln689_1_fu_255_p3");
    sc_trace(mVcdFile, add_ln689_fu_263_p2, "add_ln689_fu_263_p2");
    sc_trace(mVcdFile, zext_ln688_fu_235_p1, "zext_ln688_fu_235_p1");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

aes_decrypt::~aes_decrypt() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    delete ciphertext_U;
    delete block_U;
    delete grp_aes_invMain_fu_123;
}

void aes_decrypt::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        grp_aes_invMain_fu_123_ap_start_reg = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
             esl_seteq<1,1,1>(icmp_ln671_fu_136_p2.read(), ap_const_lv1_1))) {
            grp_aes_invMain_fu_123_ap_start_reg = ap_const_logic_1;
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, grp_aes_invMain_fu_123_ap_ready.read())) {
            grp_aes_invMain_fu_123_ap_start_reg = ap_const_logic_0;
        }
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
         esl_seteq<1,1,1>(icmp_ln674_fu_164_p2.read(), ap_const_lv1_1))) {
        i_0_reg_79 = i_reg_290.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        i_0_reg_79 = ap_const_lv3_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read()) && 
         esl_seteq<1,1,1>(icmp_ln688_fu_239_p2.read(), ap_const_lv1_1))) {
        i_1_reg_101 = i_7_reg_326.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) && 
                esl_seteq<1,1,1>(grp_aes_invMain_fu_123_ap_done.read(), ap_const_logic_1))) {
        i_1_reg_101 = ap_const_lv3_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(icmp_ln671_fu_136_p2.read(), ap_const_lv1_0))) {
        j_0_reg_90 = ap_const_lv3_0;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        j_0_reg_90 = j_reg_303.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln685_fu_211_p2.read()))) {
        j_1_reg_112 = ap_const_lv3_0;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read())) {
        j_1_reg_112 = j_3_reg_339.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln674_fu_164_p2.read()))) {
        add_ln675_1_reg_313 = add_ln675_1_fu_198_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln688_fu_239_p2.read()))) {
        add_ln689_1_reg_349 = add_ln689_1_fu_273_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        i_7_reg_326 = i_7_fu_217_p2.read();
        zext_ln685_reg_318 = zext_ln685_fu_207_p1.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        i_reg_290 = i_fu_142_p2.read();
        zext_ln671_reg_282 = zext_ln671_fu_132_p1.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read())) {
        j_3_reg_339 = j_3_fu_245_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        j_reg_303 = j_fu_170_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln685_fu_211_p2.read()))) {
        shl_ln2_reg_331 = shl_ln2_fu_227_p3.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(icmp_ln671_fu_136_p2.read(), ap_const_lv1_0))) {
        shl_ln_reg_295 = shl_ln_fu_152_p3.read();
    }
}

void aes_decrypt::thread_add_ln675_1_fu_198_p2() {
    add_ln675_1_fu_198_p2 = (!shl_ln675_1_fu_190_p3.read().is_01() || !zext_ln671_reg_282.read().is_01())? sc_lv<4>(): (sc_biguint<4>(shl_ln675_1_fu_190_p3.read()) + sc_biguint<4>(zext_ln671_reg_282.read()));
}

void aes_decrypt::thread_add_ln675_fu_176_p2() {
    add_ln675_fu_176_p2 = (!zext_ln674_fu_160_p1.read().is_01() || !shl_ln_reg_295.read().is_01())? sc_lv<4>(): (sc_biguint<4>(zext_ln674_fu_160_p1.read()) + sc_biguint<4>(shl_ln_reg_295.read()));
}

void aes_decrypt::thread_add_ln689_1_fu_273_p2() {
    add_ln689_1_fu_273_p2 = (!zext_ln688_fu_235_p1.read().is_01() || !shl_ln2_reg_331.read().is_01())? sc_lv<4>(): (sc_biguint<4>(zext_ln688_fu_235_p1.read()) + sc_biguint<4>(shl_ln2_reg_331.read()));
}

void aes_decrypt::thread_add_ln689_fu_263_p2() {
    add_ln689_fu_263_p2 = (!shl_ln689_1_fu_255_p3.read().is_01() || !zext_ln685_reg_318.read().is_01())? sc_lv<4>(): (sc_biguint<4>(shl_ln689_1_fu_255_p3.read()) + sc_biguint<4>(zext_ln685_reg_318.read()));
}

void aes_decrypt::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void aes_decrypt::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void aes_decrypt::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void aes_decrypt::thread_ap_CS_fsm_state4() {
    ap_CS_fsm_state4 = ap_CS_fsm.read()[3];
}

void aes_decrypt::thread_ap_CS_fsm_state5() {
    ap_CS_fsm_state5 = ap_CS_fsm.read()[4];
}

void aes_decrypt::thread_ap_CS_fsm_state6() {
    ap_CS_fsm_state6 = ap_CS_fsm.read()[5];
}

void aes_decrypt::thread_ap_CS_fsm_state7() {
    ap_CS_fsm_state7 = ap_CS_fsm.read()[6];
}

void aes_decrypt::thread_ap_CS_fsm_state8() {
    ap_CS_fsm_state8 = ap_CS_fsm.read()[7];
}

void aes_decrypt::thread_ap_done() {
    if (((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read()) && 
          esl_seteq<1,1,1>(icmp_ln685_fu_211_p2.read(), ap_const_lv1_1)))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void aes_decrypt::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void aes_decrypt::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read()) && 
         esl_seteq<1,1,1>(icmp_ln685_fu_211_p2.read(), ap_const_lv1_1))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void aes_decrypt::thread_block_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read())) {
        block_address0 =  (sc_lv<4>) (zext_ln689_fu_268_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        block_address0 =  (sc_lv<4>) (zext_ln675_1_fu_203_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        block_address0 = grp_aes_invMain_fu_123_state_address0.read();
    } else {
        block_address0 = "XXXX";
    }
}

void aes_decrypt::thread_block_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()))) {
        block_ce0 = ap_const_logic_1;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        block_ce0 = grp_aes_invMain_fu_123_state_ce0.read();
    } else {
        block_ce0 = ap_const_logic_0;
    }
}

void aes_decrypt::thread_block_d0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        block_d0 = ciphertext_q0.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        block_d0 = grp_aes_invMain_fu_123_state_d0.read();
    } else {
        block_d0 =  (sc_lv<8>) ("XXXXXXXX");
    }
}

void aes_decrypt::thread_block_we0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        block_we0 = ap_const_logic_1;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        block_we0 = grp_aes_invMain_fu_123_state_we0.read();
    } else {
        block_we0 = ap_const_logic_0;
    }
}

void aes_decrypt::thread_ciphertext_address0() {
    ciphertext_address0 =  (sc_lv<4>) (zext_ln675_fu_181_p1.read());
}

void aes_decrypt::thread_ciphertext_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        ciphertext_ce0 = ap_const_logic_1;
    } else {
        ciphertext_ce0 = ap_const_logic_0;
    }
}

void aes_decrypt::thread_grp_aes_invMain_fu_123_ap_start() {
    grp_aes_invMain_fu_123_ap_start = grp_aes_invMain_fu_123_ap_start_reg.read();
}

void aes_decrypt::thread_i_7_fu_217_p2() {
    i_7_fu_217_p2 = (!i_1_reg_101.read().is_01() || !ap_const_lv3_1.is_01())? sc_lv<3>(): (sc_biguint<3>(i_1_reg_101.read()) + sc_biguint<3>(ap_const_lv3_1));
}

void aes_decrypt::thread_i_fu_142_p2() {
    i_fu_142_p2 = (!i_0_reg_79.read().is_01() || !ap_const_lv3_1.is_01())? sc_lv<3>(): (sc_biguint<3>(i_0_reg_79.read()) + sc_biguint<3>(ap_const_lv3_1));
}

void aes_decrypt::thread_icmp_ln671_fu_136_p2() {
    icmp_ln671_fu_136_p2 = (!i_0_reg_79.read().is_01() || !ap_const_lv3_4.is_01())? sc_lv<1>(): sc_lv<1>(i_0_reg_79.read() == ap_const_lv3_4);
}

void aes_decrypt::thread_icmp_ln674_fu_164_p2() {
    icmp_ln674_fu_164_p2 = (!j_0_reg_90.read().is_01() || !ap_const_lv3_4.is_01())? sc_lv<1>(): sc_lv<1>(j_0_reg_90.read() == ap_const_lv3_4);
}

void aes_decrypt::thread_icmp_ln685_fu_211_p2() {
    icmp_ln685_fu_211_p2 = (!i_1_reg_101.read().is_01() || !ap_const_lv3_4.is_01())? sc_lv<1>(): sc_lv<1>(i_1_reg_101.read() == ap_const_lv3_4);
}

void aes_decrypt::thread_icmp_ln688_fu_239_p2() {
    icmp_ln688_fu_239_p2 = (!j_1_reg_112.read().is_01() || !ap_const_lv3_4.is_01())? sc_lv<1>(): sc_lv<1>(j_1_reg_112.read() == ap_const_lv3_4);
}

void aes_decrypt::thread_j_3_fu_245_p2() {
    j_3_fu_245_p2 = (!j_1_reg_112.read().is_01() || !ap_const_lv3_1.is_01())? sc_lv<3>(): (sc_biguint<3>(j_1_reg_112.read()) + sc_biguint<3>(ap_const_lv3_1));
}

void aes_decrypt::thread_j_fu_170_p2() {
    j_fu_170_p2 = (!j_0_reg_90.read().is_01() || !ap_const_lv3_1.is_01())? sc_lv<3>(): (sc_biguint<3>(j_0_reg_90.read()) + sc_biguint<3>(ap_const_lv3_1));
}

void aes_decrypt::thread_output_r_address0() {
    output_r_address0 =  (sc_lv<4>) (zext_ln689_1_fu_278_p1.read());
}

void aes_decrypt::thread_output_r_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read())) {
        output_r_ce0 = ap_const_logic_1;
    } else {
        output_r_ce0 = ap_const_logic_0;
    }
}

void aes_decrypt::thread_output_r_d0() {
    output_r_d0 = block_q0.read();
}

void aes_decrypt::thread_output_r_we0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read())) {
        output_r_we0 = ap_const_logic_1;
    } else {
        output_r_we0 = ap_const_logic_0;
    }
}

void aes_decrypt::thread_shl_ln2_fu_227_p3() {
    shl_ln2_fu_227_p3 = esl_concat<2,2>(trunc_ln689_fu_223_p1.read(), ap_const_lv2_0);
}

void aes_decrypt::thread_shl_ln675_1_fu_190_p3() {
    shl_ln675_1_fu_190_p3 = esl_concat<2,2>(trunc_ln675_1_fu_186_p1.read(), ap_const_lv2_0);
}

void aes_decrypt::thread_shl_ln689_1_fu_255_p3() {
    shl_ln689_1_fu_255_p3 = esl_concat<2,2>(trunc_ln689_1_fu_251_p1.read(), ap_const_lv2_0);
}

void aes_decrypt::thread_shl_ln_fu_152_p3() {
    shl_ln_fu_152_p3 = esl_concat<2,2>(trunc_ln675_fu_148_p1.read(), ap_const_lv2_0);
}

void aes_decrypt::thread_trunc_ln675_1_fu_186_p1() {
    trunc_ln675_1_fu_186_p1 = j_0_reg_90.read().range(2-1, 0);
}

void aes_decrypt::thread_trunc_ln675_fu_148_p1() {
    trunc_ln675_fu_148_p1 = i_0_reg_79.read().range(2-1, 0);
}

void aes_decrypt::thread_trunc_ln689_1_fu_251_p1() {
    trunc_ln689_1_fu_251_p1 = j_1_reg_112.read().range(2-1, 0);
}

void aes_decrypt::thread_trunc_ln689_fu_223_p1() {
    trunc_ln689_fu_223_p1 = i_1_reg_101.read().range(2-1, 0);
}

void aes_decrypt::thread_zext_ln671_fu_132_p1() {
    zext_ln671_fu_132_p1 = esl_zext<4,3>(i_0_reg_79.read());
}

void aes_decrypt::thread_zext_ln674_fu_160_p1() {
    zext_ln674_fu_160_p1 = esl_zext<4,3>(j_0_reg_90.read());
}

void aes_decrypt::thread_zext_ln675_1_fu_203_p1() {
    zext_ln675_1_fu_203_p1 = esl_zext<64,4>(add_ln675_1_reg_313.read());
}

void aes_decrypt::thread_zext_ln675_fu_181_p1() {
    zext_ln675_fu_181_p1 = esl_zext<64,4>(add_ln675_fu_176_p2.read());
}

void aes_decrypt::thread_zext_ln685_fu_207_p1() {
    zext_ln685_fu_207_p1 = esl_zext<4,3>(i_1_reg_101.read());
}

void aes_decrypt::thread_zext_ln688_fu_235_p1() {
    zext_ln688_fu_235_p1 = esl_zext<4,3>(j_1_reg_112.read());
}

void aes_decrypt::thread_zext_ln689_1_fu_278_p1() {
    zext_ln689_1_fu_278_p1 = esl_zext<64,4>(add_ln689_1_reg_349.read());
}

void aes_decrypt::thread_zext_ln689_fu_268_p1() {
    zext_ln689_fu_268_p1 = esl_zext<64,4>(add_ln689_fu_263_p2.read());
}

void aes_decrypt::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(icmp_ln671_fu_136_p2.read(), ap_const_lv1_0))) {
                ap_NS_fsm = ap_ST_fsm_state3;
            } else {
                ap_NS_fsm = ap_ST_fsm_state5;
            }
            break;
        case 4 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && esl_seteq<1,1,1>(icmp_ln674_fu_164_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state4;
            }
            break;
        case 8 : 
            ap_NS_fsm = ap_ST_fsm_state3;
            break;
        case 16 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) && esl_seteq<1,1,1>(grp_aes_invMain_fu_123_ap_done.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state6;
            } else {
                ap_NS_fsm = ap_ST_fsm_state5;
            }
            break;
        case 32 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read()) && esl_seteq<1,1,1>(icmp_ln685_fu_211_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else {
                ap_NS_fsm = ap_ST_fsm_state7;
            }
            break;
        case 64 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read()) && esl_seteq<1,1,1>(icmp_ln688_fu_239_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state6;
            } else {
                ap_NS_fsm = ap_ST_fsm_state8;
            }
            break;
        case 128 : 
            ap_NS_fsm = ap_ST_fsm_state7;
            break;
        default : 
            ap_NS_fsm =  (sc_lv<8>) ("XXXXXXXX");
            break;
    }
}

}

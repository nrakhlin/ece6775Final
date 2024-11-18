// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "SetKey_Encrypt.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic SetKey_Encrypt::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic SetKey_Encrypt::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<4> SetKey_Encrypt::ap_ST_fsm_state1 = "1";
const sc_lv<4> SetKey_Encrypt::ap_ST_fsm_state2 = "10";
const sc_lv<4> SetKey_Encrypt::ap_ST_fsm_state3 = "100";
const sc_lv<4> SetKey_Encrypt::ap_ST_fsm_state4 = "1000";
const sc_lv<32> SetKey_Encrypt::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<1> SetKey_Encrypt::ap_const_lv1_1 = "1";
const sc_lv<32> SetKey_Encrypt::ap_const_lv32_1 = "1";
const sc_lv<32> SetKey_Encrypt::ap_const_lv32_2 = "10";
const sc_lv<32> SetKey_Encrypt::ap_const_lv32_3 = "11";
const sc_lv<1> SetKey_Encrypt::ap_const_lv1_0 = "0";
const bool SetKey_Encrypt::ap_const_boolean_1 = true;

SetKey_Encrypt::SetKey_Encrypt(sc_module_name name) : sc_module(name), mVcdFile(0) {
    grp_SetKey_fu_44 = new SetKey("grp_SetKey_fu_44");
    grp_SetKey_fu_44->ap_clk(ap_clk);
    grp_SetKey_fu_44->ap_rst(ap_rst);
    grp_SetKey_fu_44->ap_start(grp_SetKey_fu_44_ap_start);
    grp_SetKey_fu_44->ap_done(grp_SetKey_fu_44_ap_done);
    grp_SetKey_fu_44->ap_idle(grp_SetKey_fu_44_ap_idle);
    grp_SetKey_fu_44->ap_ready(grp_SetKey_fu_44_ap_ready);
    grp_SetKey_fu_44->key_address0(grp_SetKey_fu_44_key_address0);
    grp_SetKey_fu_44->key_ce0(grp_SetKey_fu_44_key_ce0);
    grp_SetKey_fu_44->key_q0(key_q0);
    grp_SetKey_fu_44->key_size(key_size);
    grp_SetKey_fu_44->P_address0(grp_SetKey_fu_44_P_address0);
    grp_SetKey_fu_44->P_ce0(grp_SetKey_fu_44_P_ce0);
    grp_SetKey_fu_44->P_we0(grp_SetKey_fu_44_P_we0);
    grp_SetKey_fu_44->P_d0(grp_SetKey_fu_44_P_d0);
    grp_SetKey_fu_44->P_q0(P_q0);
    grp_SetKey_fu_44->P_address1(grp_SetKey_fu_44_P_address1);
    grp_SetKey_fu_44->P_ce1(grp_SetKey_fu_44_P_ce1);
    grp_SetKey_fu_44->P_we1(grp_SetKey_fu_44_P_we1);
    grp_SetKey_fu_44->P_d1(grp_SetKey_fu_44_P_d1);
    grp_SetKey_fu_44->P_q1(P_q1);
    grp_SetKey_fu_44->S_address0(grp_SetKey_fu_44_S_address0);
    grp_SetKey_fu_44->S_ce0(grp_SetKey_fu_44_S_ce0);
    grp_SetKey_fu_44->S_we0(grp_SetKey_fu_44_S_we0);
    grp_SetKey_fu_44->S_d0(grp_SetKey_fu_44_S_d0);
    grp_SetKey_fu_44->S_q0(S_q0);
    grp_SetKey_fu_44->S_address1(grp_SetKey_fu_44_S_address1);
    grp_SetKey_fu_44->S_ce1(grp_SetKey_fu_44_S_ce1);
    grp_SetKey_fu_44->S_we1(grp_SetKey_fu_44_S_we1);
    grp_SetKey_fu_44->S_d1(grp_SetKey_fu_44_S_d1);
    grp_SetKey_fu_44->S_q1(S_q1);
    grp_Encrypt_fu_60 = new Encrypt("grp_Encrypt_fu_60");
    grp_Encrypt_fu_60->ap_clk(ap_clk);
    grp_Encrypt_fu_60->ap_rst(ap_rst);
    grp_Encrypt_fu_60->ap_start(grp_Encrypt_fu_60_ap_start);
    grp_Encrypt_fu_60->ap_done(grp_Encrypt_fu_60_ap_done);
    grp_Encrypt_fu_60->ap_idle(grp_Encrypt_fu_60_ap_idle);
    grp_Encrypt_fu_60->ap_ready(grp_Encrypt_fu_60_ap_ready);
    grp_Encrypt_fu_60->plaintext_address0(grp_Encrypt_fu_60_plaintext_address0);
    grp_Encrypt_fu_60->plaintext_ce0(grp_Encrypt_fu_60_plaintext_ce0);
    grp_Encrypt_fu_60->plaintext_q0(plaintext_q0);
    grp_Encrypt_fu_60->plaintext_address1(grp_Encrypt_fu_60_plaintext_address1);
    grp_Encrypt_fu_60->plaintext_ce1(grp_Encrypt_fu_60_plaintext_ce1);
    grp_Encrypt_fu_60->plaintext_q1(plaintext_q1);
    grp_Encrypt_fu_60->ciphertext_address0(grp_Encrypt_fu_60_ciphertext_address0);
    grp_Encrypt_fu_60->ciphertext_ce0(grp_Encrypt_fu_60_ciphertext_ce0);
    grp_Encrypt_fu_60->ciphertext_we0(grp_Encrypt_fu_60_ciphertext_we0);
    grp_Encrypt_fu_60->ciphertext_d0(grp_Encrypt_fu_60_ciphertext_d0);
    grp_Encrypt_fu_60->ciphertext_address1(grp_Encrypt_fu_60_ciphertext_address1);
    grp_Encrypt_fu_60->ciphertext_ce1(grp_Encrypt_fu_60_ciphertext_ce1);
    grp_Encrypt_fu_60->ciphertext_we1(grp_Encrypt_fu_60_ciphertext_we1);
    grp_Encrypt_fu_60->ciphertext_d1(grp_Encrypt_fu_60_ciphertext_d1);
    grp_Encrypt_fu_60->P_address0(grp_Encrypt_fu_60_P_address0);
    grp_Encrypt_fu_60->P_ce0(grp_Encrypt_fu_60_P_ce0);
    grp_Encrypt_fu_60->P_q0(P_q0);
    grp_Encrypt_fu_60->S_address0(grp_Encrypt_fu_60_S_address0);
    grp_Encrypt_fu_60->S_ce0(grp_Encrypt_fu_60_S_ce0);
    grp_Encrypt_fu_60->S_q0(S_q0);
    grp_Encrypt_fu_60->S_address1(grp_Encrypt_fu_60_S_address1);
    grp_Encrypt_fu_60->S_ce1(grp_Encrypt_fu_60_S_ce1);
    grp_Encrypt_fu_60->S_q1(S_q1);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_P_address0);
    sensitive << ( grp_SetKey_fu_44_P_address0 );
    sensitive << ( grp_Encrypt_fu_60_P_address0 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_P_address1);
    sensitive << ( grp_SetKey_fu_44_P_address1 );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_P_ce0);
    sensitive << ( grp_SetKey_fu_44_P_ce0 );
    sensitive << ( grp_Encrypt_fu_60_P_ce0 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_P_ce1);
    sensitive << ( grp_SetKey_fu_44_P_ce1 );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_P_d0);
    sensitive << ( grp_SetKey_fu_44_P_d0 );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_P_d1);
    sensitive << ( grp_SetKey_fu_44_P_d1 );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_P_we0);
    sensitive << ( grp_SetKey_fu_44_P_we0 );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_P_we1);
    sensitive << ( grp_SetKey_fu_44_P_we1 );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_S_address0);
    sensitive << ( grp_SetKey_fu_44_S_address0 );
    sensitive << ( grp_Encrypt_fu_60_S_address0 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_S_address1);
    sensitive << ( grp_SetKey_fu_44_S_address1 );
    sensitive << ( grp_Encrypt_fu_60_S_address1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_S_ce0);
    sensitive << ( grp_SetKey_fu_44_S_ce0 );
    sensitive << ( grp_Encrypt_fu_60_S_ce0 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_S_ce1);
    sensitive << ( grp_SetKey_fu_44_S_ce1 );
    sensitive << ( grp_Encrypt_fu_60_S_ce1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_S_d0);
    sensitive << ( grp_SetKey_fu_44_S_d0 );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_S_d1);
    sensitive << ( grp_SetKey_fu_44_S_d1 );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_S_we0);
    sensitive << ( grp_SetKey_fu_44_S_we0 );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_S_we1);
    sensitive << ( grp_SetKey_fu_44_S_we1 );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state3);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state4);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_done);
    sensitive << ( grp_Encrypt_fu_60_ap_done );
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( grp_Encrypt_fu_60_ap_done );
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_ciphertext_address0);
    sensitive << ( grp_Encrypt_fu_60_ciphertext_address0 );
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_ciphertext_address1);
    sensitive << ( grp_Encrypt_fu_60_ciphertext_address1 );
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_ciphertext_ce0);
    sensitive << ( grp_Encrypt_fu_60_ciphertext_ce0 );
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_ciphertext_ce1);
    sensitive << ( grp_Encrypt_fu_60_ciphertext_ce1 );
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_ciphertext_d0);
    sensitive << ( grp_Encrypt_fu_60_ciphertext_d0 );
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_ciphertext_d1);
    sensitive << ( grp_Encrypt_fu_60_ciphertext_d1 );
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_ciphertext_we0);
    sensitive << ( grp_Encrypt_fu_60_ciphertext_we0 );
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_ciphertext_we1);
    sensitive << ( grp_Encrypt_fu_60_ciphertext_we1 );
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_grp_Encrypt_fu_60_ap_start);
    sensitive << ( grp_Encrypt_fu_60_ap_start_reg );

    SC_METHOD(thread_grp_SetKey_fu_44_ap_start);
    sensitive << ( grp_SetKey_fu_44_ap_start_reg );

    SC_METHOD(thread_key_address0);
    sensitive << ( grp_SetKey_fu_44_key_address0 );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_key_ce0);
    sensitive << ( grp_SetKey_fu_44_key_ce0 );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_plaintext_address0);
    sensitive << ( grp_Encrypt_fu_60_plaintext_address0 );
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_plaintext_address1);
    sensitive << ( grp_Encrypt_fu_60_plaintext_address1 );
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_plaintext_ce0);
    sensitive << ( grp_Encrypt_fu_60_plaintext_ce0 );
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_plaintext_ce1);
    sensitive << ( grp_Encrypt_fu_60_plaintext_ce1 );
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_set_key_read_read_fu_38_p2);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( set_key );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( grp_SetKey_fu_44_ap_done );
    sensitive << ( grp_Encrypt_fu_60_ap_done );
    sensitive << ( set_key_read_read_fu_38_p2 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_CS_fsm_state4 );

    SC_THREAD(thread_hdltv_gen);
    sensitive << ( ap_clk.pos() );

    ap_CS_fsm = "0001";
    grp_SetKey_fu_44_ap_start_reg = SC_LOGIC_0;
    grp_Encrypt_fu_60_ap_start_reg = SC_LOGIC_0;
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "SetKey_Encrypt_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, set_key, "(port)set_key");
    sc_trace(mVcdFile, key_address0, "(port)key_address0");
    sc_trace(mVcdFile, key_ce0, "(port)key_ce0");
    sc_trace(mVcdFile, key_q0, "(port)key_q0");
    sc_trace(mVcdFile, key_size, "(port)key_size");
    sc_trace(mVcdFile, plaintext_address0, "(port)plaintext_address0");
    sc_trace(mVcdFile, plaintext_ce0, "(port)plaintext_ce0");
    sc_trace(mVcdFile, plaintext_q0, "(port)plaintext_q0");
    sc_trace(mVcdFile, plaintext_address1, "(port)plaintext_address1");
    sc_trace(mVcdFile, plaintext_ce1, "(port)plaintext_ce1");
    sc_trace(mVcdFile, plaintext_q1, "(port)plaintext_q1");
    sc_trace(mVcdFile, ciphertext_address0, "(port)ciphertext_address0");
    sc_trace(mVcdFile, ciphertext_ce0, "(port)ciphertext_ce0");
    sc_trace(mVcdFile, ciphertext_we0, "(port)ciphertext_we0");
    sc_trace(mVcdFile, ciphertext_d0, "(port)ciphertext_d0");
    sc_trace(mVcdFile, ciphertext_address1, "(port)ciphertext_address1");
    sc_trace(mVcdFile, ciphertext_ce1, "(port)ciphertext_ce1");
    sc_trace(mVcdFile, ciphertext_we1, "(port)ciphertext_we1");
    sc_trace(mVcdFile, ciphertext_d1, "(port)ciphertext_d1");
    sc_trace(mVcdFile, P_address0, "(port)P_address0");
    sc_trace(mVcdFile, P_ce0, "(port)P_ce0");
    sc_trace(mVcdFile, P_we0, "(port)P_we0");
    sc_trace(mVcdFile, P_d0, "(port)P_d0");
    sc_trace(mVcdFile, P_q0, "(port)P_q0");
    sc_trace(mVcdFile, P_address1, "(port)P_address1");
    sc_trace(mVcdFile, P_ce1, "(port)P_ce1");
    sc_trace(mVcdFile, P_we1, "(port)P_we1");
    sc_trace(mVcdFile, P_d1, "(port)P_d1");
    sc_trace(mVcdFile, P_q1, "(port)P_q1");
    sc_trace(mVcdFile, S_address0, "(port)S_address0");
    sc_trace(mVcdFile, S_ce0, "(port)S_ce0");
    sc_trace(mVcdFile, S_we0, "(port)S_we0");
    sc_trace(mVcdFile, S_d0, "(port)S_d0");
    sc_trace(mVcdFile, S_q0, "(port)S_q0");
    sc_trace(mVcdFile, S_address1, "(port)S_address1");
    sc_trace(mVcdFile, S_ce1, "(port)S_ce1");
    sc_trace(mVcdFile, S_we1, "(port)S_we1");
    sc_trace(mVcdFile, S_d1, "(port)S_d1");
    sc_trace(mVcdFile, S_q1, "(port)S_q1");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, grp_SetKey_fu_44_ap_start, "grp_SetKey_fu_44_ap_start");
    sc_trace(mVcdFile, grp_SetKey_fu_44_ap_done, "grp_SetKey_fu_44_ap_done");
    sc_trace(mVcdFile, grp_SetKey_fu_44_ap_idle, "grp_SetKey_fu_44_ap_idle");
    sc_trace(mVcdFile, grp_SetKey_fu_44_ap_ready, "grp_SetKey_fu_44_ap_ready");
    sc_trace(mVcdFile, grp_SetKey_fu_44_key_address0, "grp_SetKey_fu_44_key_address0");
    sc_trace(mVcdFile, grp_SetKey_fu_44_key_ce0, "grp_SetKey_fu_44_key_ce0");
    sc_trace(mVcdFile, grp_SetKey_fu_44_P_address0, "grp_SetKey_fu_44_P_address0");
    sc_trace(mVcdFile, grp_SetKey_fu_44_P_ce0, "grp_SetKey_fu_44_P_ce0");
    sc_trace(mVcdFile, grp_SetKey_fu_44_P_we0, "grp_SetKey_fu_44_P_we0");
    sc_trace(mVcdFile, grp_SetKey_fu_44_P_d0, "grp_SetKey_fu_44_P_d0");
    sc_trace(mVcdFile, grp_SetKey_fu_44_P_address1, "grp_SetKey_fu_44_P_address1");
    sc_trace(mVcdFile, grp_SetKey_fu_44_P_ce1, "grp_SetKey_fu_44_P_ce1");
    sc_trace(mVcdFile, grp_SetKey_fu_44_P_we1, "grp_SetKey_fu_44_P_we1");
    sc_trace(mVcdFile, grp_SetKey_fu_44_P_d1, "grp_SetKey_fu_44_P_d1");
    sc_trace(mVcdFile, grp_SetKey_fu_44_S_address0, "grp_SetKey_fu_44_S_address0");
    sc_trace(mVcdFile, grp_SetKey_fu_44_S_ce0, "grp_SetKey_fu_44_S_ce0");
    sc_trace(mVcdFile, grp_SetKey_fu_44_S_we0, "grp_SetKey_fu_44_S_we0");
    sc_trace(mVcdFile, grp_SetKey_fu_44_S_d0, "grp_SetKey_fu_44_S_d0");
    sc_trace(mVcdFile, grp_SetKey_fu_44_S_address1, "grp_SetKey_fu_44_S_address1");
    sc_trace(mVcdFile, grp_SetKey_fu_44_S_ce1, "grp_SetKey_fu_44_S_ce1");
    sc_trace(mVcdFile, grp_SetKey_fu_44_S_we1, "grp_SetKey_fu_44_S_we1");
    sc_trace(mVcdFile, grp_SetKey_fu_44_S_d1, "grp_SetKey_fu_44_S_d1");
    sc_trace(mVcdFile, grp_Encrypt_fu_60_ap_start, "grp_Encrypt_fu_60_ap_start");
    sc_trace(mVcdFile, grp_Encrypt_fu_60_ap_done, "grp_Encrypt_fu_60_ap_done");
    sc_trace(mVcdFile, grp_Encrypt_fu_60_ap_idle, "grp_Encrypt_fu_60_ap_idle");
    sc_trace(mVcdFile, grp_Encrypt_fu_60_ap_ready, "grp_Encrypt_fu_60_ap_ready");
    sc_trace(mVcdFile, grp_Encrypt_fu_60_plaintext_address0, "grp_Encrypt_fu_60_plaintext_address0");
    sc_trace(mVcdFile, grp_Encrypt_fu_60_plaintext_ce0, "grp_Encrypt_fu_60_plaintext_ce0");
    sc_trace(mVcdFile, grp_Encrypt_fu_60_plaintext_address1, "grp_Encrypt_fu_60_plaintext_address1");
    sc_trace(mVcdFile, grp_Encrypt_fu_60_plaintext_ce1, "grp_Encrypt_fu_60_plaintext_ce1");
    sc_trace(mVcdFile, grp_Encrypt_fu_60_ciphertext_address0, "grp_Encrypt_fu_60_ciphertext_address0");
    sc_trace(mVcdFile, grp_Encrypt_fu_60_ciphertext_ce0, "grp_Encrypt_fu_60_ciphertext_ce0");
    sc_trace(mVcdFile, grp_Encrypt_fu_60_ciphertext_we0, "grp_Encrypt_fu_60_ciphertext_we0");
    sc_trace(mVcdFile, grp_Encrypt_fu_60_ciphertext_d0, "grp_Encrypt_fu_60_ciphertext_d0");
    sc_trace(mVcdFile, grp_Encrypt_fu_60_ciphertext_address1, "grp_Encrypt_fu_60_ciphertext_address1");
    sc_trace(mVcdFile, grp_Encrypt_fu_60_ciphertext_ce1, "grp_Encrypt_fu_60_ciphertext_ce1");
    sc_trace(mVcdFile, grp_Encrypt_fu_60_ciphertext_we1, "grp_Encrypt_fu_60_ciphertext_we1");
    sc_trace(mVcdFile, grp_Encrypt_fu_60_ciphertext_d1, "grp_Encrypt_fu_60_ciphertext_d1");
    sc_trace(mVcdFile, grp_Encrypt_fu_60_P_address0, "grp_Encrypt_fu_60_P_address0");
    sc_trace(mVcdFile, grp_Encrypt_fu_60_P_ce0, "grp_Encrypt_fu_60_P_ce0");
    sc_trace(mVcdFile, grp_Encrypt_fu_60_S_address0, "grp_Encrypt_fu_60_S_address0");
    sc_trace(mVcdFile, grp_Encrypt_fu_60_S_ce0, "grp_Encrypt_fu_60_S_ce0");
    sc_trace(mVcdFile, grp_Encrypt_fu_60_S_address1, "grp_Encrypt_fu_60_S_address1");
    sc_trace(mVcdFile, grp_Encrypt_fu_60_S_ce1, "grp_Encrypt_fu_60_S_ce1");
    sc_trace(mVcdFile, grp_SetKey_fu_44_ap_start_reg, "grp_SetKey_fu_44_ap_start_reg");
    sc_trace(mVcdFile, set_key_read_read_fu_38_p2, "set_key_read_read_fu_38_p2");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, grp_Encrypt_fu_60_ap_start_reg, "grp_Encrypt_fu_60_ap_start_reg");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, ap_CS_fsm_state4, "ap_CS_fsm_state4");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
    mHdltvinHandle.open("SetKey_Encrypt.hdltvin.dat");
    mHdltvoutHandle.open("SetKey_Encrypt.hdltvout.dat");
}

SetKey_Encrypt::~SetKey_Encrypt() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    mHdltvinHandle << "] " << endl;
    mHdltvoutHandle << "] " << endl;
    mHdltvinHandle.close();
    mHdltvoutHandle.close();
    delete grp_SetKey_fu_44;
    delete grp_Encrypt_fu_60;
}

void SetKey_Encrypt::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        grp_Encrypt_fu_60_ap_start_reg = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
            grp_Encrypt_fu_60_ap_start_reg = ap_const_logic_1;
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, grp_Encrypt_fu_60_ap_ready.read())) {
            grp_Encrypt_fu_60_ap_start_reg = ap_const_logic_0;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        grp_SetKey_fu_44_ap_start_reg = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
             esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1) && 
             esl_seteq<1,1,1>(set_key_read_read_fu_38_p2.read(), ap_const_lv1_1))) {
            grp_SetKey_fu_44_ap_start_reg = ap_const_logic_1;
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, grp_SetKey_fu_44_ap_ready.read())) {
            grp_SetKey_fu_44_ap_start_reg = ap_const_logic_0;
        }
    }
}

void SetKey_Encrypt::thread_P_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        P_address0 = grp_Encrypt_fu_60_P_address0.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        P_address0 = grp_SetKey_fu_44_P_address0.read();
    } else {
        P_address0 = "XXXXX";
    }
}

void SetKey_Encrypt::thread_P_address1() {
    P_address1 = grp_SetKey_fu_44_P_address1.read();
}

void SetKey_Encrypt::thread_P_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        P_ce0 = grp_Encrypt_fu_60_P_ce0.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        P_ce0 = grp_SetKey_fu_44_P_ce0.read();
    } else {
        P_ce0 = ap_const_logic_0;
    }
}

void SetKey_Encrypt::thread_P_ce1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        P_ce1 = grp_SetKey_fu_44_P_ce1.read();
    } else {
        P_ce1 = ap_const_logic_0;
    }
}

void SetKey_Encrypt::thread_P_d0() {
    P_d0 = grp_SetKey_fu_44_P_d0.read();
}

void SetKey_Encrypt::thread_P_d1() {
    P_d1 = grp_SetKey_fu_44_P_d1.read();
}

void SetKey_Encrypt::thread_P_we0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        P_we0 = grp_SetKey_fu_44_P_we0.read();
    } else {
        P_we0 = ap_const_logic_0;
    }
}

void SetKey_Encrypt::thread_P_we1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        P_we1 = grp_SetKey_fu_44_P_we1.read();
    } else {
        P_we1 = ap_const_logic_0;
    }
}

void SetKey_Encrypt::thread_S_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        S_address0 = grp_Encrypt_fu_60_S_address0.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        S_address0 = grp_SetKey_fu_44_S_address0.read();
    } else {
        S_address0 =  (sc_lv<10>) ("XXXXXXXXXX");
    }
}

void SetKey_Encrypt::thread_S_address1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        S_address1 = grp_Encrypt_fu_60_S_address1.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        S_address1 = grp_SetKey_fu_44_S_address1.read();
    } else {
        S_address1 =  (sc_lv<10>) ("XXXXXXXXXX");
    }
}

void SetKey_Encrypt::thread_S_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        S_ce0 = grp_Encrypt_fu_60_S_ce0.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        S_ce0 = grp_SetKey_fu_44_S_ce0.read();
    } else {
        S_ce0 = ap_const_logic_0;
    }
}

void SetKey_Encrypt::thread_S_ce1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        S_ce1 = grp_Encrypt_fu_60_S_ce1.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        S_ce1 = grp_SetKey_fu_44_S_ce1.read();
    } else {
        S_ce1 = ap_const_logic_0;
    }
}

void SetKey_Encrypt::thread_S_d0() {
    S_d0 = grp_SetKey_fu_44_S_d0.read();
}

void SetKey_Encrypt::thread_S_d1() {
    S_d1 = grp_SetKey_fu_44_S_d1.read();
}

void SetKey_Encrypt::thread_S_we0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        S_we0 = grp_SetKey_fu_44_S_we0.read();
    } else {
        S_we0 = ap_const_logic_0;
    }
}

void SetKey_Encrypt::thread_S_we1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        S_we1 = grp_SetKey_fu_44_S_we1.read();
    } else {
        S_we1 = ap_const_logic_0;
    }
}

void SetKey_Encrypt::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void SetKey_Encrypt::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void SetKey_Encrypt::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void SetKey_Encrypt::thread_ap_CS_fsm_state4() {
    ap_CS_fsm_state4 = ap_CS_fsm.read()[3];
}

void SetKey_Encrypt::thread_ap_done() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(grp_Encrypt_fu_60_ap_done.read(), ap_const_logic_1))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void SetKey_Encrypt::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void SetKey_Encrypt::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(grp_Encrypt_fu_60_ap_done.read(), ap_const_logic_1))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void SetKey_Encrypt::thread_ciphertext_address0() {
    ciphertext_address0 = grp_Encrypt_fu_60_ciphertext_address0.read();
}

void SetKey_Encrypt::thread_ciphertext_address1() {
    ciphertext_address1 = grp_Encrypt_fu_60_ciphertext_address1.read();
}

void SetKey_Encrypt::thread_ciphertext_ce0() {
    ciphertext_ce0 = grp_Encrypt_fu_60_ciphertext_ce0.read();
}

void SetKey_Encrypt::thread_ciphertext_ce1() {
    ciphertext_ce1 = grp_Encrypt_fu_60_ciphertext_ce1.read();
}

void SetKey_Encrypt::thread_ciphertext_d0() {
    ciphertext_d0 = grp_Encrypt_fu_60_ciphertext_d0.read();
}

void SetKey_Encrypt::thread_ciphertext_d1() {
    ciphertext_d1 = grp_Encrypt_fu_60_ciphertext_d1.read();
}

void SetKey_Encrypt::thread_ciphertext_we0() {
    ciphertext_we0 = grp_Encrypt_fu_60_ciphertext_we0.read();
}

void SetKey_Encrypt::thread_ciphertext_we1() {
    ciphertext_we1 = grp_Encrypt_fu_60_ciphertext_we1.read();
}

void SetKey_Encrypt::thread_grp_Encrypt_fu_60_ap_start() {
    grp_Encrypt_fu_60_ap_start = grp_Encrypt_fu_60_ap_start_reg.read();
}

void SetKey_Encrypt::thread_grp_SetKey_fu_44_ap_start() {
    grp_SetKey_fu_44_ap_start = grp_SetKey_fu_44_ap_start_reg.read();
}

void SetKey_Encrypt::thread_key_address0() {
    key_address0 = grp_SetKey_fu_44_key_address0.read();
}

void SetKey_Encrypt::thread_key_ce0() {
    key_ce0 = grp_SetKey_fu_44_key_ce0.read();
}

void SetKey_Encrypt::thread_plaintext_address0() {
    plaintext_address0 = grp_Encrypt_fu_60_plaintext_address0.read();
}

void SetKey_Encrypt::thread_plaintext_address1() {
    plaintext_address1 = grp_Encrypt_fu_60_plaintext_address1.read();
}

void SetKey_Encrypt::thread_plaintext_ce0() {
    plaintext_ce0 = grp_Encrypt_fu_60_plaintext_ce0.read();
}

void SetKey_Encrypt::thread_plaintext_ce1() {
    plaintext_ce1 = grp_Encrypt_fu_60_plaintext_ce1.read();
}

void SetKey_Encrypt::thread_set_key_read_read_fu_38_p2() {
    set_key_read_read_fu_38_p2 =  (sc_lv<1>) (set_key.read());
}

void SetKey_Encrypt::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1) && esl_seteq<1,1,1>(set_key_read_read_fu_38_p2.read(), ap_const_lv1_0))) {
                ap_NS_fsm = ap_ST_fsm_state3;
            } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1) && esl_seteq<1,1,1>(set_key_read_read_fu_38_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(grp_SetKey_fu_44_ap_done.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state3;
            } else {
                ap_NS_fsm = ap_ST_fsm_state2;
            }
            break;
        case 4 : 
            ap_NS_fsm = ap_ST_fsm_state4;
            break;
        case 8 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && esl_seteq<1,1,1>(grp_Encrypt_fu_60_ap_done.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else {
                ap_NS_fsm = ap_ST_fsm_state4;
            }
            break;
        default : 
            ap_NS_fsm =  (sc_lv<4>) ("XXXX");
            break;
    }
}

void SetKey_Encrypt::thread_hdltv_gen() {
    const char* dump_tv = std::getenv("AP_WRITE_TV");
    if (!(dump_tv && string(dump_tv) == "on")) return;

    wait();

    mHdltvinHandle << "[ " << endl;
    mHdltvoutHandle << "[ " << endl;
    int ap_cycleNo = 0;
    while (1) {
        wait();
        const char* mComma = ap_cycleNo == 0 ? " " : ", " ;
        mHdltvinHandle << mComma << "{"  <<  " \"ap_rst\" :  \"" << ap_rst.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"ap_start\" :  \"" << ap_start.read() << "\" ";
        mHdltvoutHandle << mComma << "{"  <<  " \"ap_done\" :  \"" << ap_done.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_idle\" :  \"" << ap_idle.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_ready\" :  \"" << ap_ready.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"set_key\" :  \"" << set_key.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"key_address0\" :  \"" << key_address0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"key_ce0\" :  \"" << key_ce0.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"key_q0\" :  \"" << key_q0.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"key_size\" :  \"" << key_size.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"plaintext_address0\" :  \"" << plaintext_address0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"plaintext_ce0\" :  \"" << plaintext_ce0.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"plaintext_q0\" :  \"" << plaintext_q0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"plaintext_address1\" :  \"" << plaintext_address1.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"plaintext_ce1\" :  \"" << plaintext_ce1.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"plaintext_q1\" :  \"" << plaintext_q1.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ciphertext_address0\" :  \"" << ciphertext_address0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ciphertext_ce0\" :  \"" << ciphertext_ce0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ciphertext_we0\" :  \"" << ciphertext_we0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ciphertext_d0\" :  \"" << ciphertext_d0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ciphertext_address1\" :  \"" << ciphertext_address1.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ciphertext_ce1\" :  \"" << ciphertext_ce1.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ciphertext_we1\" :  \"" << ciphertext_we1.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ciphertext_d1\" :  \"" << ciphertext_d1.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"P_address0\" :  \"" << P_address0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"P_ce0\" :  \"" << P_ce0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"P_we0\" :  \"" << P_we0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"P_d0\" :  \"" << P_d0.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"P_q0\" :  \"" << P_q0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"P_address1\" :  \"" << P_address1.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"P_ce1\" :  \"" << P_ce1.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"P_we1\" :  \"" << P_we1.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"P_d1\" :  \"" << P_d1.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"P_q1\" :  \"" << P_q1.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"S_address0\" :  \"" << S_address0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"S_ce0\" :  \"" << S_ce0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"S_we0\" :  \"" << S_we0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"S_d0\" :  \"" << S_d0.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"S_q0\" :  \"" << S_q0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"S_address1\" :  \"" << S_address1.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"S_ce1\" :  \"" << S_ce1.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"S_we1\" :  \"" << S_we1.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"S_d1\" :  \"" << S_d1.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"S_q1\" :  \"" << S_q1.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}


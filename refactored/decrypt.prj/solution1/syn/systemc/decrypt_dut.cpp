// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "decrypt_dut.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic decrypt_dut::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic decrypt_dut::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<2> decrypt_dut::ap_ST_fsm_state1 = "1";
const sc_lv<2> decrypt_dut::ap_ST_fsm_state2 = "10";
const sc_lv<32> decrypt_dut::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> decrypt_dut::ap_const_lv32_1 = "1";
const bool decrypt_dut::ap_const_boolean_1 = true;

decrypt_dut::decrypt_dut(sc_module_name name) : sc_module(name), mVcdFile(0) {
    grp_aes_decrypt_fu_304 = new aes_decrypt("grp_aes_decrypt_fu_304");
    grp_aes_decrypt_fu_304->ap_clk(ap_clk);
    grp_aes_decrypt_fu_304->ap_rst(ap_rst);
    grp_aes_decrypt_fu_304->ap_start(grp_aes_decrypt_fu_304_ap_start);
    grp_aes_decrypt_fu_304->ap_done(grp_aes_decrypt_fu_304_ap_done);
    grp_aes_decrypt_fu_304->ap_idle(grp_aes_decrypt_fu_304_ap_idle);
    grp_aes_decrypt_fu_304->ap_ready(grp_aes_decrypt_fu_304_ap_ready);
    grp_aes_decrypt_fu_304->input_0_read(input_0);
    grp_aes_decrypt_fu_304->input_1_read(input_1);
    grp_aes_decrypt_fu_304->input_2_read(input_2);
    grp_aes_decrypt_fu_304->input_3_read(input_3);
    grp_aes_decrypt_fu_304->input_4_read(input_4);
    grp_aes_decrypt_fu_304->input_5_read(input_5);
    grp_aes_decrypt_fu_304->input_6_read(input_6);
    grp_aes_decrypt_fu_304->input_7_read(input_7);
    grp_aes_decrypt_fu_304->input_8_read(input_8);
    grp_aes_decrypt_fu_304->input_9_read(input_9);
    grp_aes_decrypt_fu_304->input_10_read(input_10);
    grp_aes_decrypt_fu_304->input_11_read(input_11);
    grp_aes_decrypt_fu_304->input_12_read(input_12);
    grp_aes_decrypt_fu_304->input_13_read(input_13);
    grp_aes_decrypt_fu_304->input_14_read(input_14);
    grp_aes_decrypt_fu_304->input_15_read(input_15);
    grp_aes_decrypt_fu_304->output_0(grp_aes_decrypt_fu_304_output_0);
    grp_aes_decrypt_fu_304->output_0_ap_vld(grp_aes_decrypt_fu_304_output_0_ap_vld);
    grp_aes_decrypt_fu_304->output_1(grp_aes_decrypt_fu_304_output_1);
    grp_aes_decrypt_fu_304->output_1_ap_vld(grp_aes_decrypt_fu_304_output_1_ap_vld);
    grp_aes_decrypt_fu_304->output_2(grp_aes_decrypt_fu_304_output_2);
    grp_aes_decrypt_fu_304->output_2_ap_vld(grp_aes_decrypt_fu_304_output_2_ap_vld);
    grp_aes_decrypt_fu_304->output_3(grp_aes_decrypt_fu_304_output_3);
    grp_aes_decrypt_fu_304->output_3_ap_vld(grp_aes_decrypt_fu_304_output_3_ap_vld);
    grp_aes_decrypt_fu_304->output_4(grp_aes_decrypt_fu_304_output_4);
    grp_aes_decrypt_fu_304->output_4_ap_vld(grp_aes_decrypt_fu_304_output_4_ap_vld);
    grp_aes_decrypt_fu_304->output_5(grp_aes_decrypt_fu_304_output_5);
    grp_aes_decrypt_fu_304->output_5_ap_vld(grp_aes_decrypt_fu_304_output_5_ap_vld);
    grp_aes_decrypt_fu_304->output_6(grp_aes_decrypt_fu_304_output_6);
    grp_aes_decrypt_fu_304->output_6_ap_vld(grp_aes_decrypt_fu_304_output_6_ap_vld);
    grp_aes_decrypt_fu_304->output_7(grp_aes_decrypt_fu_304_output_7);
    grp_aes_decrypt_fu_304->output_7_ap_vld(grp_aes_decrypt_fu_304_output_7_ap_vld);
    grp_aes_decrypt_fu_304->output_8(grp_aes_decrypt_fu_304_output_8);
    grp_aes_decrypt_fu_304->output_8_ap_vld(grp_aes_decrypt_fu_304_output_8_ap_vld);
    grp_aes_decrypt_fu_304->output_9(grp_aes_decrypt_fu_304_output_9);
    grp_aes_decrypt_fu_304->output_9_ap_vld(grp_aes_decrypt_fu_304_output_9_ap_vld);
    grp_aes_decrypt_fu_304->output_10(grp_aes_decrypt_fu_304_output_10);
    grp_aes_decrypt_fu_304->output_10_ap_vld(grp_aes_decrypt_fu_304_output_10_ap_vld);
    grp_aes_decrypt_fu_304->output_11(grp_aes_decrypt_fu_304_output_11);
    grp_aes_decrypt_fu_304->output_11_ap_vld(grp_aes_decrypt_fu_304_output_11_ap_vld);
    grp_aes_decrypt_fu_304->output_12(grp_aes_decrypt_fu_304_output_12);
    grp_aes_decrypt_fu_304->output_12_ap_vld(grp_aes_decrypt_fu_304_output_12_ap_vld);
    grp_aes_decrypt_fu_304->output_13(grp_aes_decrypt_fu_304_output_13);
    grp_aes_decrypt_fu_304->output_13_ap_vld(grp_aes_decrypt_fu_304_output_13_ap_vld);
    grp_aes_decrypt_fu_304->output_14(grp_aes_decrypt_fu_304_output_14);
    grp_aes_decrypt_fu_304->output_14_ap_vld(grp_aes_decrypt_fu_304_output_14_ap_vld);
    grp_aes_decrypt_fu_304->output_15(grp_aes_decrypt_fu_304_output_15);
    grp_aes_decrypt_fu_304->output_15_ap_vld(grp_aes_decrypt_fu_304_output_15_ap_vld);
    grp_aes_decrypt_fu_304->key_0_read(key_0);
    grp_aes_decrypt_fu_304->key_1_read(key_1);
    grp_aes_decrypt_fu_304->key_2_read(key_2);
    grp_aes_decrypt_fu_304->key_3_read(key_3);
    grp_aes_decrypt_fu_304->key_4_read(key_4);
    grp_aes_decrypt_fu_304->key_5_read(key_5);
    grp_aes_decrypt_fu_304->key_6_read(key_6);
    grp_aes_decrypt_fu_304->key_7_read(key_7);
    grp_aes_decrypt_fu_304->key_8_read(key_8);
    grp_aes_decrypt_fu_304->key_9_read(key_9);
    grp_aes_decrypt_fu_304->key_10_read(key_10);
    grp_aes_decrypt_fu_304->key_11_read(key_11);
    grp_aes_decrypt_fu_304->key_12_read(key_12);
    grp_aes_decrypt_fu_304->key_13_read(key_13);
    grp_aes_decrypt_fu_304->key_14_read(key_14);
    grp_aes_decrypt_fu_304->key_15_read(key_15);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_done);
    sensitive << ( grp_aes_decrypt_fu_304_ap_done );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( grp_aes_decrypt_fu_304_ap_done );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_grp_aes_decrypt_fu_304_ap_start);
    sensitive << ( grp_aes_decrypt_fu_304_ap_start_reg );

    SC_METHOD(thread_output_0);
    sensitive << ( grp_aes_decrypt_fu_304_output_0 );
    sensitive << ( grp_aes_decrypt_fu_304_output_0_ap_vld );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_output_0_ap_vld);
    sensitive << ( grp_aes_decrypt_fu_304_output_0_ap_vld );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_output_1);
    sensitive << ( grp_aes_decrypt_fu_304_output_1 );
    sensitive << ( grp_aes_decrypt_fu_304_output_1_ap_vld );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_output_10);
    sensitive << ( grp_aes_decrypt_fu_304_output_10 );
    sensitive << ( grp_aes_decrypt_fu_304_output_10_ap_vld );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_output_10_ap_vld);
    sensitive << ( grp_aes_decrypt_fu_304_output_10_ap_vld );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_output_11);
    sensitive << ( grp_aes_decrypt_fu_304_output_11 );
    sensitive << ( grp_aes_decrypt_fu_304_output_11_ap_vld );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_output_11_ap_vld);
    sensitive << ( grp_aes_decrypt_fu_304_output_11_ap_vld );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_output_12);
    sensitive << ( grp_aes_decrypt_fu_304_output_12 );
    sensitive << ( grp_aes_decrypt_fu_304_output_12_ap_vld );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_output_12_ap_vld);
    sensitive << ( grp_aes_decrypt_fu_304_output_12_ap_vld );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_output_13);
    sensitive << ( grp_aes_decrypt_fu_304_output_13 );
    sensitive << ( grp_aes_decrypt_fu_304_output_13_ap_vld );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_output_13_ap_vld);
    sensitive << ( grp_aes_decrypt_fu_304_output_13_ap_vld );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_output_14);
    sensitive << ( grp_aes_decrypt_fu_304_output_14 );
    sensitive << ( grp_aes_decrypt_fu_304_output_14_ap_vld );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_output_14_ap_vld);
    sensitive << ( grp_aes_decrypt_fu_304_output_14_ap_vld );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_output_15);
    sensitive << ( grp_aes_decrypt_fu_304_output_15 );
    sensitive << ( grp_aes_decrypt_fu_304_output_15_ap_vld );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_output_15_ap_vld);
    sensitive << ( grp_aes_decrypt_fu_304_output_15_ap_vld );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_output_1_ap_vld);
    sensitive << ( grp_aes_decrypt_fu_304_output_1_ap_vld );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_output_2);
    sensitive << ( grp_aes_decrypt_fu_304_output_2 );
    sensitive << ( grp_aes_decrypt_fu_304_output_2_ap_vld );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_output_2_ap_vld);
    sensitive << ( grp_aes_decrypt_fu_304_output_2_ap_vld );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_output_3);
    sensitive << ( grp_aes_decrypt_fu_304_output_3 );
    sensitive << ( grp_aes_decrypt_fu_304_output_3_ap_vld );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_output_3_ap_vld);
    sensitive << ( grp_aes_decrypt_fu_304_output_3_ap_vld );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_output_4);
    sensitive << ( grp_aes_decrypt_fu_304_output_4 );
    sensitive << ( grp_aes_decrypt_fu_304_output_4_ap_vld );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_output_4_ap_vld);
    sensitive << ( grp_aes_decrypt_fu_304_output_4_ap_vld );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_output_5);
    sensitive << ( grp_aes_decrypt_fu_304_output_5 );
    sensitive << ( grp_aes_decrypt_fu_304_output_5_ap_vld );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_output_5_ap_vld);
    sensitive << ( grp_aes_decrypt_fu_304_output_5_ap_vld );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_output_6);
    sensitive << ( grp_aes_decrypt_fu_304_output_6 );
    sensitive << ( grp_aes_decrypt_fu_304_output_6_ap_vld );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_output_6_ap_vld);
    sensitive << ( grp_aes_decrypt_fu_304_output_6_ap_vld );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_output_7);
    sensitive << ( grp_aes_decrypt_fu_304_output_7 );
    sensitive << ( grp_aes_decrypt_fu_304_output_7_ap_vld );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_output_7_ap_vld);
    sensitive << ( grp_aes_decrypt_fu_304_output_7_ap_vld );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_output_8);
    sensitive << ( grp_aes_decrypt_fu_304_output_8 );
    sensitive << ( grp_aes_decrypt_fu_304_output_8_ap_vld );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_output_8_ap_vld);
    sensitive << ( grp_aes_decrypt_fu_304_output_8_ap_vld );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_output_9);
    sensitive << ( grp_aes_decrypt_fu_304_output_9 );
    sensitive << ( grp_aes_decrypt_fu_304_output_9_ap_vld );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_output_9_ap_vld);
    sensitive << ( grp_aes_decrypt_fu_304_output_9_ap_vld );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( grp_aes_decrypt_fu_304_ap_done );
    sensitive << ( ap_CS_fsm_state2 );

    SC_THREAD(thread_hdltv_gen);
    sensitive << ( ap_clk.pos() );

    ap_CS_fsm = "01";
    grp_aes_decrypt_fu_304_ap_start_reg = SC_LOGIC_0;
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "decrypt_dut_sc_trace_" << apTFileNum ++;
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
    sc_trace(mVcdFile, input_0, "(port)input_0");
    sc_trace(mVcdFile, input_1, "(port)input_1");
    sc_trace(mVcdFile, input_2, "(port)input_2");
    sc_trace(mVcdFile, input_3, "(port)input_3");
    sc_trace(mVcdFile, input_4, "(port)input_4");
    sc_trace(mVcdFile, input_5, "(port)input_5");
    sc_trace(mVcdFile, input_6, "(port)input_6");
    sc_trace(mVcdFile, input_7, "(port)input_7");
    sc_trace(mVcdFile, input_8, "(port)input_8");
    sc_trace(mVcdFile, input_9, "(port)input_9");
    sc_trace(mVcdFile, input_10, "(port)input_10");
    sc_trace(mVcdFile, input_11, "(port)input_11");
    sc_trace(mVcdFile, input_12, "(port)input_12");
    sc_trace(mVcdFile, input_13, "(port)input_13");
    sc_trace(mVcdFile, input_14, "(port)input_14");
    sc_trace(mVcdFile, input_15, "(port)input_15");
    sc_trace(mVcdFile, output_0, "(port)output_0");
    sc_trace(mVcdFile, output_0_ap_vld, "(port)output_0_ap_vld");
    sc_trace(mVcdFile, output_1, "(port)output_1");
    sc_trace(mVcdFile, output_1_ap_vld, "(port)output_1_ap_vld");
    sc_trace(mVcdFile, output_2, "(port)output_2");
    sc_trace(mVcdFile, output_2_ap_vld, "(port)output_2_ap_vld");
    sc_trace(mVcdFile, output_3, "(port)output_3");
    sc_trace(mVcdFile, output_3_ap_vld, "(port)output_3_ap_vld");
    sc_trace(mVcdFile, output_4, "(port)output_4");
    sc_trace(mVcdFile, output_4_ap_vld, "(port)output_4_ap_vld");
    sc_trace(mVcdFile, output_5, "(port)output_5");
    sc_trace(mVcdFile, output_5_ap_vld, "(port)output_5_ap_vld");
    sc_trace(mVcdFile, output_6, "(port)output_6");
    sc_trace(mVcdFile, output_6_ap_vld, "(port)output_6_ap_vld");
    sc_trace(mVcdFile, output_7, "(port)output_7");
    sc_trace(mVcdFile, output_7_ap_vld, "(port)output_7_ap_vld");
    sc_trace(mVcdFile, output_8, "(port)output_8");
    sc_trace(mVcdFile, output_8_ap_vld, "(port)output_8_ap_vld");
    sc_trace(mVcdFile, output_9, "(port)output_9");
    sc_trace(mVcdFile, output_9_ap_vld, "(port)output_9_ap_vld");
    sc_trace(mVcdFile, output_10, "(port)output_10");
    sc_trace(mVcdFile, output_10_ap_vld, "(port)output_10_ap_vld");
    sc_trace(mVcdFile, output_11, "(port)output_11");
    sc_trace(mVcdFile, output_11_ap_vld, "(port)output_11_ap_vld");
    sc_trace(mVcdFile, output_12, "(port)output_12");
    sc_trace(mVcdFile, output_12_ap_vld, "(port)output_12_ap_vld");
    sc_trace(mVcdFile, output_13, "(port)output_13");
    sc_trace(mVcdFile, output_13_ap_vld, "(port)output_13_ap_vld");
    sc_trace(mVcdFile, output_14, "(port)output_14");
    sc_trace(mVcdFile, output_14_ap_vld, "(port)output_14_ap_vld");
    sc_trace(mVcdFile, output_15, "(port)output_15");
    sc_trace(mVcdFile, output_15_ap_vld, "(port)output_15_ap_vld");
    sc_trace(mVcdFile, key_0, "(port)key_0");
    sc_trace(mVcdFile, key_1, "(port)key_1");
    sc_trace(mVcdFile, key_2, "(port)key_2");
    sc_trace(mVcdFile, key_3, "(port)key_3");
    sc_trace(mVcdFile, key_4, "(port)key_4");
    sc_trace(mVcdFile, key_5, "(port)key_5");
    sc_trace(mVcdFile, key_6, "(port)key_6");
    sc_trace(mVcdFile, key_7, "(port)key_7");
    sc_trace(mVcdFile, key_8, "(port)key_8");
    sc_trace(mVcdFile, key_9, "(port)key_9");
    sc_trace(mVcdFile, key_10, "(port)key_10");
    sc_trace(mVcdFile, key_11, "(port)key_11");
    sc_trace(mVcdFile, key_12, "(port)key_12");
    sc_trace(mVcdFile, key_13, "(port)key_13");
    sc_trace(mVcdFile, key_14, "(port)key_14");
    sc_trace(mVcdFile, key_15, "(port)key_15");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, grp_aes_decrypt_fu_304_ap_start, "grp_aes_decrypt_fu_304_ap_start");
    sc_trace(mVcdFile, grp_aes_decrypt_fu_304_ap_done, "grp_aes_decrypt_fu_304_ap_done");
    sc_trace(mVcdFile, grp_aes_decrypt_fu_304_ap_idle, "grp_aes_decrypt_fu_304_ap_idle");
    sc_trace(mVcdFile, grp_aes_decrypt_fu_304_ap_ready, "grp_aes_decrypt_fu_304_ap_ready");
    sc_trace(mVcdFile, grp_aes_decrypt_fu_304_output_0, "grp_aes_decrypt_fu_304_output_0");
    sc_trace(mVcdFile, grp_aes_decrypt_fu_304_output_0_ap_vld, "grp_aes_decrypt_fu_304_output_0_ap_vld");
    sc_trace(mVcdFile, grp_aes_decrypt_fu_304_output_1, "grp_aes_decrypt_fu_304_output_1");
    sc_trace(mVcdFile, grp_aes_decrypt_fu_304_output_1_ap_vld, "grp_aes_decrypt_fu_304_output_1_ap_vld");
    sc_trace(mVcdFile, grp_aes_decrypt_fu_304_output_2, "grp_aes_decrypt_fu_304_output_2");
    sc_trace(mVcdFile, grp_aes_decrypt_fu_304_output_2_ap_vld, "grp_aes_decrypt_fu_304_output_2_ap_vld");
    sc_trace(mVcdFile, grp_aes_decrypt_fu_304_output_3, "grp_aes_decrypt_fu_304_output_3");
    sc_trace(mVcdFile, grp_aes_decrypt_fu_304_output_3_ap_vld, "grp_aes_decrypt_fu_304_output_3_ap_vld");
    sc_trace(mVcdFile, grp_aes_decrypt_fu_304_output_4, "grp_aes_decrypt_fu_304_output_4");
    sc_trace(mVcdFile, grp_aes_decrypt_fu_304_output_4_ap_vld, "grp_aes_decrypt_fu_304_output_4_ap_vld");
    sc_trace(mVcdFile, grp_aes_decrypt_fu_304_output_5, "grp_aes_decrypt_fu_304_output_5");
    sc_trace(mVcdFile, grp_aes_decrypt_fu_304_output_5_ap_vld, "grp_aes_decrypt_fu_304_output_5_ap_vld");
    sc_trace(mVcdFile, grp_aes_decrypt_fu_304_output_6, "grp_aes_decrypt_fu_304_output_6");
    sc_trace(mVcdFile, grp_aes_decrypt_fu_304_output_6_ap_vld, "grp_aes_decrypt_fu_304_output_6_ap_vld");
    sc_trace(mVcdFile, grp_aes_decrypt_fu_304_output_7, "grp_aes_decrypt_fu_304_output_7");
    sc_trace(mVcdFile, grp_aes_decrypt_fu_304_output_7_ap_vld, "grp_aes_decrypt_fu_304_output_7_ap_vld");
    sc_trace(mVcdFile, grp_aes_decrypt_fu_304_output_8, "grp_aes_decrypt_fu_304_output_8");
    sc_trace(mVcdFile, grp_aes_decrypt_fu_304_output_8_ap_vld, "grp_aes_decrypt_fu_304_output_8_ap_vld");
    sc_trace(mVcdFile, grp_aes_decrypt_fu_304_output_9, "grp_aes_decrypt_fu_304_output_9");
    sc_trace(mVcdFile, grp_aes_decrypt_fu_304_output_9_ap_vld, "grp_aes_decrypt_fu_304_output_9_ap_vld");
    sc_trace(mVcdFile, grp_aes_decrypt_fu_304_output_10, "grp_aes_decrypt_fu_304_output_10");
    sc_trace(mVcdFile, grp_aes_decrypt_fu_304_output_10_ap_vld, "grp_aes_decrypt_fu_304_output_10_ap_vld");
    sc_trace(mVcdFile, grp_aes_decrypt_fu_304_output_11, "grp_aes_decrypt_fu_304_output_11");
    sc_trace(mVcdFile, grp_aes_decrypt_fu_304_output_11_ap_vld, "grp_aes_decrypt_fu_304_output_11_ap_vld");
    sc_trace(mVcdFile, grp_aes_decrypt_fu_304_output_12, "grp_aes_decrypt_fu_304_output_12");
    sc_trace(mVcdFile, grp_aes_decrypt_fu_304_output_12_ap_vld, "grp_aes_decrypt_fu_304_output_12_ap_vld");
    sc_trace(mVcdFile, grp_aes_decrypt_fu_304_output_13, "grp_aes_decrypt_fu_304_output_13");
    sc_trace(mVcdFile, grp_aes_decrypt_fu_304_output_13_ap_vld, "grp_aes_decrypt_fu_304_output_13_ap_vld");
    sc_trace(mVcdFile, grp_aes_decrypt_fu_304_output_14, "grp_aes_decrypt_fu_304_output_14");
    sc_trace(mVcdFile, grp_aes_decrypt_fu_304_output_14_ap_vld, "grp_aes_decrypt_fu_304_output_14_ap_vld");
    sc_trace(mVcdFile, grp_aes_decrypt_fu_304_output_15, "grp_aes_decrypt_fu_304_output_15");
    sc_trace(mVcdFile, grp_aes_decrypt_fu_304_output_15_ap_vld, "grp_aes_decrypt_fu_304_output_15_ap_vld");
    sc_trace(mVcdFile, grp_aes_decrypt_fu_304_ap_start_reg, "grp_aes_decrypt_fu_304_ap_start_reg");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
    mHdltvinHandle.open("decrypt_dut.hdltvin.dat");
    mHdltvoutHandle.open("decrypt_dut.hdltvout.dat");
}

decrypt_dut::~decrypt_dut() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    mHdltvinHandle << "] " << endl;
    mHdltvoutHandle << "] " << endl;
    mHdltvinHandle.close();
    mHdltvoutHandle.close();
    delete grp_aes_decrypt_fu_304;
}

void decrypt_dut::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        grp_aes_decrypt_fu_304_ap_start_reg = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
             esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
            grp_aes_decrypt_fu_304_ap_start_reg = ap_const_logic_1;
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, grp_aes_decrypt_fu_304_ap_ready.read())) {
            grp_aes_decrypt_fu_304_ap_start_reg = ap_const_logic_0;
        }
    }
}

void decrypt_dut::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void decrypt_dut::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void decrypt_dut::thread_ap_done() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(grp_aes_decrypt_fu_304_ap_done.read(), ap_const_logic_1))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void decrypt_dut::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void decrypt_dut::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(grp_aes_decrypt_fu_304_ap_done.read(), ap_const_logic_1))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void decrypt_dut::thread_grp_aes_decrypt_fu_304_ap_start() {
    grp_aes_decrypt_fu_304_ap_start = grp_aes_decrypt_fu_304_ap_start_reg.read();
}

void decrypt_dut::thread_output_0() {
    output_0 = grp_aes_decrypt_fu_304_output_0.read();
}

void decrypt_dut::thread_output_0_ap_vld() {
    output_0_ap_vld = grp_aes_decrypt_fu_304_output_0_ap_vld.read();
}

void decrypt_dut::thread_output_1() {
    output_1 = grp_aes_decrypt_fu_304_output_1.read();
}

void decrypt_dut::thread_output_10() {
    output_10 = grp_aes_decrypt_fu_304_output_10.read();
}

void decrypt_dut::thread_output_10_ap_vld() {
    output_10_ap_vld = grp_aes_decrypt_fu_304_output_10_ap_vld.read();
}

void decrypt_dut::thread_output_11() {
    output_11 = grp_aes_decrypt_fu_304_output_11.read();
}

void decrypt_dut::thread_output_11_ap_vld() {
    output_11_ap_vld = grp_aes_decrypt_fu_304_output_11_ap_vld.read();
}

void decrypt_dut::thread_output_12() {
    output_12 = grp_aes_decrypt_fu_304_output_12.read();
}

void decrypt_dut::thread_output_12_ap_vld() {
    output_12_ap_vld = grp_aes_decrypt_fu_304_output_12_ap_vld.read();
}

void decrypt_dut::thread_output_13() {
    output_13 = grp_aes_decrypt_fu_304_output_13.read();
}

void decrypt_dut::thread_output_13_ap_vld() {
    output_13_ap_vld = grp_aes_decrypt_fu_304_output_13_ap_vld.read();
}

void decrypt_dut::thread_output_14() {
    output_14 = grp_aes_decrypt_fu_304_output_14.read();
}

void decrypt_dut::thread_output_14_ap_vld() {
    output_14_ap_vld = grp_aes_decrypt_fu_304_output_14_ap_vld.read();
}

void decrypt_dut::thread_output_15() {
    output_15 = grp_aes_decrypt_fu_304_output_15.read();
}

void decrypt_dut::thread_output_15_ap_vld() {
    output_15_ap_vld = grp_aes_decrypt_fu_304_output_15_ap_vld.read();
}

void decrypt_dut::thread_output_1_ap_vld() {
    output_1_ap_vld = grp_aes_decrypt_fu_304_output_1_ap_vld.read();
}

void decrypt_dut::thread_output_2() {
    output_2 = grp_aes_decrypt_fu_304_output_2.read();
}

void decrypt_dut::thread_output_2_ap_vld() {
    output_2_ap_vld = grp_aes_decrypt_fu_304_output_2_ap_vld.read();
}

void decrypt_dut::thread_output_3() {
    output_3 = grp_aes_decrypt_fu_304_output_3.read();
}

void decrypt_dut::thread_output_3_ap_vld() {
    output_3_ap_vld = grp_aes_decrypt_fu_304_output_3_ap_vld.read();
}

void decrypt_dut::thread_output_4() {
    output_4 = grp_aes_decrypt_fu_304_output_4.read();
}

void decrypt_dut::thread_output_4_ap_vld() {
    output_4_ap_vld = grp_aes_decrypt_fu_304_output_4_ap_vld.read();
}

void decrypt_dut::thread_output_5() {
    output_5 = grp_aes_decrypt_fu_304_output_5.read();
}

void decrypt_dut::thread_output_5_ap_vld() {
    output_5_ap_vld = grp_aes_decrypt_fu_304_output_5_ap_vld.read();
}

void decrypt_dut::thread_output_6() {
    output_6 = grp_aes_decrypt_fu_304_output_6.read();
}

void decrypt_dut::thread_output_6_ap_vld() {
    output_6_ap_vld = grp_aes_decrypt_fu_304_output_6_ap_vld.read();
}

void decrypt_dut::thread_output_7() {
    output_7 = grp_aes_decrypt_fu_304_output_7.read();
}

void decrypt_dut::thread_output_7_ap_vld() {
    output_7_ap_vld = grp_aes_decrypt_fu_304_output_7_ap_vld.read();
}

void decrypt_dut::thread_output_8() {
    output_8 = grp_aes_decrypt_fu_304_output_8.read();
}

void decrypt_dut::thread_output_8_ap_vld() {
    output_8_ap_vld = grp_aes_decrypt_fu_304_output_8_ap_vld.read();
}

void decrypt_dut::thread_output_9() {
    output_9 = grp_aes_decrypt_fu_304_output_9.read();
}

void decrypt_dut::thread_output_9_ap_vld() {
    output_9_ap_vld = grp_aes_decrypt_fu_304_output_9_ap_vld.read();
}

void decrypt_dut::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(grp_aes_decrypt_fu_304_ap_done.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else {
                ap_NS_fsm = ap_ST_fsm_state2;
            }
            break;
        default : 
            ap_NS_fsm = "XX";
            break;
    }
}

void decrypt_dut::thread_hdltv_gen() {
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
        mHdltvinHandle << " , " <<  " \"input_0\" :  \"" << input_0.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"input_1\" :  \"" << input_1.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"input_2\" :  \"" << input_2.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"input_3\" :  \"" << input_3.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"input_4\" :  \"" << input_4.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"input_5\" :  \"" << input_5.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"input_6\" :  \"" << input_6.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"input_7\" :  \"" << input_7.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"input_8\" :  \"" << input_8.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"input_9\" :  \"" << input_9.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"input_10\" :  \"" << input_10.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"input_11\" :  \"" << input_11.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"input_12\" :  \"" << input_12.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"input_13\" :  \"" << input_13.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"input_14\" :  \"" << input_14.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"input_15\" :  \"" << input_15.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"output_0\" :  \"" << output_0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"output_0_ap_vld\" :  \"" << output_0_ap_vld.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"output_1\" :  \"" << output_1.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"output_1_ap_vld\" :  \"" << output_1_ap_vld.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"output_2\" :  \"" << output_2.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"output_2_ap_vld\" :  \"" << output_2_ap_vld.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"output_3\" :  \"" << output_3.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"output_3_ap_vld\" :  \"" << output_3_ap_vld.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"output_4\" :  \"" << output_4.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"output_4_ap_vld\" :  \"" << output_4_ap_vld.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"output_5\" :  \"" << output_5.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"output_5_ap_vld\" :  \"" << output_5_ap_vld.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"output_6\" :  \"" << output_6.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"output_6_ap_vld\" :  \"" << output_6_ap_vld.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"output_7\" :  \"" << output_7.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"output_7_ap_vld\" :  \"" << output_7_ap_vld.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"output_8\" :  \"" << output_8.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"output_8_ap_vld\" :  \"" << output_8_ap_vld.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"output_9\" :  \"" << output_9.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"output_9_ap_vld\" :  \"" << output_9_ap_vld.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"output_10\" :  \"" << output_10.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"output_10_ap_vld\" :  \"" << output_10_ap_vld.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"output_11\" :  \"" << output_11.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"output_11_ap_vld\" :  \"" << output_11_ap_vld.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"output_12\" :  \"" << output_12.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"output_12_ap_vld\" :  \"" << output_12_ap_vld.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"output_13\" :  \"" << output_13.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"output_13_ap_vld\" :  \"" << output_13_ap_vld.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"output_14\" :  \"" << output_14.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"output_14_ap_vld\" :  \"" << output_14_ap_vld.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"output_15\" :  \"" << output_15.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"output_15_ap_vld\" :  \"" << output_15_ap_vld.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"key_0\" :  \"" << key_0.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"key_1\" :  \"" << key_1.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"key_2\" :  \"" << key_2.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"key_3\" :  \"" << key_3.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"key_4\" :  \"" << key_4.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"key_5\" :  \"" << key_5.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"key_6\" :  \"" << key_6.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"key_7\" :  \"" << key_7.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"key_8\" :  \"" << key_8.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"key_9\" :  \"" << key_9.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"key_10\" :  \"" << key_10.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"key_11\" :  \"" << key_11.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"key_12\" :  \"" << key_12.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"key_13\" :  \"" << key_13.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"key_14\" :  \"" << key_14.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"key_15\" :  \"" << key_15.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}


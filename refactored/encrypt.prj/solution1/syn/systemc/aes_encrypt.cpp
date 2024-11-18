// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "aes_encrypt.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic aes_encrypt::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic aes_encrypt::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<10> aes_encrypt::ap_ST_fsm_state1 = "1";
const sc_lv<10> aes_encrypt::ap_ST_fsm_state2 = "10";
const sc_lv<10> aes_encrypt::ap_ST_fsm_state3 = "100";
const sc_lv<10> aes_encrypt::ap_ST_fsm_state4 = "1000";
const sc_lv<10> aes_encrypt::ap_ST_fsm_state5 = "10000";
const sc_lv<10> aes_encrypt::ap_ST_fsm_state6 = "100000";
const sc_lv<10> aes_encrypt::ap_ST_fsm_state7 = "1000000";
const sc_lv<10> aes_encrypt::ap_ST_fsm_state8 = "10000000";
const sc_lv<10> aes_encrypt::ap_ST_fsm_state9 = "100000000";
const sc_lv<10> aes_encrypt::ap_ST_fsm_state10 = "1000000000";
const sc_lv<32> aes_encrypt::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> aes_encrypt::ap_const_lv32_1 = "1";
const sc_lv<1> aes_encrypt::ap_const_lv1_0 = "0";
const sc_lv<32> aes_encrypt::ap_const_lv32_2 = "10";
const sc_lv<32> aes_encrypt::ap_const_lv32_7 = "111";
const sc_lv<32> aes_encrypt::ap_const_lv32_8 = "1000";
const sc_lv<3> aes_encrypt::ap_const_lv3_0 = "000";
const sc_lv<1> aes_encrypt::ap_const_lv1_1 = "1";
const sc_lv<32> aes_encrypt::ap_const_lv32_3 = "11";
const sc_lv<32> aes_encrypt::ap_const_lv32_6 = "110";
const sc_lv<32> aes_encrypt::ap_const_lv32_9 = "1001";
const sc_lv<32> aes_encrypt::ap_const_lv32_5 = "101";
const sc_lv<32> aes_encrypt::ap_const_lv32_4 = "100";
const sc_lv<3> aes_encrypt::ap_const_lv3_4 = "100";
const sc_lv<3> aes_encrypt::ap_const_lv3_1 = "1";
const sc_lv<2> aes_encrypt::ap_const_lv2_0 = "00";
const bool aes_encrypt::ap_const_boolean_1 = true;

aes_encrypt::aes_encrypt(sc_module_name name) : sc_module(name), mVcdFile(0) {
    block_U = new aes_main_roundKey("block_U");
    block_U->clk(ap_clk);
    block_U->reset(ap_rst);
    block_U->address0(block_address0);
    block_U->ce0(block_ce0);
    block_U->we0(block_we0);
    block_U->d0(block_d0);
    block_U->q0(block_q0);
    expandedKey_U = new aes_encrypt_expandEe("expandedKey_U");
    expandedKey_U->clk(ap_clk);
    expandedKey_U->reset(ap_rst);
    expandedKey_U->address0(expandedKey_address0);
    expandedKey_U->ce0(expandedKey_ce0);
    expandedKey_U->we0(expandedKey_we0);
    expandedKey_U->d0(grp_expandKey_fu_139_expandedKey_d0);
    expandedKey_U->q0(expandedKey_q0);
    grp_aes_main_fu_131 = new aes_main("grp_aes_main_fu_131");
    grp_aes_main_fu_131->ap_clk(ap_clk);
    grp_aes_main_fu_131->ap_rst(ap_rst);
    grp_aes_main_fu_131->ap_start(grp_aes_main_fu_131_ap_start);
    grp_aes_main_fu_131->ap_done(grp_aes_main_fu_131_ap_done);
    grp_aes_main_fu_131->ap_idle(grp_aes_main_fu_131_ap_idle);
    grp_aes_main_fu_131->ap_ready(grp_aes_main_fu_131_ap_ready);
    grp_aes_main_fu_131->state_address0(grp_aes_main_fu_131_state_address0);
    grp_aes_main_fu_131->state_ce0(grp_aes_main_fu_131_state_ce0);
    grp_aes_main_fu_131->state_we0(grp_aes_main_fu_131_state_we0);
    grp_aes_main_fu_131->state_d0(grp_aes_main_fu_131_state_d0);
    grp_aes_main_fu_131->state_q0(block_q0);
    grp_aes_main_fu_131->expandedKey_address0(grp_aes_main_fu_131_expandedKey_address0);
    grp_aes_main_fu_131->expandedKey_ce0(grp_aes_main_fu_131_expandedKey_ce0);
    grp_aes_main_fu_131->expandedKey_q0(expandedKey_q0);
    grp_expandKey_fu_139 = new expandKey("grp_expandKey_fu_139");
    grp_expandKey_fu_139->ap_clk(ap_clk);
    grp_expandKey_fu_139->ap_rst(ap_rst);
    grp_expandKey_fu_139->ap_start(grp_expandKey_fu_139_ap_start);
    grp_expandKey_fu_139->ap_done(grp_expandKey_fu_139_ap_done);
    grp_expandKey_fu_139->ap_idle(grp_expandKey_fu_139_ap_idle);
    grp_expandKey_fu_139->ap_ready(grp_expandKey_fu_139_ap_ready);
    grp_expandKey_fu_139->expandedKey_address0(grp_expandKey_fu_139_expandedKey_address0);
    grp_expandKey_fu_139->expandedKey_ce0(grp_expandKey_fu_139_expandedKey_ce0);
    grp_expandKey_fu_139->expandedKey_we0(grp_expandKey_fu_139_expandedKey_we0);
    grp_expandKey_fu_139->expandedKey_d0(grp_expandKey_fu_139_expandedKey_d0);
    grp_expandKey_fu_139->expandedKey_q0(expandedKey_q0);
    grp_expandKey_fu_139->key_address0(grp_expandKey_fu_139_key_address0);
    grp_expandKey_fu_139->key_ce0(grp_expandKey_fu_139_key_ce0);
    grp_expandKey_fu_139->key_q0(key_q0);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_add_ln51_1_fu_216_p2);
    sensitive << ( zext_ln46_reg_300 );
    sensitive << ( shl_ln51_1_fu_208_p3 );

    SC_METHOD(thread_add_ln51_fu_194_p2);
    sensitive << ( shl_ln_reg_313 );
    sensitive << ( zext_ln49_fu_178_p1 );

    SC_METHOD(thread_add_ln67_1_fu_291_p2);
    sensitive << ( shl_ln2_reg_349 );
    sensitive << ( zext_ln65_fu_253_p1 );

    SC_METHOD(thread_add_ln67_fu_281_p2);
    sensitive << ( zext_ln62_reg_336 );
    sensitive << ( shl_ln67_1_fu_273_p3 );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state10);
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

    SC_METHOD(thread_ap_CS_fsm_state9);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state8 );
    sensitive << ( icmp_ln62_fu_229_p2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state8 );
    sensitive << ( icmp_ln62_fu_229_p2 );

    SC_METHOD(thread_block_address0);
    sensitive << ( ap_CS_fsm_state9 );
    sensitive << ( grp_aes_main_fu_131_state_address0 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( ap_CS_fsm_state7 );
    sensitive << ( zext_ln51_1_fu_221_p1 );
    sensitive << ( zext_ln67_fu_286_p1 );

    SC_METHOD(thread_block_ce0);
    sensitive << ( ap_CS_fsm_state9 );
    sensitive << ( grp_aes_main_fu_131_state_ce0 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( ap_CS_fsm_state7 );

    SC_METHOD(thread_block_d0);
    sensitive << ( input_r_q0 );
    sensitive << ( grp_aes_main_fu_131_state_d0 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( ap_CS_fsm_state7 );

    SC_METHOD(thread_block_we0);
    sensitive << ( grp_aes_main_fu_131_state_we0 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( ap_CS_fsm_state7 );

    SC_METHOD(thread_expandedKey_address0);
    sensitive << ( grp_aes_main_fu_131_expandedKey_address0 );
    sensitive << ( grp_expandKey_fu_139_expandedKey_address0 );
    sensitive << ( ap_CS_fsm_state7 );
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_expandedKey_ce0);
    sensitive << ( grp_aes_main_fu_131_expandedKey_ce0 );
    sensitive << ( grp_expandKey_fu_139_expandedKey_ce0 );
    sensitive << ( ap_CS_fsm_state7 );
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_expandedKey_we0);
    sensitive << ( grp_expandKey_fu_139_expandedKey_we0 );
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_grp_aes_main_fu_131_ap_start);
    sensitive << ( grp_aes_main_fu_131_ap_start_reg );

    SC_METHOD(thread_grp_expandKey_fu_139_ap_start);
    sensitive << ( grp_expandKey_fu_139_ap_start_reg );

    SC_METHOD(thread_i_11_fu_235_p2);
    sensitive << ( i_1_reg_109 );

    SC_METHOD(thread_i_fu_160_p2);
    sensitive << ( i_0_reg_87 );

    SC_METHOD(thread_icmp_ln46_fu_154_p2);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( i_0_reg_87 );

    SC_METHOD(thread_icmp_ln49_fu_182_p2);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( j_0_reg_98 );

    SC_METHOD(thread_icmp_ln62_fu_229_p2);
    sensitive << ( ap_CS_fsm_state8 );
    sensitive << ( i_1_reg_109 );

    SC_METHOD(thread_icmp_ln65_fu_257_p2);
    sensitive << ( ap_CS_fsm_state9 );
    sensitive << ( j_1_reg_120 );

    SC_METHOD(thread_input_r_address0);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( zext_ln51_fu_199_p1 );

    SC_METHOD(thread_input_r_ce0);
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_j_3_fu_263_p2);
    sensitive << ( j_1_reg_120 );

    SC_METHOD(thread_j_fu_188_p2);
    sensitive << ( j_0_reg_98 );

    SC_METHOD(thread_key_address0);
    sensitive << ( grp_expandKey_fu_139_key_address0 );
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_key_ce0);
    sensitive << ( grp_expandKey_fu_139_key_ce0 );
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_output_r_address0);
    sensitive << ( ap_CS_fsm_state10 );
    sensitive << ( zext_ln67_1_fu_296_p1 );

    SC_METHOD(thread_output_r_ce0);
    sensitive << ( ap_CS_fsm_state10 );

    SC_METHOD(thread_output_r_d0);
    sensitive << ( block_q0 );
    sensitive << ( ap_CS_fsm_state10 );

    SC_METHOD(thread_output_r_we0);
    sensitive << ( ap_CS_fsm_state10 );

    SC_METHOD(thread_shl_ln2_fu_245_p3);
    sensitive << ( trunc_ln67_fu_241_p1 );

    SC_METHOD(thread_shl_ln51_1_fu_208_p3);
    sensitive << ( trunc_ln51_1_fu_204_p1 );

    SC_METHOD(thread_shl_ln67_1_fu_273_p3);
    sensitive << ( trunc_ln67_1_fu_269_p1 );

    SC_METHOD(thread_shl_ln_fu_170_p3);
    sensitive << ( trunc_ln51_fu_166_p1 );

    SC_METHOD(thread_trunc_ln51_1_fu_204_p1);
    sensitive << ( j_0_reg_98 );

    SC_METHOD(thread_trunc_ln51_fu_166_p1);
    sensitive << ( i_0_reg_87 );

    SC_METHOD(thread_trunc_ln67_1_fu_269_p1);
    sensitive << ( j_1_reg_120 );

    SC_METHOD(thread_trunc_ln67_fu_241_p1);
    sensitive << ( i_1_reg_109 );

    SC_METHOD(thread_zext_ln46_fu_150_p1);
    sensitive << ( i_0_reg_87 );

    SC_METHOD(thread_zext_ln49_fu_178_p1);
    sensitive << ( j_0_reg_98 );

    SC_METHOD(thread_zext_ln51_1_fu_221_p1);
    sensitive << ( add_ln51_1_reg_331 );

    SC_METHOD(thread_zext_ln51_fu_199_p1);
    sensitive << ( add_ln51_fu_194_p2 );

    SC_METHOD(thread_zext_ln62_fu_225_p1);
    sensitive << ( i_1_reg_109 );

    SC_METHOD(thread_zext_ln65_fu_253_p1);
    sensitive << ( j_1_reg_120 );

    SC_METHOD(thread_zext_ln67_1_fu_296_p1);
    sensitive << ( add_ln67_1_reg_367 );

    SC_METHOD(thread_zext_ln67_fu_286_p1);
    sensitive << ( add_ln67_fu_281_p2 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln46_fu_154_p2 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( icmp_ln49_fu_182_p2 );
    sensitive << ( ap_CS_fsm_state8 );
    sensitive << ( icmp_ln62_fu_229_p2 );
    sensitive << ( ap_CS_fsm_state9 );
    sensitive << ( icmp_ln65_fu_257_p2 );
    sensitive << ( grp_aes_main_fu_131_ap_done );
    sensitive << ( grp_expandKey_fu_139_ap_done );
    sensitive << ( ap_CS_fsm_state7 );
    sensitive << ( ap_CS_fsm_state5 );

    ap_CS_fsm = "0000000001";
    grp_aes_main_fu_131_ap_start_reg = SC_LOGIC_0;
    grp_expandKey_fu_139_ap_start_reg = SC_LOGIC_0;
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "aes_encrypt_sc_trace_" << apTFileNum ++;
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
    sc_trace(mVcdFile, input_r_address0, "(port)input_r_address0");
    sc_trace(mVcdFile, input_r_ce0, "(port)input_r_ce0");
    sc_trace(mVcdFile, input_r_q0, "(port)input_r_q0");
    sc_trace(mVcdFile, output_r_address0, "(port)output_r_address0");
    sc_trace(mVcdFile, output_r_ce0, "(port)output_r_ce0");
    sc_trace(mVcdFile, output_r_we0, "(port)output_r_we0");
    sc_trace(mVcdFile, output_r_d0, "(port)output_r_d0");
    sc_trace(mVcdFile, key_address0, "(port)key_address0");
    sc_trace(mVcdFile, key_ce0, "(port)key_ce0");
    sc_trace(mVcdFile, key_q0, "(port)key_q0");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, zext_ln46_fu_150_p1, "zext_ln46_fu_150_p1");
    sc_trace(mVcdFile, zext_ln46_reg_300, "zext_ln46_reg_300");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, i_fu_160_p2, "i_fu_160_p2");
    sc_trace(mVcdFile, i_reg_308, "i_reg_308");
    sc_trace(mVcdFile, shl_ln_fu_170_p3, "shl_ln_fu_170_p3");
    sc_trace(mVcdFile, shl_ln_reg_313, "shl_ln_reg_313");
    sc_trace(mVcdFile, icmp_ln46_fu_154_p2, "icmp_ln46_fu_154_p2");
    sc_trace(mVcdFile, j_fu_188_p2, "j_fu_188_p2");
    sc_trace(mVcdFile, j_reg_321, "j_reg_321");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, icmp_ln49_fu_182_p2, "icmp_ln49_fu_182_p2");
    sc_trace(mVcdFile, add_ln51_1_fu_216_p2, "add_ln51_1_fu_216_p2");
    sc_trace(mVcdFile, add_ln51_1_reg_331, "add_ln51_1_reg_331");
    sc_trace(mVcdFile, zext_ln62_fu_225_p1, "zext_ln62_fu_225_p1");
    sc_trace(mVcdFile, zext_ln62_reg_336, "zext_ln62_reg_336");
    sc_trace(mVcdFile, ap_CS_fsm_state8, "ap_CS_fsm_state8");
    sc_trace(mVcdFile, i_11_fu_235_p2, "i_11_fu_235_p2");
    sc_trace(mVcdFile, i_11_reg_344, "i_11_reg_344");
    sc_trace(mVcdFile, shl_ln2_fu_245_p3, "shl_ln2_fu_245_p3");
    sc_trace(mVcdFile, shl_ln2_reg_349, "shl_ln2_reg_349");
    sc_trace(mVcdFile, icmp_ln62_fu_229_p2, "icmp_ln62_fu_229_p2");
    sc_trace(mVcdFile, j_3_fu_263_p2, "j_3_fu_263_p2");
    sc_trace(mVcdFile, j_3_reg_357, "j_3_reg_357");
    sc_trace(mVcdFile, ap_CS_fsm_state9, "ap_CS_fsm_state9");
    sc_trace(mVcdFile, icmp_ln65_fu_257_p2, "icmp_ln65_fu_257_p2");
    sc_trace(mVcdFile, add_ln67_1_fu_291_p2, "add_ln67_1_fu_291_p2");
    sc_trace(mVcdFile, add_ln67_1_reg_367, "add_ln67_1_reg_367");
    sc_trace(mVcdFile, block_address0, "block_address0");
    sc_trace(mVcdFile, block_ce0, "block_ce0");
    sc_trace(mVcdFile, block_we0, "block_we0");
    sc_trace(mVcdFile, block_d0, "block_d0");
    sc_trace(mVcdFile, block_q0, "block_q0");
    sc_trace(mVcdFile, expandedKey_address0, "expandedKey_address0");
    sc_trace(mVcdFile, expandedKey_ce0, "expandedKey_ce0");
    sc_trace(mVcdFile, expandedKey_we0, "expandedKey_we0");
    sc_trace(mVcdFile, expandedKey_q0, "expandedKey_q0");
    sc_trace(mVcdFile, grp_aes_main_fu_131_ap_start, "grp_aes_main_fu_131_ap_start");
    sc_trace(mVcdFile, grp_aes_main_fu_131_ap_done, "grp_aes_main_fu_131_ap_done");
    sc_trace(mVcdFile, grp_aes_main_fu_131_ap_idle, "grp_aes_main_fu_131_ap_idle");
    sc_trace(mVcdFile, grp_aes_main_fu_131_ap_ready, "grp_aes_main_fu_131_ap_ready");
    sc_trace(mVcdFile, grp_aes_main_fu_131_state_address0, "grp_aes_main_fu_131_state_address0");
    sc_trace(mVcdFile, grp_aes_main_fu_131_state_ce0, "grp_aes_main_fu_131_state_ce0");
    sc_trace(mVcdFile, grp_aes_main_fu_131_state_we0, "grp_aes_main_fu_131_state_we0");
    sc_trace(mVcdFile, grp_aes_main_fu_131_state_d0, "grp_aes_main_fu_131_state_d0");
    sc_trace(mVcdFile, grp_aes_main_fu_131_expandedKey_address0, "grp_aes_main_fu_131_expandedKey_address0");
    sc_trace(mVcdFile, grp_aes_main_fu_131_expandedKey_ce0, "grp_aes_main_fu_131_expandedKey_ce0");
    sc_trace(mVcdFile, grp_expandKey_fu_139_ap_start, "grp_expandKey_fu_139_ap_start");
    sc_trace(mVcdFile, grp_expandKey_fu_139_ap_done, "grp_expandKey_fu_139_ap_done");
    sc_trace(mVcdFile, grp_expandKey_fu_139_ap_idle, "grp_expandKey_fu_139_ap_idle");
    sc_trace(mVcdFile, grp_expandKey_fu_139_ap_ready, "grp_expandKey_fu_139_ap_ready");
    sc_trace(mVcdFile, grp_expandKey_fu_139_expandedKey_address0, "grp_expandKey_fu_139_expandedKey_address0");
    sc_trace(mVcdFile, grp_expandKey_fu_139_expandedKey_ce0, "grp_expandKey_fu_139_expandedKey_ce0");
    sc_trace(mVcdFile, grp_expandKey_fu_139_expandedKey_we0, "grp_expandKey_fu_139_expandedKey_we0");
    sc_trace(mVcdFile, grp_expandKey_fu_139_expandedKey_d0, "grp_expandKey_fu_139_expandedKey_d0");
    sc_trace(mVcdFile, grp_expandKey_fu_139_key_address0, "grp_expandKey_fu_139_key_address0");
    sc_trace(mVcdFile, grp_expandKey_fu_139_key_ce0, "grp_expandKey_fu_139_key_ce0");
    sc_trace(mVcdFile, i_0_reg_87, "i_0_reg_87");
    sc_trace(mVcdFile, j_0_reg_98, "j_0_reg_98");
    sc_trace(mVcdFile, ap_CS_fsm_state4, "ap_CS_fsm_state4");
    sc_trace(mVcdFile, i_1_reg_109, "i_1_reg_109");
    sc_trace(mVcdFile, ap_CS_fsm_state7, "ap_CS_fsm_state7");
    sc_trace(mVcdFile, j_1_reg_120, "j_1_reg_120");
    sc_trace(mVcdFile, ap_CS_fsm_state10, "ap_CS_fsm_state10");
    sc_trace(mVcdFile, grp_aes_main_fu_131_ap_start_reg, "grp_aes_main_fu_131_ap_start_reg");
    sc_trace(mVcdFile, ap_CS_fsm_state6, "ap_CS_fsm_state6");
    sc_trace(mVcdFile, grp_expandKey_fu_139_ap_start_reg, "grp_expandKey_fu_139_ap_start_reg");
    sc_trace(mVcdFile, ap_CS_fsm_state5, "ap_CS_fsm_state5");
    sc_trace(mVcdFile, zext_ln51_fu_199_p1, "zext_ln51_fu_199_p1");
    sc_trace(mVcdFile, zext_ln51_1_fu_221_p1, "zext_ln51_1_fu_221_p1");
    sc_trace(mVcdFile, zext_ln67_fu_286_p1, "zext_ln67_fu_286_p1");
    sc_trace(mVcdFile, zext_ln67_1_fu_296_p1, "zext_ln67_1_fu_296_p1");
    sc_trace(mVcdFile, trunc_ln51_fu_166_p1, "trunc_ln51_fu_166_p1");
    sc_trace(mVcdFile, zext_ln49_fu_178_p1, "zext_ln49_fu_178_p1");
    sc_trace(mVcdFile, add_ln51_fu_194_p2, "add_ln51_fu_194_p2");
    sc_trace(mVcdFile, trunc_ln51_1_fu_204_p1, "trunc_ln51_1_fu_204_p1");
    sc_trace(mVcdFile, shl_ln51_1_fu_208_p3, "shl_ln51_1_fu_208_p3");
    sc_trace(mVcdFile, trunc_ln67_fu_241_p1, "trunc_ln67_fu_241_p1");
    sc_trace(mVcdFile, trunc_ln67_1_fu_269_p1, "trunc_ln67_1_fu_269_p1");
    sc_trace(mVcdFile, shl_ln67_1_fu_273_p3, "shl_ln67_1_fu_273_p3");
    sc_trace(mVcdFile, add_ln67_fu_281_p2, "add_ln67_fu_281_p2");
    sc_trace(mVcdFile, zext_ln65_fu_253_p1, "zext_ln65_fu_253_p1");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

aes_encrypt::~aes_encrypt() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    delete block_U;
    delete expandedKey_U;
    delete grp_aes_main_fu_131;
    delete grp_expandKey_fu_139;
}

void aes_encrypt::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        grp_aes_main_fu_131_ap_start_reg = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
            grp_aes_main_fu_131_ap_start_reg = ap_const_logic_1;
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, grp_aes_main_fu_131_ap_ready.read())) {
            grp_aes_main_fu_131_ap_start_reg = ap_const_logic_0;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        grp_expandKey_fu_139_ap_start_reg = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
             esl_seteq<1,1,1>(icmp_ln46_fu_154_p2.read(), ap_const_lv1_1))) {
            grp_expandKey_fu_139_ap_start_reg = ap_const_logic_1;
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, grp_expandKey_fu_139_ap_ready.read())) {
            grp_expandKey_fu_139_ap_start_reg = ap_const_logic_0;
        }
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
         esl_seteq<1,1,1>(icmp_ln49_fu_182_p2.read(), ap_const_lv1_1))) {
        i_0_reg_87 = i_reg_308.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        i_0_reg_87 = ap_const_lv3_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state9.read()) && 
         esl_seteq<1,1,1>(icmp_ln65_fu_257_p2.read(), ap_const_lv1_1))) {
        i_1_reg_109 = i_11_reg_344.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read()) && 
                esl_seteq<1,1,1>(grp_aes_main_fu_131_ap_done.read(), ap_const_logic_1))) {
        i_1_reg_109 = ap_const_lv3_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(icmp_ln46_fu_154_p2.read(), ap_const_lv1_0))) {
        j_0_reg_98 = ap_const_lv3_0;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        j_0_reg_98 = j_reg_321.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln62_fu_229_p2.read()))) {
        j_1_reg_120 = ap_const_lv3_0;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state10.read())) {
        j_1_reg_120 = j_3_reg_357.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln49_fu_182_p2.read()))) {
        add_ln51_1_reg_331 = add_ln51_1_fu_216_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state9.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln65_fu_257_p2.read()))) {
        add_ln67_1_reg_367 = add_ln67_1_fu_291_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read())) {
        i_11_reg_344 = i_11_fu_235_p2.read();
        zext_ln62_reg_336 = zext_ln62_fu_225_p1.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        i_reg_308 = i_fu_160_p2.read();
        zext_ln46_reg_300 = zext_ln46_fu_150_p1.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state9.read())) {
        j_3_reg_357 = j_3_fu_263_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        j_reg_321 = j_fu_188_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln62_fu_229_p2.read()))) {
        shl_ln2_reg_349 = shl_ln2_fu_245_p3.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(icmp_ln46_fu_154_p2.read(), ap_const_lv1_0))) {
        shl_ln_reg_313 = shl_ln_fu_170_p3.read();
    }
}

void aes_encrypt::thread_add_ln51_1_fu_216_p2() {
    add_ln51_1_fu_216_p2 = (!shl_ln51_1_fu_208_p3.read().is_01() || !zext_ln46_reg_300.read().is_01())? sc_lv<4>(): (sc_biguint<4>(shl_ln51_1_fu_208_p3.read()) + sc_biguint<4>(zext_ln46_reg_300.read()));
}

void aes_encrypt::thread_add_ln51_fu_194_p2() {
    add_ln51_fu_194_p2 = (!zext_ln49_fu_178_p1.read().is_01() || !shl_ln_reg_313.read().is_01())? sc_lv<4>(): (sc_biguint<4>(zext_ln49_fu_178_p1.read()) + sc_biguint<4>(shl_ln_reg_313.read()));
}

void aes_encrypt::thread_add_ln67_1_fu_291_p2() {
    add_ln67_1_fu_291_p2 = (!zext_ln65_fu_253_p1.read().is_01() || !shl_ln2_reg_349.read().is_01())? sc_lv<4>(): (sc_biguint<4>(zext_ln65_fu_253_p1.read()) + sc_biguint<4>(shl_ln2_reg_349.read()));
}

void aes_encrypt::thread_add_ln67_fu_281_p2() {
    add_ln67_fu_281_p2 = (!shl_ln67_1_fu_273_p3.read().is_01() || !zext_ln62_reg_336.read().is_01())? sc_lv<4>(): (sc_biguint<4>(shl_ln67_1_fu_273_p3.read()) + sc_biguint<4>(zext_ln62_reg_336.read()));
}

void aes_encrypt::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void aes_encrypt::thread_ap_CS_fsm_state10() {
    ap_CS_fsm_state10 = ap_CS_fsm.read()[9];
}

void aes_encrypt::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void aes_encrypt::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void aes_encrypt::thread_ap_CS_fsm_state4() {
    ap_CS_fsm_state4 = ap_CS_fsm.read()[3];
}

void aes_encrypt::thread_ap_CS_fsm_state5() {
    ap_CS_fsm_state5 = ap_CS_fsm.read()[4];
}

void aes_encrypt::thread_ap_CS_fsm_state6() {
    ap_CS_fsm_state6 = ap_CS_fsm.read()[5];
}

void aes_encrypt::thread_ap_CS_fsm_state7() {
    ap_CS_fsm_state7 = ap_CS_fsm.read()[6];
}

void aes_encrypt::thread_ap_CS_fsm_state8() {
    ap_CS_fsm_state8 = ap_CS_fsm.read()[7];
}

void aes_encrypt::thread_ap_CS_fsm_state9() {
    ap_CS_fsm_state9 = ap_CS_fsm.read()[8];
}

void aes_encrypt::thread_ap_done() {
    if (((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read()) && 
          esl_seteq<1,1,1>(icmp_ln62_fu_229_p2.read(), ap_const_lv1_1)))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void aes_encrypt::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void aes_encrypt::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read()) && 
         esl_seteq<1,1,1>(icmp_ln62_fu_229_p2.read(), ap_const_lv1_1))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void aes_encrypt::thread_block_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state9.read())) {
        block_address0 =  (sc_lv<4>) (zext_ln67_fu_286_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        block_address0 =  (sc_lv<4>) (zext_ln51_1_fu_221_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read())) {
        block_address0 = grp_aes_main_fu_131_state_address0.read();
    } else {
        block_address0 = "XXXX";
    }
}

void aes_encrypt::thread_block_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state9.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()))) {
        block_ce0 = ap_const_logic_1;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read())) {
        block_ce0 = grp_aes_main_fu_131_state_ce0.read();
    } else {
        block_ce0 = ap_const_logic_0;
    }
}

void aes_encrypt::thread_block_d0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        block_d0 = input_r_q0.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read())) {
        block_d0 = grp_aes_main_fu_131_state_d0.read();
    } else {
        block_d0 =  (sc_lv<8>) ("XXXXXXXX");
    }
}

void aes_encrypt::thread_block_we0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        block_we0 = ap_const_logic_1;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read())) {
        block_we0 = grp_aes_main_fu_131_state_we0.read();
    } else {
        block_we0 = ap_const_logic_0;
    }
}

void aes_encrypt::thread_expandedKey_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        expandedKey_address0 = grp_expandKey_fu_139_expandedKey_address0.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read())) {
        expandedKey_address0 = grp_aes_main_fu_131_expandedKey_address0.read();
    } else {
        expandedKey_address0 =  (sc_lv<8>) ("XXXXXXXX");
    }
}

void aes_encrypt::thread_expandedKey_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        expandedKey_ce0 = grp_expandKey_fu_139_expandedKey_ce0.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read())) {
        expandedKey_ce0 = grp_aes_main_fu_131_expandedKey_ce0.read();
    } else {
        expandedKey_ce0 = ap_const_logic_0;
    }
}

void aes_encrypt::thread_expandedKey_we0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        expandedKey_we0 = grp_expandKey_fu_139_expandedKey_we0.read();
    } else {
        expandedKey_we0 = ap_const_logic_0;
    }
}

void aes_encrypt::thread_grp_aes_main_fu_131_ap_start() {
    grp_aes_main_fu_131_ap_start = grp_aes_main_fu_131_ap_start_reg.read();
}

void aes_encrypt::thread_grp_expandKey_fu_139_ap_start() {
    grp_expandKey_fu_139_ap_start = grp_expandKey_fu_139_ap_start_reg.read();
}

void aes_encrypt::thread_i_11_fu_235_p2() {
    i_11_fu_235_p2 = (!i_1_reg_109.read().is_01() || !ap_const_lv3_1.is_01())? sc_lv<3>(): (sc_biguint<3>(i_1_reg_109.read()) + sc_biguint<3>(ap_const_lv3_1));
}

void aes_encrypt::thread_i_fu_160_p2() {
    i_fu_160_p2 = (!i_0_reg_87.read().is_01() || !ap_const_lv3_1.is_01())? sc_lv<3>(): (sc_biguint<3>(i_0_reg_87.read()) + sc_biguint<3>(ap_const_lv3_1));
}

void aes_encrypt::thread_icmp_ln46_fu_154_p2() {
    icmp_ln46_fu_154_p2 = (!i_0_reg_87.read().is_01() || !ap_const_lv3_4.is_01())? sc_lv<1>(): sc_lv<1>(i_0_reg_87.read() == ap_const_lv3_4);
}

void aes_encrypt::thread_icmp_ln49_fu_182_p2() {
    icmp_ln49_fu_182_p2 = (!j_0_reg_98.read().is_01() || !ap_const_lv3_4.is_01())? sc_lv<1>(): sc_lv<1>(j_0_reg_98.read() == ap_const_lv3_4);
}

void aes_encrypt::thread_icmp_ln62_fu_229_p2() {
    icmp_ln62_fu_229_p2 = (!i_1_reg_109.read().is_01() || !ap_const_lv3_4.is_01())? sc_lv<1>(): sc_lv<1>(i_1_reg_109.read() == ap_const_lv3_4);
}

void aes_encrypt::thread_icmp_ln65_fu_257_p2() {
    icmp_ln65_fu_257_p2 = (!j_1_reg_120.read().is_01() || !ap_const_lv3_4.is_01())? sc_lv<1>(): sc_lv<1>(j_1_reg_120.read() == ap_const_lv3_4);
}

void aes_encrypt::thread_input_r_address0() {
    input_r_address0 =  (sc_lv<4>) (zext_ln51_fu_199_p1.read());
}

void aes_encrypt::thread_input_r_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        input_r_ce0 = ap_const_logic_1;
    } else {
        input_r_ce0 = ap_const_logic_0;
    }
}

void aes_encrypt::thread_j_3_fu_263_p2() {
    j_3_fu_263_p2 = (!j_1_reg_120.read().is_01() || !ap_const_lv3_1.is_01())? sc_lv<3>(): (sc_biguint<3>(j_1_reg_120.read()) + sc_biguint<3>(ap_const_lv3_1));
}

void aes_encrypt::thread_j_fu_188_p2() {
    j_fu_188_p2 = (!j_0_reg_98.read().is_01() || !ap_const_lv3_1.is_01())? sc_lv<3>(): (sc_biguint<3>(j_0_reg_98.read()) + sc_biguint<3>(ap_const_lv3_1));
}

void aes_encrypt::thread_key_address0() {
    key_address0 = grp_expandKey_fu_139_key_address0.read();
}

void aes_encrypt::thread_key_ce0() {
    key_ce0 = grp_expandKey_fu_139_key_ce0.read();
}

void aes_encrypt::thread_output_r_address0() {
    output_r_address0 =  (sc_lv<4>) (zext_ln67_1_fu_296_p1.read());
}

void aes_encrypt::thread_output_r_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state10.read())) {
        output_r_ce0 = ap_const_logic_1;
    } else {
        output_r_ce0 = ap_const_logic_0;
    }
}

void aes_encrypt::thread_output_r_d0() {
    output_r_d0 = block_q0.read();
}

void aes_encrypt::thread_output_r_we0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state10.read())) {
        output_r_we0 = ap_const_logic_1;
    } else {
        output_r_we0 = ap_const_logic_0;
    }
}

void aes_encrypt::thread_shl_ln2_fu_245_p3() {
    shl_ln2_fu_245_p3 = esl_concat<2,2>(trunc_ln67_fu_241_p1.read(), ap_const_lv2_0);
}

void aes_encrypt::thread_shl_ln51_1_fu_208_p3() {
    shl_ln51_1_fu_208_p3 = esl_concat<2,2>(trunc_ln51_1_fu_204_p1.read(), ap_const_lv2_0);
}

void aes_encrypt::thread_shl_ln67_1_fu_273_p3() {
    shl_ln67_1_fu_273_p3 = esl_concat<2,2>(trunc_ln67_1_fu_269_p1.read(), ap_const_lv2_0);
}

void aes_encrypt::thread_shl_ln_fu_170_p3() {
    shl_ln_fu_170_p3 = esl_concat<2,2>(trunc_ln51_fu_166_p1.read(), ap_const_lv2_0);
}

void aes_encrypt::thread_trunc_ln51_1_fu_204_p1() {
    trunc_ln51_1_fu_204_p1 = j_0_reg_98.read().range(2-1, 0);
}

void aes_encrypt::thread_trunc_ln51_fu_166_p1() {
    trunc_ln51_fu_166_p1 = i_0_reg_87.read().range(2-1, 0);
}

void aes_encrypt::thread_trunc_ln67_1_fu_269_p1() {
    trunc_ln67_1_fu_269_p1 = j_1_reg_120.read().range(2-1, 0);
}

void aes_encrypt::thread_trunc_ln67_fu_241_p1() {
    trunc_ln67_fu_241_p1 = i_1_reg_109.read().range(2-1, 0);
}

void aes_encrypt::thread_zext_ln46_fu_150_p1() {
    zext_ln46_fu_150_p1 = esl_zext<4,3>(i_0_reg_87.read());
}

void aes_encrypt::thread_zext_ln49_fu_178_p1() {
    zext_ln49_fu_178_p1 = esl_zext<4,3>(j_0_reg_98.read());
}

void aes_encrypt::thread_zext_ln51_1_fu_221_p1() {
    zext_ln51_1_fu_221_p1 = esl_zext<64,4>(add_ln51_1_reg_331.read());
}

void aes_encrypt::thread_zext_ln51_fu_199_p1() {
    zext_ln51_fu_199_p1 = esl_zext<64,4>(add_ln51_fu_194_p2.read());
}

void aes_encrypt::thread_zext_ln62_fu_225_p1() {
    zext_ln62_fu_225_p1 = esl_zext<4,3>(i_1_reg_109.read());
}

void aes_encrypt::thread_zext_ln65_fu_253_p1() {
    zext_ln65_fu_253_p1 = esl_zext<4,3>(j_1_reg_120.read());
}

void aes_encrypt::thread_zext_ln67_1_fu_296_p1() {
    zext_ln67_1_fu_296_p1 = esl_zext<64,4>(add_ln67_1_reg_367.read());
}

void aes_encrypt::thread_zext_ln67_fu_286_p1() {
    zext_ln67_fu_286_p1 = esl_zext<64,4>(add_ln67_fu_281_p2.read());
}

void aes_encrypt::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(icmp_ln46_fu_154_p2.read(), ap_const_lv1_0))) {
                ap_NS_fsm = ap_ST_fsm_state3;
            } else {
                ap_NS_fsm = ap_ST_fsm_state5;
            }
            break;
        case 4 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && esl_seteq<1,1,1>(icmp_ln49_fu_182_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state4;
            }
            break;
        case 8 : 
            ap_NS_fsm = ap_ST_fsm_state3;
            break;
        case 16 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) && esl_seteq<1,1,1>(grp_expandKey_fu_139_ap_done.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state6;
            } else {
                ap_NS_fsm = ap_ST_fsm_state5;
            }
            break;
        case 32 : 
            ap_NS_fsm = ap_ST_fsm_state7;
            break;
        case 64 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read()) && esl_seteq<1,1,1>(grp_aes_main_fu_131_ap_done.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state8;
            } else {
                ap_NS_fsm = ap_ST_fsm_state7;
            }
            break;
        case 128 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read()) && esl_seteq<1,1,1>(icmp_ln62_fu_229_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else {
                ap_NS_fsm = ap_ST_fsm_state9;
            }
            break;
        case 256 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state9.read()) && esl_seteq<1,1,1>(icmp_ln65_fu_257_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state8;
            } else {
                ap_NS_fsm = ap_ST_fsm_state10;
            }
            break;
        case 512 : 
            ap_NS_fsm = ap_ST_fsm_state9;
            break;
        default : 
            ap_NS_fsm =  (sc_lv<10>) ("XXXXXXXXXX");
            break;
    }
}

}


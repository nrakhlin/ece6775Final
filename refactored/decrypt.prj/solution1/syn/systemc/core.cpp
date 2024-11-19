// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "core.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic core::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic core::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<6> core::ap_ST_fsm_state1 = "1";
const sc_lv<6> core::ap_ST_fsm_state2 = "10";
const sc_lv<6> core::ap_ST_fsm_state3 = "100";
const sc_lv<6> core::ap_ST_fsm_state4 = "1000";
const sc_lv<6> core::ap_ST_fsm_state5 = "10000";
const sc_lv<6> core::ap_ST_fsm_state6 = "100000";
const sc_lv<32> core::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> core::ap_const_lv32_1 = "1";
const sc_lv<1> core::ap_const_lv1_0 = "0";
const sc_lv<32> core::ap_const_lv32_2 = "10";
const sc_lv<32> core::ap_const_lv32_3 = "11";
const sc_lv<1> core::ap_const_lv1_1 = "1";
const sc_lv<2> core::ap_const_lv2_0 = "00";
const sc_lv<2> core::ap_const_lv2_1 = "1";
const sc_lv<3> core::ap_const_lv3_0 = "000";
const sc_lv<32> core::ap_const_lv32_4 = "100";
const sc_lv<32> core::ap_const_lv32_5 = "101";
const sc_lv<2> core::ap_const_lv2_2 = "10";
const sc_lv<2> core::ap_const_lv2_3 = "11";
const sc_lv<3> core::ap_const_lv3_4 = "100";
const sc_lv<3> core::ap_const_lv3_1 = "1";
const sc_lv<8> core::ap_const_lv8_0 = "00000000";
const bool core::ap_const_boolean_1 = true;

core::core(sc_module_name name) : sc_module(name), mVcdFile(0) {
    sbox_U = new core_sbox("sbox_U");
    sbox_U->clk(ap_clk);
    sbox_U->reset(ap_rst);
    sbox_U->address0(sbox_address0);
    sbox_U->ce0(sbox_ce0);
    sbox_U->q0(sbox_q0);
    Rcon_U = new core_Rcon("Rcon_U");
    Rcon_U->clk(ap_clk);
    Rcon_U->reset(ap_rst);
    Rcon_U->address0(Rcon_address0);
    Rcon_U->ce0(Rcon_ce0);
    Rcon_U->q0(Rcon_q0);
    decrypt_dut_mux_4bkb_U1 = new decrypt_dut_mux_4bkb<1,1,1,1,1,1,2,1>("decrypt_dut_mux_4bkb_U1");
    decrypt_dut_mux_4bkb_U1->din0(ap_var_for_const0);
    decrypt_dut_mux_4bkb_U1->din1(write_flag_0_i_reg_142);
    decrypt_dut_mux_4bkb_U1->din2(write_flag_0_i_reg_142);
    decrypt_dut_mux_4bkb_U1->din3(write_flag_0_i_reg_142);
    decrypt_dut_mux_4bkb_U1->din4(i_0_i_reg_185);
    decrypt_dut_mux_4bkb_U1->dout(write_flag_0_be_i_fu_233_p6);
    decrypt_dut_mux_4cud_U2 = new decrypt_dut_mux_4cud<1,1,8,8,8,8,2,8>("decrypt_dut_mux_4cud_U2");
    decrypt_dut_mux_4cud_U2->din0(word12_0_i_reg_175);
    decrypt_dut_mux_4cud_U2->din1(phi_ln87_reg_197);
    decrypt_dut_mux_4cud_U2->din2(word12_0_i_reg_175);
    decrypt_dut_mux_4cud_U2->din3(word12_0_i_reg_175);
    decrypt_dut_mux_4cud_U2->din4(i_0_i_reg_185);
    decrypt_dut_mux_4cud_U2->dout(word12_0_be_i_fu_292_p6);
    decrypt_dut_mux_4cud_U3 = new decrypt_dut_mux_4cud<1,1,8,8,8,8,2,8>("decrypt_dut_mux_4cud_U3");
    decrypt_dut_mux_4cud_U3->din0(word2_0_i_reg_165);
    decrypt_dut_mux_4cud_U3->din1(word2_0_i_reg_165);
    decrypt_dut_mux_4cud_U3->din2(phi_ln87_reg_197);
    decrypt_dut_mux_4cud_U3->din3(phi_ln87_reg_197);
    decrypt_dut_mux_4cud_U3->din4(i_0_i_reg_185);
    decrypt_dut_mux_4cud_U3->dout(word2_0_be_i_fu_306_p6);
    decrypt_dut_mux_4cud_U4 = new decrypt_dut_mux_4cud<1,1,8,8,8,8,2,8>("decrypt_dut_mux_4cud_U4");
    decrypt_dut_mux_4cud_U4->din0(phi_ln87_reg_197);
    decrypt_dut_mux_4cud_U4->din1(word_03_i_reg_153);
    decrypt_dut_mux_4cud_U4->din2(word_03_i_reg_153);
    decrypt_dut_mux_4cud_U4->din3(word_03_i_reg_153);
    decrypt_dut_mux_4cud_U4->din4(i_0_i_reg_185);
    decrypt_dut_mux_4cud_U4->dout(word_03_be_i_fu_320_p6);
    decrypt_dut_mux_4cud_U5 = new decrypt_dut_mux_4cud<1,1,8,8,8,8,2,8>("decrypt_dut_mux_4cud_U5");
    decrypt_dut_mux_4cud_U5->din0(empty_14_fu_58);
    decrypt_dut_mux_4cud_U5->din1(empty_15_fu_62);
    decrypt_dut_mux_4cud_U5->din2(empty_16_fu_66);
    decrypt_dut_mux_4cud_U5->din3(empty_17_fu_70);
    decrypt_dut_mux_4cud_U5->din4(num_assign_1_fu_362_p5);
    decrypt_dut_mux_4cud_U5->dout(num_assign_1_fu_362_p6);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_Rcon_address0);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( zext_ln92_fu_384_p1 );

    SC_METHOD(thread_Rcon_ce0);
    sensitive << ( ap_CS_fsm_state4 );

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

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state6 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_phi_mux_i_0_i_phi_fu_189_p4);
    sensitive << ( i_0_i_reg_185 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state6 );

    SC_METHOD(thread_ap_return_0);
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( word_1_0_fu_74 );
    sensitive << ( ap_return_0_preg );

    SC_METHOD(thread_ap_return_1);
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( word_2_0_fu_78 );
    sensitive << ( ap_return_1_preg );

    SC_METHOD(thread_ap_return_2);
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( word_3_0_fu_82 );
    sensitive << ( ap_return_2_preg );

    SC_METHOD(thread_ap_return_3);
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( xor_ln109_fu_441_p2 );
    sensitive << ( ap_return_3_preg );

    SC_METHOD(thread_i_5_fu_227_p2);
    sensitive << ( i_0_i_reg_185 );

    SC_METHOD(thread_i_fu_340_p2);
    sensitive << ( i_0_reg_210 );

    SC_METHOD(thread_icmp_ln103_fu_334_p2);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( i_0_reg_210 );

    SC_METHOD(thread_icmp_ln86_fu_221_p2);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( i_0_i_reg_185 );

    SC_METHOD(thread_num_assign_1_fu_362_p5);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( i_0_reg_210 );

    SC_METHOD(thread_sbox_address0);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( zext_ln43_fu_376_p1 );

    SC_METHOD(thread_sbox_ce0);
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_select_ln89_fu_247_p3);
    sensitive << ( word_0_read );
    sensitive << ( write_flag_0_i_reg_142 );
    sensitive << ( word_03_i_reg_153 );

    SC_METHOD(thread_trunc_ln105_fu_358_p1);
    sensitive << ( i_0_reg_210 );

    SC_METHOD(thread_trunc_ln109_fu_381_p1);
    sensitive << ( iteration );

    SC_METHOD(thread_xor_ln109_fu_441_p2);
    sensitive << ( Rcon_q0 );
    sensitive << ( word_load_fu_54 );

    SC_METHOD(thread_zext_ln43_fu_376_p1);
    sensitive << ( num_assign_1_fu_362_p6 );

    SC_METHOD(thread_zext_ln92_fu_384_p1);
    sensitive << ( trunc_ln109_fu_381_p1 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln86_fu_221_p2 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( icmp_ln103_fu_334_p2 );

    SC_THREAD(thread_ap_var_for_const0);

    ap_CS_fsm = "000001";
    ap_return_0_preg = "00000000";
    ap_return_1_preg = "00000000";
    ap_return_2_preg = "00000000";
    ap_return_3_preg = "00000000";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "core_sc_trace_" << apTFileNum ++;
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
    sc_trace(mVcdFile, word_0_read, "(port)word_0_read");
    sc_trace(mVcdFile, word_1_read, "(port)word_1_read");
    sc_trace(mVcdFile, word_2_read, "(port)word_2_read");
    sc_trace(mVcdFile, word_3_read, "(port)word_3_read");
    sc_trace(mVcdFile, iteration, "(port)iteration");
    sc_trace(mVcdFile, ap_return_0, "(port)ap_return_0");
    sc_trace(mVcdFile, ap_return_1, "(port)ap_return_1");
    sc_trace(mVcdFile, ap_return_2, "(port)ap_return_2");
    sc_trace(mVcdFile, ap_return_3, "(port)ap_return_3");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, sbox_address0, "sbox_address0");
    sc_trace(mVcdFile, sbox_ce0, "sbox_ce0");
    sc_trace(mVcdFile, sbox_q0, "sbox_q0");
    sc_trace(mVcdFile, Rcon_address0, "Rcon_address0");
    sc_trace(mVcdFile, Rcon_ce0, "Rcon_ce0");
    sc_trace(mVcdFile, Rcon_q0, "Rcon_q0");
    sc_trace(mVcdFile, i_5_fu_227_p2, "i_5_fu_227_p2");
    sc_trace(mVcdFile, i_5_reg_501, "i_5_reg_501");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, write_flag_0_be_i_fu_233_p6, "write_flag_0_be_i_fu_233_p6");
    sc_trace(mVcdFile, write_flag_0_be_i_reg_506, "write_flag_0_be_i_reg_506");
    sc_trace(mVcdFile, icmp_ln86_fu_221_p2, "icmp_ln86_fu_221_p2");
    sc_trace(mVcdFile, word12_0_be_i_fu_292_p6, "word12_0_be_i_fu_292_p6");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, word2_0_be_i_fu_306_p6, "word2_0_be_i_fu_306_p6");
    sc_trace(mVcdFile, word_03_be_i_fu_320_p6, "word_03_be_i_fu_320_p6");
    sc_trace(mVcdFile, i_fu_340_p2, "i_fu_340_p2");
    sc_trace(mVcdFile, i_reg_585, "i_reg_585");
    sc_trace(mVcdFile, ap_CS_fsm_state4, "ap_CS_fsm_state4");
    sc_trace(mVcdFile, trunc_ln105_fu_358_p1, "trunc_ln105_fu_358_p1");
    sc_trace(mVcdFile, trunc_ln105_reg_590, "trunc_ln105_reg_590");
    sc_trace(mVcdFile, icmp_ln103_fu_334_p2, "icmp_ln103_fu_334_p2");
    sc_trace(mVcdFile, write_flag_0_i_reg_142, "write_flag_0_i_reg_142");
    sc_trace(mVcdFile, word_03_i_reg_153, "word_03_i_reg_153");
    sc_trace(mVcdFile, word2_0_i_reg_165, "word2_0_i_reg_165");
    sc_trace(mVcdFile, word12_0_i_reg_175, "word12_0_i_reg_175");
    sc_trace(mVcdFile, ap_phi_mux_i_0_i_phi_fu_189_p4, "ap_phi_mux_i_0_i_phi_fu_189_p4");
    sc_trace(mVcdFile, i_0_i_reg_185, "i_0_i_reg_185");
    sc_trace(mVcdFile, phi_ln87_reg_197, "phi_ln87_reg_197");
    sc_trace(mVcdFile, i_0_reg_210, "i_0_reg_210");
    sc_trace(mVcdFile, ap_CS_fsm_state5, "ap_CS_fsm_state5");
    sc_trace(mVcdFile, zext_ln43_fu_376_p1, "zext_ln43_fu_376_p1");
    sc_trace(mVcdFile, zext_ln92_fu_384_p1, "zext_ln92_fu_384_p1");
    sc_trace(mVcdFile, word_load_fu_54, "word_load_fu_54");
    sc_trace(mVcdFile, select_ln89_fu_247_p3, "select_ln89_fu_247_p3");
    sc_trace(mVcdFile, ap_CS_fsm_state6, "ap_CS_fsm_state6");
    sc_trace(mVcdFile, empty_14_fu_58, "empty_14_fu_58");
    sc_trace(mVcdFile, empty_15_fu_62, "empty_15_fu_62");
    sc_trace(mVcdFile, empty_16_fu_66, "empty_16_fu_66");
    sc_trace(mVcdFile, empty_17_fu_70, "empty_17_fu_70");
    sc_trace(mVcdFile, word_1_0_fu_74, "word_1_0_fu_74");
    sc_trace(mVcdFile, word_2_0_fu_78, "word_2_0_fu_78");
    sc_trace(mVcdFile, word_3_0_fu_82, "word_3_0_fu_82");
    sc_trace(mVcdFile, num_assign_1_fu_362_p5, "num_assign_1_fu_362_p5");
    sc_trace(mVcdFile, num_assign_1_fu_362_p6, "num_assign_1_fu_362_p6");
    sc_trace(mVcdFile, trunc_ln109_fu_381_p1, "trunc_ln109_fu_381_p1");
    sc_trace(mVcdFile, xor_ln109_fu_441_p2, "xor_ln109_fu_441_p2");
    sc_trace(mVcdFile, ap_return_0_preg, "ap_return_0_preg");
    sc_trace(mVcdFile, ap_return_1_preg, "ap_return_1_preg");
    sc_trace(mVcdFile, ap_return_2_preg, "ap_return_2_preg");
    sc_trace(mVcdFile, ap_return_3_preg, "ap_return_3_preg");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

core::~core() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    delete sbox_U;
    delete Rcon_U;
    delete decrypt_dut_mux_4bkb_U1;
    delete decrypt_dut_mux_4cud_U2;
    delete decrypt_dut_mux_4cud_U3;
    delete decrypt_dut_mux_4cud_U4;
    delete decrypt_dut_mux_4cud_U5;
}

void core::thread_ap_var_for_const0() {
    ap_var_for_const0 = ap_const_lv1_1;
}

void core::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_return_0_preg = ap_const_lv8_0;
    } else {
        if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
            ap_return_0_preg = word_1_0_fu_74.read();
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_return_1_preg = ap_const_lv8_0;
    } else {
        if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
            ap_return_1_preg = word_2_0_fu_78.read();
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_return_2_preg = ap_const_lv8_0;
    } else {
        if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
            ap_return_2_preg = word_3_0_fu_82.read();
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_return_3_preg = ap_const_lv8_0;
    } else {
        if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
            ap_return_3_preg = xor_ln109_fu_441_p2.read();
        }
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) && 
         esl_seteq<1,2,2>(trunc_ln105_reg_590.read(), ap_const_lv2_0))) {
        empty_14_fu_58 = sbox_q0.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                esl_seteq<1,1,1>(icmp_ln86_fu_221_p2.read(), ap_const_lv1_1))) {
        empty_14_fu_58 = select_ln89_fu_247_p3.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) && 
         esl_seteq<1,2,2>(trunc_ln105_reg_590.read(), ap_const_lv2_1))) {
        empty_15_fu_62 = sbox_q0.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                esl_seteq<1,1,1>(icmp_ln86_fu_221_p2.read(), ap_const_lv1_1))) {
        empty_15_fu_62 = word12_0_i_reg_175.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) && 
         esl_seteq<1,2,2>(trunc_ln105_reg_590.read(), ap_const_lv2_2))) {
        empty_16_fu_66 = sbox_q0.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                esl_seteq<1,1,1>(icmp_ln86_fu_221_p2.read(), ap_const_lv1_1))) {
        empty_16_fu_66 = word2_0_i_reg_165.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) && 
         esl_seteq<1,2,2>(trunc_ln105_reg_590.read(), ap_const_lv2_3))) {
        empty_17_fu_70 = sbox_q0.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                esl_seteq<1,1,1>(icmp_ln86_fu_221_p2.read(), ap_const_lv1_1))) {
        empty_17_fu_70 = word_0_read.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        i_0_i_reg_185 = i_5_reg_501.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        i_0_i_reg_185 = ap_const_lv2_0;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        i_0_reg_210 = i_reg_585.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                esl_seteq<1,1,1>(icmp_ln86_fu_221_p2.read(), ap_const_lv1_1))) {
        i_0_reg_210 = ap_const_lv3_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(icmp_ln86_fu_221_p2.read(), ap_const_lv1_0))) {
        if (esl_seteq<1,2,2>(ap_const_lv2_0, ap_phi_mux_i_0_i_phi_fu_189_p4.read())) {
            phi_ln87_reg_197 = word12_0_i_reg_175.read();
        } else if ((!esl_seteq<1,2,2>(ap_const_lv2_0, ap_phi_mux_i_0_i_phi_fu_189_p4.read()) && 
                    !esl_seteq<1,2,2>(ap_phi_mux_i_0_i_phi_fu_189_p4.read(), ap_const_lv2_1))) {
            phi_ln87_reg_197 = word_3_read.read();
        } else if (esl_seteq<1,2,2>(ap_phi_mux_i_0_i_phi_fu_189_p4.read(), ap_const_lv2_1)) {
            phi_ln87_reg_197 = word2_0_i_reg_165.read();
        }
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        word12_0_i_reg_175 = word12_0_be_i_fu_292_p6.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        word12_0_i_reg_175 = word_1_read.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        word2_0_i_reg_165 = word2_0_be_i_fu_306_p6.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        word2_0_i_reg_165 = word_2_read.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) && 
         esl_seteq<1,2,2>(trunc_ln105_reg_590.read(), ap_const_lv2_1))) {
        word_1_0_fu_74 = sbox_q0.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                esl_seteq<1,1,1>(icmp_ln86_fu_221_p2.read(), ap_const_lv1_1))) {
        word_1_0_fu_74 = word12_0_i_reg_175.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) && 
         esl_seteq<1,2,2>(trunc_ln105_reg_590.read(), ap_const_lv2_2))) {
        word_2_0_fu_78 = sbox_q0.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                esl_seteq<1,1,1>(icmp_ln86_fu_221_p2.read(), ap_const_lv1_1))) {
        word_2_0_fu_78 = word2_0_i_reg_165.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) && 
         esl_seteq<1,2,2>(trunc_ln105_reg_590.read(), ap_const_lv2_3))) {
        word_3_0_fu_82 = sbox_q0.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                esl_seteq<1,1,1>(icmp_ln86_fu_221_p2.read(), ap_const_lv1_1))) {
        word_3_0_fu_82 = word_0_read.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) && 
         esl_seteq<1,2,2>(trunc_ln105_reg_590.read(), ap_const_lv2_0))) {
        word_load_fu_54 = sbox_q0.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                esl_seteq<1,1,1>(icmp_ln86_fu_221_p2.read(), ap_const_lv1_1))) {
        word_load_fu_54 = select_ln89_fu_247_p3.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        write_flag_0_i_reg_142 = write_flag_0_be_i_reg_506.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        write_flag_0_i_reg_142 = ap_const_lv1_0;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        i_5_reg_501 = i_5_fu_227_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        i_reg_585 = i_fu_340_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln103_fu_334_p2.read()))) {
        trunc_ln105_reg_590 = trunc_ln105_fu_358_p1.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        word_03_i_reg_153 = word_03_be_i_fu_320_p6.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(icmp_ln86_fu_221_p2.read(), ap_const_lv1_0))) {
        write_flag_0_be_i_reg_506 = write_flag_0_be_i_fu_233_p6.read();
    }
}

void core::thread_Rcon_address0() {
    Rcon_address0 =  (sc_lv<8>) (zext_ln92_fu_384_p1.read());
}

void core::thread_Rcon_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        Rcon_ce0 = ap_const_logic_1;
    } else {
        Rcon_ce0 = ap_const_logic_0;
    }
}

void core::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void core::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void core::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void core::thread_ap_CS_fsm_state4() {
    ap_CS_fsm_state4 = ap_CS_fsm.read()[3];
}

void core::thread_ap_CS_fsm_state5() {
    ap_CS_fsm_state5 = ap_CS_fsm.read()[4];
}

void core::thread_ap_CS_fsm_state6() {
    ap_CS_fsm_state6 = ap_CS_fsm.read()[5];
}

void core::thread_ap_done() {
    if (((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read()))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void core::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void core::thread_ap_phi_mux_i_0_i_phi_fu_189_p4() {
    ap_phi_mux_i_0_i_phi_fu_189_p4 = i_0_i_reg_185.read();
}

void core::thread_ap_ready() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void core::thread_ap_return_0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        ap_return_0 = word_1_0_fu_74.read();
    } else {
        ap_return_0 = ap_return_0_preg.read();
    }
}

void core::thread_ap_return_1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        ap_return_1 = word_2_0_fu_78.read();
    } else {
        ap_return_1 = ap_return_1_preg.read();
    }
}

void core::thread_ap_return_2() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        ap_return_2 = word_3_0_fu_82.read();
    } else {
        ap_return_2 = ap_return_2_preg.read();
    }
}

void core::thread_ap_return_3() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        ap_return_3 = xor_ln109_fu_441_p2.read();
    } else {
        ap_return_3 = ap_return_3_preg.read();
    }
}

void core::thread_i_5_fu_227_p2() {
    i_5_fu_227_p2 = (!i_0_i_reg_185.read().is_01() || !ap_const_lv2_1.is_01())? sc_lv<2>(): (sc_biguint<2>(i_0_i_reg_185.read()) + sc_biguint<2>(ap_const_lv2_1));
}

void core::thread_i_fu_340_p2() {
    i_fu_340_p2 = (!i_0_reg_210.read().is_01() || !ap_const_lv3_1.is_01())? sc_lv<3>(): (sc_biguint<3>(i_0_reg_210.read()) + sc_biguint<3>(ap_const_lv3_1));
}

void core::thread_icmp_ln103_fu_334_p2() {
    icmp_ln103_fu_334_p2 = (!i_0_reg_210.read().is_01() || !ap_const_lv3_4.is_01())? sc_lv<1>(): sc_lv<1>(i_0_reg_210.read() == ap_const_lv3_4);
}

void core::thread_icmp_ln86_fu_221_p2() {
    icmp_ln86_fu_221_p2 = (!i_0_i_reg_185.read().is_01() || !ap_const_lv2_3.is_01())? sc_lv<1>(): sc_lv<1>(i_0_i_reg_185.read() == ap_const_lv2_3);
}

void core::thread_num_assign_1_fu_362_p5() {
    num_assign_1_fu_362_p5 = i_0_reg_210.read().range(2-1, 0);
}

void core::thread_sbox_address0() {
    sbox_address0 =  (sc_lv<8>) (zext_ln43_fu_376_p1.read());
}

void core::thread_sbox_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        sbox_ce0 = ap_const_logic_1;
    } else {
        sbox_ce0 = ap_const_logic_0;
    }
}

void core::thread_select_ln89_fu_247_p3() {
    select_ln89_fu_247_p3 = (!write_flag_0_i_reg_142.read()[0].is_01())? sc_lv<8>(): ((write_flag_0_i_reg_142.read()[0].to_bool())? word_03_i_reg_153.read(): word_0_read.read());
}

void core::thread_trunc_ln105_fu_358_p1() {
    trunc_ln105_fu_358_p1 = i_0_reg_210.read().range(2-1, 0);
}

void core::thread_trunc_ln109_fu_381_p1() {
    trunc_ln109_fu_381_p1 = iteration.read().range(8-1, 0);
}

void core::thread_xor_ln109_fu_441_p2() {
    xor_ln109_fu_441_p2 = (Rcon_q0.read() ^ word_load_fu_54.read());
}

void core::thread_zext_ln43_fu_376_p1() {
    zext_ln43_fu_376_p1 = esl_zext<64,8>(num_assign_1_fu_362_p6.read());
}

void core::thread_zext_ln92_fu_384_p1() {
    zext_ln92_fu_384_p1 = esl_zext<64,8>(trunc_ln109_fu_381_p1.read());
}

void core::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(icmp_ln86_fu_221_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state4;
            } else {
                ap_NS_fsm = ap_ST_fsm_state3;
            }
            break;
        case 4 : 
            ap_NS_fsm = ap_ST_fsm_state2;
            break;
        case 8 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && esl_seteq<1,1,1>(icmp_ln103_fu_334_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state6;
            } else {
                ap_NS_fsm = ap_ST_fsm_state5;
            }
            break;
        case 16 : 
            ap_NS_fsm = ap_ST_fsm_state4;
            break;
        case 32 : 
            ap_NS_fsm = ap_ST_fsm_state1;
            break;
        default : 
            ap_NS_fsm = "XXXXXX";
            break;
    }
}

}


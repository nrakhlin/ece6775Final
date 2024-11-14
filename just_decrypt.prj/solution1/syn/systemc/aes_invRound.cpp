// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "aes_invRound.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic aes_invRound::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic aes_invRound::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<11> aes_invRound::ap_ST_fsm_state1 = "1";
const sc_lv<11> aes_invRound::ap_ST_fsm_state2 = "10";
const sc_lv<11> aes_invRound::ap_ST_fsm_state3 = "100";
const sc_lv<11> aes_invRound::ap_ST_fsm_state4 = "1000";
const sc_lv<11> aes_invRound::ap_ST_fsm_state5 = "10000";
const sc_lv<11> aes_invRound::ap_ST_fsm_state6 = "100000";
const sc_lv<11> aes_invRound::ap_ST_fsm_state7 = "1000000";
const sc_lv<11> aes_invRound::ap_ST_fsm_state8 = "10000000";
const sc_lv<11> aes_invRound::ap_ST_fsm_state9 = "100000000";
const sc_lv<11> aes_invRound::ap_ST_fsm_state10 = "1000000000";
const sc_lv<11> aes_invRound::ap_ST_fsm_state11 = "10000000000";
const sc_lv<32> aes_invRound::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> aes_invRound::ap_const_lv32_1 = "1";
const sc_lv<32> aes_invRound::ap_const_lv32_2 = "10";
const sc_lv<32> aes_invRound::ap_const_lv32_3 = "11";
const sc_lv<1> aes_invRound::ap_const_lv1_1 = "1";
const sc_lv<32> aes_invRound::ap_const_lv32_5 = "101";
const sc_lv<1> aes_invRound::ap_const_lv1_0 = "0";
const sc_lv<32> aes_invRound::ap_const_lv32_6 = "110";
const sc_lv<32> aes_invRound::ap_const_lv32_8 = "1000";
const sc_lv<3> aes_invRound::ap_const_lv3_0 = "000";
const sc_lv<3> aes_invRound::ap_const_lv3_7 = "111";
const sc_lv<32> aes_invRound::ap_const_lv32_4 = "100";
const sc_lv<32> aes_invRound::ap_const_lv32_7 = "111";
const sc_lv<5> aes_invRound::ap_const_lv5_0 = "00000";
const sc_lv<32> aes_invRound::ap_const_lv32_9 = "1001";
const sc_lv<32> aes_invRound::ap_const_lv32_A = "1010";
const sc_lv<64> aes_invRound::ap_const_lv64_F = "1111";
const sc_lv<64> aes_invRound::ap_const_lv64_C = "1100";
const sc_lv<3> aes_invRound::ap_const_lv3_4 = "100";
const sc_lv<3> aes_invRound::ap_const_lv3_1 = "1";
const sc_lv<5> aes_invRound::ap_const_lv5_10 = "10000";
const sc_lv<5> aes_invRound::ap_const_lv5_1 = "1";
const bool aes_invRound::ap_const_boolean_1 = true;

aes_invRound::aes_invRound(sc_module_name name) : sc_module(name), mVcdFile(0) {
    rsbox_U = new aes_invRound_rsbox("rsbox_U");
    rsbox_U->clk(ap_clk);
    rsbox_U->reset(ap_rst);
    rsbox_U->address0(rsbox_address0);
    rsbox_U->ce0(rsbox_ce0);
    rsbox_U->q0(rsbox_q0);
    grp_invMixColumns_fu_161 = new invMixColumns("grp_invMixColumns_fu_161");
    grp_invMixColumns_fu_161->ap_clk(ap_clk);
    grp_invMixColumns_fu_161->ap_rst(ap_rst);
    grp_invMixColumns_fu_161->ap_start(grp_invMixColumns_fu_161_ap_start);
    grp_invMixColumns_fu_161->ap_done(grp_invMixColumns_fu_161_ap_done);
    grp_invMixColumns_fu_161->ap_idle(grp_invMixColumns_fu_161_ap_idle);
    grp_invMixColumns_fu_161->ap_ready(grp_invMixColumns_fu_161_ap_ready);
    grp_invMixColumns_fu_161->state_address0(grp_invMixColumns_fu_161_state_address0);
    grp_invMixColumns_fu_161->state_ce0(grp_invMixColumns_fu_161_state_ce0);
    grp_invMixColumns_fu_161->state_we0(grp_invMixColumns_fu_161_state_we0);
    grp_invMixColumns_fu_161->state_d0(grp_invMixColumns_fu_161_state_d0);
    grp_invMixColumns_fu_161->state_q0(state_q0);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state10);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state11);
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
    sensitive << ( grp_invMixColumns_fu_161_ap_done );
    sensitive << ( ap_CS_fsm_state11 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( grp_invMixColumns_fu_161_ap_done );
    sensitive << ( ap_CS_fsm_state11 );

    SC_METHOD(thread_grp_invMixColumns_fu_161_ap_start);
    sensitive << ( grp_invMixColumns_fu_161_ap_start_reg );

    SC_METHOD(thread_i_6_fu_236_p2);
    sensitive << ( i_0_i4_reg_150 );

    SC_METHOD(thread_i_fu_214_p2);
    sensitive << ( i_0_i_reg_139 );

    SC_METHOD(thread_icmp_ln172_fu_230_p2);
    sensitive << ( ap_CS_fsm_state9 );
    sensitive << ( i_0_i4_reg_150 );

    SC_METHOD(thread_icmp_ln213_fu_208_p2);
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( i_0_i_reg_139 );

    SC_METHOD(thread_icmp_ln229_fu_167_p2);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( k_0_i_reg_117 );

    SC_METHOD(thread_icmp_ln232_fu_183_p2);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( j_0_i_reg_128 );

    SC_METHOD(thread_j_fu_189_p2);
    sensitive << ( j_0_i_reg_128 );

    SC_METHOD(thread_k_fu_173_p2);
    sensitive << ( k_0_i_reg_117 );

    SC_METHOD(thread_roundKey_address0);
    sensitive << ( ap_CS_fsm_state9 );
    sensitive << ( zext_ln173_fu_242_p1 );

    SC_METHOD(thread_roundKey_ce0);
    sensitive << ( ap_CS_fsm_state9 );

    SC_METHOD(thread_rsbox_address0);
    sensitive << ( ap_CS_fsm_state7 );
    sensitive << ( zext_ln69_fu_225_p1 );

    SC_METHOD(thread_rsbox_ce0);
    sensitive << ( ap_CS_fsm_state7 );

    SC_METHOD(thread_sext_ln232_fu_179_p1);
    sensitive << ( j_0_i_reg_128 );

    SC_METHOD(thread_sext_ln233_fu_195_p1);
    sensitive << ( j_fu_189_p2 );

    SC_METHOD(thread_state_address0);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( icmp_ln232_fu_183_p2 );
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( state_addr_3_reg_304 );
    sensitive << ( ap_CS_fsm_state9 );
    sensitive << ( state_addr_6_reg_322 );
    sensitive << ( icmp_ln172_fu_230_p2 );
    sensitive << ( grp_invMixColumns_fu_161_state_address0 );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( ap_CS_fsm_state8 );
    sensitive << ( ap_CS_fsm_state10 );
    sensitive << ( ap_CS_fsm_state11 );
    sensitive << ( zext_ln233_fu_199_p1 );
    sensitive << ( zext_ln233_1_fu_204_p1 );
    sensitive << ( zext_ln214_fu_220_p1 );
    sensitive << ( zext_ln173_fu_242_p1 );

    SC_METHOD(thread_state_ce0);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( icmp_ln232_fu_183_p2 );
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( ap_CS_fsm_state9 );
    sensitive << ( icmp_ln172_fu_230_p2 );
    sensitive << ( grp_invMixColumns_fu_161_state_ce0 );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( ap_CS_fsm_state8 );
    sensitive << ( ap_CS_fsm_state10 );
    sensitive << ( ap_CS_fsm_state11 );

    SC_METHOD(thread_state_d0);
    sensitive << ( state_q0 );
    sensitive << ( rsbox_q0 );
    sensitive << ( tmp_reg_273 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( icmp_ln232_fu_183_p2 );
    sensitive << ( grp_invMixColumns_fu_161_state_d0 );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( ap_CS_fsm_state8 );
    sensitive << ( ap_CS_fsm_state10 );
    sensitive << ( ap_CS_fsm_state11 );
    sensitive << ( xor_ln173_fu_248_p2 );

    SC_METHOD(thread_state_we0);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( icmp_ln232_fu_183_p2 );
    sensitive << ( grp_invMixColumns_fu_161_state_we0 );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( ap_CS_fsm_state8 );
    sensitive << ( ap_CS_fsm_state10 );
    sensitive << ( ap_CS_fsm_state11 );

    SC_METHOD(thread_xor_ln173_fu_248_p2);
    sensitive << ( state_q0 );
    sensitive << ( roundKey_q0 );

    SC_METHOD(thread_zext_ln173_fu_242_p1);
    sensitive << ( i_0_i4_reg_150 );

    SC_METHOD(thread_zext_ln214_fu_220_p1);
    sensitive << ( i_0_i_reg_139 );

    SC_METHOD(thread_zext_ln233_1_fu_204_p1);
    sensitive << ( sext_ln232_reg_278 );

    SC_METHOD(thread_zext_ln233_fu_199_p1);
    sensitive << ( sext_ln233_fu_195_p1 );

    SC_METHOD(thread_zext_ln69_fu_225_p1);
    sensitive << ( state_q0 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( icmp_ln232_fu_183_p2 );
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( icmp_ln213_fu_208_p2 );
    sensitive << ( ap_CS_fsm_state9 );
    sensitive << ( icmp_ln172_fu_230_p2 );
    sensitive << ( grp_invMixColumns_fu_161_ap_done );
    sensitive << ( icmp_ln229_fu_167_p2 );
    sensitive << ( ap_CS_fsm_state11 );

    ap_CS_fsm = "00000000001";
    grp_invMixColumns_fu_161_ap_start_reg = SC_LOGIC_0;
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "aes_invRound_sc_trace_" << apTFileNum ++;
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
    sc_trace(mVcdFile, state_address0, "(port)state_address0");
    sc_trace(mVcdFile, state_ce0, "(port)state_ce0");
    sc_trace(mVcdFile, state_we0, "(port)state_we0");
    sc_trace(mVcdFile, state_d0, "(port)state_d0");
    sc_trace(mVcdFile, state_q0, "(port)state_q0");
    sc_trace(mVcdFile, roundKey_address0, "(port)roundKey_address0");
    sc_trace(mVcdFile, roundKey_ce0, "(port)roundKey_ce0");
    sc_trace(mVcdFile, roundKey_q0, "(port)roundKey_q0");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, rsbox_address0, "rsbox_address0");
    sc_trace(mVcdFile, rsbox_ce0, "rsbox_ce0");
    sc_trace(mVcdFile, rsbox_q0, "rsbox_q0");
    sc_trace(mVcdFile, k_fu_173_p2, "k_fu_173_p2");
    sc_trace(mVcdFile, k_reg_268, "k_reg_268");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, tmp_reg_273, "tmp_reg_273");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, sext_ln232_fu_179_p1, "sext_ln232_fu_179_p1");
    sc_trace(mVcdFile, sext_ln232_reg_278, "sext_ln232_reg_278");
    sc_trace(mVcdFile, ap_CS_fsm_state4, "ap_CS_fsm_state4");
    sc_trace(mVcdFile, j_fu_189_p2, "j_fu_189_p2");
    sc_trace(mVcdFile, j_reg_286, "j_reg_286");
    sc_trace(mVcdFile, icmp_ln232_fu_183_p2, "icmp_ln232_fu_183_p2");
    sc_trace(mVcdFile, i_fu_214_p2, "i_fu_214_p2");
    sc_trace(mVcdFile, i_reg_299, "i_reg_299");
    sc_trace(mVcdFile, ap_CS_fsm_state6, "ap_CS_fsm_state6");
    sc_trace(mVcdFile, state_addr_3_reg_304, "state_addr_3_reg_304");
    sc_trace(mVcdFile, icmp_ln213_fu_208_p2, "icmp_ln213_fu_208_p2");
    sc_trace(mVcdFile, ap_CS_fsm_state7, "ap_CS_fsm_state7");
    sc_trace(mVcdFile, i_6_fu_236_p2, "i_6_fu_236_p2");
    sc_trace(mVcdFile, i_6_reg_317, "i_6_reg_317");
    sc_trace(mVcdFile, ap_CS_fsm_state9, "ap_CS_fsm_state9");
    sc_trace(mVcdFile, state_addr_6_reg_322, "state_addr_6_reg_322");
    sc_trace(mVcdFile, icmp_ln172_fu_230_p2, "icmp_ln172_fu_230_p2");
    sc_trace(mVcdFile, grp_invMixColumns_fu_161_ap_start, "grp_invMixColumns_fu_161_ap_start");
    sc_trace(mVcdFile, grp_invMixColumns_fu_161_ap_done, "grp_invMixColumns_fu_161_ap_done");
    sc_trace(mVcdFile, grp_invMixColumns_fu_161_ap_idle, "grp_invMixColumns_fu_161_ap_idle");
    sc_trace(mVcdFile, grp_invMixColumns_fu_161_ap_ready, "grp_invMixColumns_fu_161_ap_ready");
    sc_trace(mVcdFile, grp_invMixColumns_fu_161_state_address0, "grp_invMixColumns_fu_161_state_address0");
    sc_trace(mVcdFile, grp_invMixColumns_fu_161_state_ce0, "grp_invMixColumns_fu_161_state_ce0");
    sc_trace(mVcdFile, grp_invMixColumns_fu_161_state_we0, "grp_invMixColumns_fu_161_state_we0");
    sc_trace(mVcdFile, grp_invMixColumns_fu_161_state_d0, "grp_invMixColumns_fu_161_state_d0");
    sc_trace(mVcdFile, k_0_i_reg_117, "k_0_i_reg_117");
    sc_trace(mVcdFile, j_0_i_reg_128, "j_0_i_reg_128");
    sc_trace(mVcdFile, ap_CS_fsm_state5, "ap_CS_fsm_state5");
    sc_trace(mVcdFile, i_0_i_reg_139, "i_0_i_reg_139");
    sc_trace(mVcdFile, ap_CS_fsm_state8, "ap_CS_fsm_state8");
    sc_trace(mVcdFile, icmp_ln229_fu_167_p2, "icmp_ln229_fu_167_p2");
    sc_trace(mVcdFile, i_0_i4_reg_150, "i_0_i4_reg_150");
    sc_trace(mVcdFile, ap_CS_fsm_state10, "ap_CS_fsm_state10");
    sc_trace(mVcdFile, grp_invMixColumns_fu_161_ap_start_reg, "grp_invMixColumns_fu_161_ap_start_reg");
    sc_trace(mVcdFile, ap_CS_fsm_state11, "ap_CS_fsm_state11");
    sc_trace(mVcdFile, zext_ln233_fu_199_p1, "zext_ln233_fu_199_p1");
    sc_trace(mVcdFile, zext_ln233_1_fu_204_p1, "zext_ln233_1_fu_204_p1");
    sc_trace(mVcdFile, zext_ln214_fu_220_p1, "zext_ln214_fu_220_p1");
    sc_trace(mVcdFile, zext_ln69_fu_225_p1, "zext_ln69_fu_225_p1");
    sc_trace(mVcdFile, zext_ln173_fu_242_p1, "zext_ln173_fu_242_p1");
    sc_trace(mVcdFile, xor_ln173_fu_248_p2, "xor_ln173_fu_248_p2");
    sc_trace(mVcdFile, sext_ln233_fu_195_p1, "sext_ln233_fu_195_p1");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

aes_invRound::~aes_invRound() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    delete rsbox_U;
    delete grp_invMixColumns_fu_161;
}

void aes_invRound::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        grp_invMixColumns_fu_161_ap_start_reg = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state9.read()) && 
             esl_seteq<1,1,1>(ap_const_lv1_1, icmp_ln172_fu_230_p2.read()))) {
            grp_invMixColumns_fu_161_ap_start_reg = ap_const_logic_1;
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, grp_invMixColumns_fu_161_ap_ready.read())) {
            grp_invMixColumns_fu_161_ap_start_reg = ap_const_logic_0;
        }
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, icmp_ln213_fu_208_p2.read()))) {
        i_0_i4_reg_150 = ap_const_lv5_0;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state10.read())) {
        i_0_i4_reg_150 = i_6_reg_317.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, icmp_ln229_fu_167_p2.read()))) {
        i_0_i_reg_139 = ap_const_lv5_0;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read())) {
        i_0_i_reg_139 = i_reg_299.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        j_0_i_reg_128 = j_reg_286.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        j_0_i_reg_128 = ap_const_lv3_7;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        k_0_i_reg_117 = ap_const_lv3_0;
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(icmp_ln232_fu_183_p2.read(), ap_const_lv1_0))) {
        k_0_i_reg_117 = k_reg_268.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state9.read())) {
        i_6_reg_317 = i_6_fu_236_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        i_reg_299 = i_fu_214_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && esl_seteq<1,1,1>(icmp_ln232_fu_183_p2.read(), ap_const_lv1_1))) {
        j_reg_286 = j_fu_189_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        k_reg_268 = k_fu_173_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        sext_ln232_reg_278 = sext_ln232_fu_179_p1.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read()) && esl_seteq<1,1,1>(icmp_ln213_fu_208_p2.read(), ap_const_lv1_0))) {
        state_addr_3_reg_304 =  (sc_lv<4>) (zext_ln214_fu_220_p1.read());
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state9.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln172_fu_230_p2.read()))) {
        state_addr_6_reg_322 =  (sc_lv<4>) (zext_ln173_fu_242_p1.read());
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        tmp_reg_273 = state_q0.read();
    }
}

void aes_invRound::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void aes_invRound::thread_ap_CS_fsm_state10() {
    ap_CS_fsm_state10 = ap_CS_fsm.read()[9];
}

void aes_invRound::thread_ap_CS_fsm_state11() {
    ap_CS_fsm_state11 = ap_CS_fsm.read()[10];
}

void aes_invRound::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void aes_invRound::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void aes_invRound::thread_ap_CS_fsm_state4() {
    ap_CS_fsm_state4 = ap_CS_fsm.read()[3];
}

void aes_invRound::thread_ap_CS_fsm_state5() {
    ap_CS_fsm_state5 = ap_CS_fsm.read()[4];
}

void aes_invRound::thread_ap_CS_fsm_state6() {
    ap_CS_fsm_state6 = ap_CS_fsm.read()[5];
}

void aes_invRound::thread_ap_CS_fsm_state7() {
    ap_CS_fsm_state7 = ap_CS_fsm.read()[6];
}

void aes_invRound::thread_ap_CS_fsm_state8() {
    ap_CS_fsm_state8 = ap_CS_fsm.read()[7];
}

void aes_invRound::thread_ap_CS_fsm_state9() {
    ap_CS_fsm_state9 = ap_CS_fsm.read()[8];
}

void aes_invRound::thread_ap_done() {
    if (((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state11.read()) && 
          esl_seteq<1,1,1>(grp_invMixColumns_fu_161_ap_done.read(), ap_const_logic_1)))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void aes_invRound::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void aes_invRound::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state11.read()) && 
         esl_seteq<1,1,1>(grp_invMixColumns_fu_161_ap_done.read(), ap_const_logic_1))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void aes_invRound::thread_grp_invMixColumns_fu_161_ap_start() {
    grp_invMixColumns_fu_161_ap_start = grp_invMixColumns_fu_161_ap_start_reg.read();
}

void aes_invRound::thread_i_6_fu_236_p2() {
    i_6_fu_236_p2 = (!i_0_i4_reg_150.read().is_01() || !ap_const_lv5_1.is_01())? sc_lv<5>(): (sc_biguint<5>(i_0_i4_reg_150.read()) + sc_biguint<5>(ap_const_lv5_1));
}

void aes_invRound::thread_i_fu_214_p2() {
    i_fu_214_p2 = (!i_0_i_reg_139.read().is_01() || !ap_const_lv5_1.is_01())? sc_lv<5>(): (sc_biguint<5>(i_0_i_reg_139.read()) + sc_biguint<5>(ap_const_lv5_1));
}

void aes_invRound::thread_icmp_ln172_fu_230_p2() {
    icmp_ln172_fu_230_p2 = (!i_0_i4_reg_150.read().is_01() || !ap_const_lv5_10.is_01())? sc_lv<1>(): sc_lv<1>(i_0_i4_reg_150.read() == ap_const_lv5_10);
}

void aes_invRound::thread_icmp_ln213_fu_208_p2() {
    icmp_ln213_fu_208_p2 = (!i_0_i_reg_139.read().is_01() || !ap_const_lv5_10.is_01())? sc_lv<1>(): sc_lv<1>(i_0_i_reg_139.read() == ap_const_lv5_10);
}

void aes_invRound::thread_icmp_ln229_fu_167_p2() {
    icmp_ln229_fu_167_p2 = (!k_0_i_reg_117.read().is_01() || !ap_const_lv3_4.is_01())? sc_lv<1>(): sc_lv<1>(k_0_i_reg_117.read() == ap_const_lv3_4);
}

void aes_invRound::thread_icmp_ln232_fu_183_p2() {
    icmp_ln232_fu_183_p2 = (!j_0_i_reg_128.read().is_01() || !ap_const_lv3_4.is_01())? sc_lv<1>(): (sc_biguint<3>(j_0_i_reg_128.read()) > sc_biguint<3>(ap_const_lv3_4));
}

void aes_invRound::thread_j_fu_189_p2() {
    j_fu_189_p2 = (!j_0_i_reg_128.read().is_01() || !ap_const_lv3_7.is_01())? sc_lv<3>(): (sc_bigint<3>(j_0_i_reg_128.read()) + sc_bigint<3>(ap_const_lv3_7));
}

void aes_invRound::thread_k_fu_173_p2() {
    k_fu_173_p2 = (!k_0_i_reg_117.read().is_01() || !ap_const_lv3_1.is_01())? sc_lv<3>(): (sc_biguint<3>(k_0_i_reg_117.read()) + sc_biguint<3>(ap_const_lv3_1));
}

void aes_invRound::thread_roundKey_address0() {
    roundKey_address0 =  (sc_lv<4>) (zext_ln173_fu_242_p1.read());
}

void aes_invRound::thread_roundKey_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state9.read())) {
        roundKey_ce0 = ap_const_logic_1;
    } else {
        roundKey_ce0 = ap_const_logic_0;
    }
}

void aes_invRound::thread_rsbox_address0() {
    rsbox_address0 =  (sc_lv<8>) (zext_ln69_fu_225_p1.read());
}

void aes_invRound::thread_rsbox_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read())) {
        rsbox_ce0 = ap_const_logic_1;
    } else {
        rsbox_ce0 = ap_const_logic_0;
    }
}

void aes_invRound::thread_sext_ln232_fu_179_p1() {
    sext_ln232_fu_179_p1 = esl_sext<4,3>(j_0_i_reg_128.read());
}

void aes_invRound::thread_sext_ln233_fu_195_p1() {
    sext_ln233_fu_195_p1 = esl_sext<4,3>(j_fu_189_p2.read());
}

void aes_invRound::thread_state_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state10.read())) {
        state_address0 = state_addr_6_reg_322.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state9.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln172_fu_230_p2.read()))) {
        state_address0 =  (sc_lv<4>) (zext_ln173_fu_242_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read())) {
        state_address0 = state_addr_3_reg_304.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        state_address0 =  (sc_lv<4>) (zext_ln214_fu_220_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        state_address0 =  (sc_lv<4>) (zext_ln233_1_fu_204_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(icmp_ln232_fu_183_p2.read(), ap_const_lv1_0))) {
        state_address0 =  (sc_lv<4>) (ap_const_lv64_C);
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(icmp_ln232_fu_183_p2.read(), ap_const_lv1_1))) {
        state_address0 =  (sc_lv<4>) (zext_ln233_fu_199_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        state_address0 =  (sc_lv<4>) (ap_const_lv64_F);
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state11.read())) {
        state_address0 = grp_invMixColumns_fu_161_state_address0.read();
    } else {
        state_address0 = "XXXX";
    }
}

void aes_invRound::thread_state_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(icmp_ln232_fu_183_p2.read(), ap_const_lv1_1)) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state9.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln172_fu_230_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(icmp_ln232_fu_183_p2.read(), ap_const_lv1_0)) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state10.read()))) {
        state_ce0 = ap_const_logic_1;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state11.read())) {
        state_ce0 = grp_invMixColumns_fu_161_state_ce0.read();
    } else {
        state_ce0 = ap_const_logic_0;
    }
}

void aes_invRound::thread_state_d0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state10.read())) {
        state_d0 = xor_ln173_fu_248_p2.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read())) {
        state_d0 = rsbox_q0.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        state_d0 = state_q0.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(icmp_ln232_fu_183_p2.read(), ap_const_lv1_0))) {
        state_d0 = tmp_reg_273.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state11.read())) {
        state_d0 = grp_invMixColumns_fu_161_state_d0.read();
    } else {
        state_d0 =  (sc_lv<8>) ("XXXXXXXX");
    }
}

void aes_invRound::thread_state_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(icmp_ln232_fu_183_p2.read(), ap_const_lv1_0)) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state10.read()))) {
        state_we0 = ap_const_logic_1;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state11.read())) {
        state_we0 = grp_invMixColumns_fu_161_state_we0.read();
    } else {
        state_we0 = ap_const_logic_0;
    }
}

void aes_invRound::thread_xor_ln173_fu_248_p2() {
    xor_ln173_fu_248_p2 = (roundKey_q0.read() ^ state_q0.read());
}

void aes_invRound::thread_zext_ln173_fu_242_p1() {
    zext_ln173_fu_242_p1 = esl_zext<64,5>(i_0_i4_reg_150.read());
}

void aes_invRound::thread_zext_ln214_fu_220_p1() {
    zext_ln214_fu_220_p1 = esl_zext<64,5>(i_0_i_reg_139.read());
}

void aes_invRound::thread_zext_ln233_1_fu_204_p1() {
    zext_ln233_1_fu_204_p1 = esl_zext<64,4>(sext_ln232_reg_278.read());
}

void aes_invRound::thread_zext_ln233_fu_199_p1() {
    zext_ln233_fu_199_p1 = esl_zext<64,4>(sext_ln233_fu_195_p1.read());
}

void aes_invRound::thread_zext_ln69_fu_225_p1() {
    zext_ln69_fu_225_p1 = esl_zext<64,8>(state_q0.read());
}

void aes_invRound::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(ap_const_lv1_1, icmp_ln229_fu_167_p2.read()))) {
                ap_NS_fsm = ap_ST_fsm_state6;
            } else {
                ap_NS_fsm = ap_ST_fsm_state3;
            }
            break;
        case 4 : 
            ap_NS_fsm = ap_ST_fsm_state4;
            break;
        case 8 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && esl_seteq<1,1,1>(icmp_ln232_fu_183_p2.read(), ap_const_lv1_0))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state5;
            }
            break;
        case 16 : 
            ap_NS_fsm = ap_ST_fsm_state4;
            break;
        case 32 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read()) && esl_seteq<1,1,1>(ap_const_lv1_1, icmp_ln213_fu_208_p2.read()))) {
                ap_NS_fsm = ap_ST_fsm_state9;
            } else {
                ap_NS_fsm = ap_ST_fsm_state7;
            }
            break;
        case 64 : 
            ap_NS_fsm = ap_ST_fsm_state8;
            break;
        case 128 : 
            ap_NS_fsm = ap_ST_fsm_state6;
            break;
        case 256 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state9.read()) && esl_seteq<1,1,1>(ap_const_lv1_1, icmp_ln172_fu_230_p2.read()))) {
                ap_NS_fsm = ap_ST_fsm_state11;
            } else {
                ap_NS_fsm = ap_ST_fsm_state10;
            }
            break;
        case 512 : 
            ap_NS_fsm = ap_ST_fsm_state9;
            break;
        case 1024 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state11.read()) && esl_seteq<1,1,1>(grp_invMixColumns_fu_161_ap_done.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else {
                ap_NS_fsm = ap_ST_fsm_state11;
            }
            break;
        default : 
            ap_NS_fsm =  (sc_lv<11>) ("XXXXXXXXXXX");
            break;
    }
}

}

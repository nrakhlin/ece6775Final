// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "invMixColumns.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic invMixColumns::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic invMixColumns::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<7> invMixColumns::ap_ST_fsm_state1 = "1";
const sc_lv<7> invMixColumns::ap_ST_fsm_state2 = "10";
const sc_lv<7> invMixColumns::ap_ST_fsm_state3 = "100";
const sc_lv<7> invMixColumns::ap_ST_fsm_state4 = "1000";
const sc_lv<7> invMixColumns::ap_ST_fsm_state5 = "10000";
const sc_lv<7> invMixColumns::ap_ST_fsm_state6 = "100000";
const sc_lv<7> invMixColumns::ap_ST_fsm_state7 = "1000000";
const sc_lv<32> invMixColumns::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> invMixColumns::ap_const_lv32_1 = "1";
const sc_lv<32> invMixColumns::ap_const_lv32_2 = "10";
const sc_lv<1> invMixColumns::ap_const_lv1_0 = "0";
const sc_lv<32> invMixColumns::ap_const_lv32_3 = "11";
const sc_lv<32> invMixColumns::ap_const_lv32_5 = "101";
const sc_lv<32> invMixColumns::ap_const_lv32_6 = "110";
const sc_lv<1> invMixColumns::ap_const_lv1_1 = "1";
const sc_lv<3> invMixColumns::ap_const_lv3_0 = "000";
const sc_lv<32> invMixColumns::ap_const_lv32_4 = "100";
const sc_lv<2> invMixColumns::ap_const_lv2_3 = "11";
const sc_lv<2> invMixColumns::ap_const_lv2_2 = "10";
const sc_lv<2> invMixColumns::ap_const_lv2_1 = "1";
const sc_lv<2> invMixColumns::ap_const_lv2_0 = "00";
const sc_lv<3> invMixColumns::ap_const_lv3_4 = "100";
const sc_lv<3> invMixColumns::ap_const_lv3_1 = "1";
const bool invMixColumns::ap_const_boolean_1 = true;

invMixColumns::invMixColumns(sc_module_name name) : sc_module(name), mVcdFile(0) {
    grp_invMixColumn_fu_246 = new invMixColumn("grp_invMixColumn_fu_246");
    grp_invMixColumn_fu_246->ap_clk(ap_clk);
    grp_invMixColumn_fu_246->ap_rst(ap_rst);
    grp_invMixColumn_fu_246->ap_start(grp_invMixColumn_fu_246_ap_start);
    grp_invMixColumn_fu_246->ap_done(grp_invMixColumn_fu_246_ap_done);
    grp_invMixColumn_fu_246->ap_idle(grp_invMixColumn_fu_246_ap_idle);
    grp_invMixColumn_fu_246->ap_ready(grp_invMixColumn_fu_246_ap_ready);
    grp_invMixColumn_fu_246->column_0_read(column_0_1_reg_141);
    grp_invMixColumn_fu_246->column_1_read(column_1_1_reg_130);
    grp_invMixColumn_fu_246->column_2_read(column_2_1_reg_119);
    grp_invMixColumn_fu_246->column_3_read(column_3_1_reg_108);
    grp_invMixColumn_fu_246->ap_return_0(grp_invMixColumn_fu_246_ap_return_0);
    grp_invMixColumn_fu_246->ap_return_1(grp_invMixColumn_fu_246_ap_return_1);
    grp_invMixColumn_fu_246->ap_return_2(grp_invMixColumn_fu_246_ap_return_2);
    grp_invMixColumn_fu_246->ap_return_3(grp_invMixColumn_fu_246_ap_return_3);
    dut_mux_42_8_1_1_U110 = new dut_mux_42_8_1_1<1,1,8,8,8,8,2,8>("dut_mux_42_8_1_1_U110");
    dut_mux_42_8_1_1_U110->din0(column_0_reg_408);
    dut_mux_42_8_1_1_U110->din1(column_1_reg_414);
    dut_mux_42_8_1_1_U110->din2(column_2_reg_420);
    dut_mux_42_8_1_1_U110->din3(column_3_reg_426);
    dut_mux_42_8_1_1_U110->din4(trunc_ln437_fu_336_p1);
    dut_mux_42_8_1_1_U110->dout(tmp_fu_340_p6);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_add_ln428_fu_298_p2);
    sensitive << ( zext_ln423_reg_369 );
    sensitive << ( shl_ln_fu_290_p3 );

    SC_METHOD(thread_add_ln437_fu_359_p2);
    sensitive << ( zext_ln423_reg_369 );
    sensitive << ( shl_ln2_fu_351_p3 );

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

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln423_fu_262_p2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln423_fu_262_p2 );

    SC_METHOD(thread_grp_invMixColumn_fu_246_ap_start);
    sensitive << ( grp_invMixColumn_fu_246_ap_start_reg );

    SC_METHOD(thread_i_fu_268_p2);
    sensitive << ( i_0_reg_97 );

    SC_METHOD(thread_icmp_ln423_fu_262_p2);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( i_0_reg_97 );

    SC_METHOD(thread_icmp_ln426_fu_274_p2);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( j_0_reg_152 );

    SC_METHOD(thread_icmp_ln435_fu_324_p2);
    sensitive << ( ap_CS_fsm_state7 );
    sensitive << ( j_1_reg_235 );

    SC_METHOD(thread_j_3_fu_330_p2);
    sensitive << ( j_1_reg_235 );

    SC_METHOD(thread_j_fu_280_p2);
    sensitive << ( j_0_reg_152 );

    SC_METHOD(thread_shl_ln2_fu_351_p3);
    sensitive << ( trunc_ln437_fu_336_p1 );

    SC_METHOD(thread_shl_ln_fu_290_p3);
    sensitive << ( trunc_ln428_fu_286_p1 );

    SC_METHOD(thread_state_address0);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state7 );
    sensitive << ( zext_ln428_fu_303_p1 );
    sensitive << ( zext_ln437_fu_364_p1 );

    SC_METHOD(thread_state_ce0);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state7 );

    SC_METHOD(thread_state_d0);
    sensitive << ( ap_CS_fsm_state7 );
    sensitive << ( tmp_fu_340_p6 );

    SC_METHOD(thread_state_we0);
    sensitive << ( ap_CS_fsm_state7 );
    sensitive << ( icmp_ln435_fu_324_p2 );

    SC_METHOD(thread_trunc_ln428_fu_286_p1);
    sensitive << ( j_0_reg_152 );

    SC_METHOD(thread_trunc_ln437_fu_336_p1);
    sensitive << ( j_1_reg_235 );

    SC_METHOD(thread_zext_ln423_fu_258_p1);
    sensitive << ( i_0_reg_97 );

    SC_METHOD(thread_zext_ln428_fu_303_p1);
    sensitive << ( add_ln428_fu_298_p2 );

    SC_METHOD(thread_zext_ln437_fu_364_p1);
    sensitive << ( add_ln437_fu_359_p2 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( icmp_ln426_fu_274_p2 );
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( grp_invMixColumn_fu_246_ap_done );
    sensitive << ( ap_CS_fsm_state7 );
    sensitive << ( icmp_ln435_fu_324_p2 );
    sensitive << ( icmp_ln423_fu_262_p2 );

    ap_CS_fsm = "0000001";
    grp_invMixColumn_fu_246_ap_start_reg = SC_LOGIC_0;
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "invMixColumns_sc_trace_" << apTFileNum ++;
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
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, zext_ln423_fu_258_p1, "zext_ln423_fu_258_p1");
    sc_trace(mVcdFile, zext_ln423_reg_369, "zext_ln423_reg_369");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, i_fu_268_p2, "i_fu_268_p2");
    sc_trace(mVcdFile, i_reg_378, "i_reg_378");
    sc_trace(mVcdFile, j_fu_280_p2, "j_fu_280_p2");
    sc_trace(mVcdFile, j_reg_386, "j_reg_386");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, trunc_ln428_fu_286_p1, "trunc_ln428_fu_286_p1");
    sc_trace(mVcdFile, trunc_ln428_reg_391, "trunc_ln428_reg_391");
    sc_trace(mVcdFile, icmp_ln426_fu_274_p2, "icmp_ln426_fu_274_p2");
    sc_trace(mVcdFile, ap_CS_fsm_state4, "ap_CS_fsm_state4");
    sc_trace(mVcdFile, column_0_reg_408, "column_0_reg_408");
    sc_trace(mVcdFile, ap_CS_fsm_state6, "ap_CS_fsm_state6");
    sc_trace(mVcdFile, grp_invMixColumn_fu_246_ap_ready, "grp_invMixColumn_fu_246_ap_ready");
    sc_trace(mVcdFile, grp_invMixColumn_fu_246_ap_done, "grp_invMixColumn_fu_246_ap_done");
    sc_trace(mVcdFile, column_1_reg_414, "column_1_reg_414");
    sc_trace(mVcdFile, column_2_reg_420, "column_2_reg_420");
    sc_trace(mVcdFile, column_3_reg_426, "column_3_reg_426");
    sc_trace(mVcdFile, j_3_fu_330_p2, "j_3_fu_330_p2");
    sc_trace(mVcdFile, ap_CS_fsm_state7, "ap_CS_fsm_state7");
    sc_trace(mVcdFile, grp_invMixColumn_fu_246_ap_start, "grp_invMixColumn_fu_246_ap_start");
    sc_trace(mVcdFile, grp_invMixColumn_fu_246_ap_idle, "grp_invMixColumn_fu_246_ap_idle");
    sc_trace(mVcdFile, grp_invMixColumn_fu_246_ap_return_0, "grp_invMixColumn_fu_246_ap_return_0");
    sc_trace(mVcdFile, grp_invMixColumn_fu_246_ap_return_1, "grp_invMixColumn_fu_246_ap_return_1");
    sc_trace(mVcdFile, grp_invMixColumn_fu_246_ap_return_2, "grp_invMixColumn_fu_246_ap_return_2");
    sc_trace(mVcdFile, grp_invMixColumn_fu_246_ap_return_3, "grp_invMixColumn_fu_246_ap_return_3");
    sc_trace(mVcdFile, column_3_0_reg_49, "column_3_0_reg_49");
    sc_trace(mVcdFile, icmp_ln435_fu_324_p2, "icmp_ln435_fu_324_p2");
    sc_trace(mVcdFile, column_2_0_reg_61, "column_2_0_reg_61");
    sc_trace(mVcdFile, column_1_0_reg_73, "column_1_0_reg_73");
    sc_trace(mVcdFile, column_0_0_reg_85, "column_0_0_reg_85");
    sc_trace(mVcdFile, i_0_reg_97, "i_0_reg_97");
    sc_trace(mVcdFile, column_3_1_reg_108, "column_3_1_reg_108");
    sc_trace(mVcdFile, icmp_ln423_fu_262_p2, "icmp_ln423_fu_262_p2");
    sc_trace(mVcdFile, ap_CS_fsm_state5, "ap_CS_fsm_state5");
    sc_trace(mVcdFile, column_2_1_reg_119, "column_2_1_reg_119");
    sc_trace(mVcdFile, column_1_1_reg_130, "column_1_1_reg_130");
    sc_trace(mVcdFile, column_0_1_reg_141, "column_0_1_reg_141");
    sc_trace(mVcdFile, j_0_reg_152, "j_0_reg_152");
    sc_trace(mVcdFile, column_3_1_be_reg_163, "column_3_1_be_reg_163");
    sc_trace(mVcdFile, column_2_1_be_reg_181, "column_2_1_be_reg_181");
    sc_trace(mVcdFile, column_1_1_be_reg_199, "column_1_1_be_reg_199");
    sc_trace(mVcdFile, column_0_1_be_reg_217, "column_0_1_be_reg_217");
    sc_trace(mVcdFile, j_1_reg_235, "j_1_reg_235");
    sc_trace(mVcdFile, grp_invMixColumn_fu_246_ap_start_reg, "grp_invMixColumn_fu_246_ap_start_reg");
    sc_trace(mVcdFile, zext_ln428_fu_303_p1, "zext_ln428_fu_303_p1");
    sc_trace(mVcdFile, zext_ln437_fu_364_p1, "zext_ln437_fu_364_p1");
    sc_trace(mVcdFile, tmp_fu_340_p6, "tmp_fu_340_p6");
    sc_trace(mVcdFile, shl_ln_fu_290_p3, "shl_ln_fu_290_p3");
    sc_trace(mVcdFile, add_ln428_fu_298_p2, "add_ln428_fu_298_p2");
    sc_trace(mVcdFile, trunc_ln437_fu_336_p1, "trunc_ln437_fu_336_p1");
    sc_trace(mVcdFile, shl_ln2_fu_351_p3, "shl_ln2_fu_351_p3");
    sc_trace(mVcdFile, add_ln437_fu_359_p2, "add_ln437_fu_359_p2");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

invMixColumns::~invMixColumns() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    delete grp_invMixColumn_fu_246;
    delete dut_mux_42_8_1_1_U110;
}

void invMixColumns::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,2,2>(trunc_ln428_reg_391.read(), ap_const_lv2_0))) {
        column_0_1_be_reg_217 = state_q0.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,2,2>(trunc_ln428_reg_391.read(), ap_const_lv2_3)) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,2,2>(trunc_ln428_reg_391.read(), ap_const_lv2_2)) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,2,2>(trunc_ln428_reg_391.read(), ap_const_lv2_1)))) {
        column_0_1_be_reg_217 = column_0_1_reg_141.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        column_0_1_reg_141 = column_0_1_be_reg_217.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln423_fu_262_p2.read()))) {
        column_0_1_reg_141 = column_0_0_reg_85.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,2,2>(trunc_ln428_reg_391.read(), ap_const_lv2_1))) {
        column_1_1_be_reg_199 = state_q0.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,2,2>(trunc_ln428_reg_391.read(), ap_const_lv2_3)) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,2,2>(trunc_ln428_reg_391.read(), ap_const_lv2_2)) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,2,2>(trunc_ln428_reg_391.read(), ap_const_lv2_0)))) {
        column_1_1_be_reg_199 = column_1_1_reg_130.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        column_1_1_reg_130 = column_1_1_be_reg_199.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln423_fu_262_p2.read()))) {
        column_1_1_reg_130 = column_1_0_reg_73.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,2,2>(trunc_ln428_reg_391.read(), ap_const_lv2_2))) {
        column_2_1_be_reg_181 = state_q0.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,2,2>(trunc_ln428_reg_391.read(), ap_const_lv2_3)) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,2,2>(trunc_ln428_reg_391.read(), ap_const_lv2_1)) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                 esl_seteq<1,2,2>(trunc_ln428_reg_391.read(), ap_const_lv2_0)))) {
        column_2_1_be_reg_181 = column_2_1_reg_119.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        column_2_1_reg_119 = column_2_1_be_reg_181.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln423_fu_262_p2.read()))) {
        column_2_1_reg_119 = column_2_0_reg_61.read();
    }
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,2,2>(trunc_ln428_reg_391.read(), ap_const_lv2_2)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,2,2>(trunc_ln428_reg_391.read(), ap_const_lv2_1)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,2,2>(trunc_ln428_reg_391.read(), ap_const_lv2_0)))) {
        column_3_1_be_reg_163 = column_3_1_reg_108.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,2,2>(trunc_ln428_reg_391.read(), ap_const_lv2_3))) {
        column_3_1_be_reg_163 = state_q0.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        column_3_1_reg_108 = column_3_1_be_reg_163.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln423_fu_262_p2.read()))) {
        column_3_1_reg_108 = column_3_0_reg_49.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        grp_invMixColumn_fu_246_ap_start_reg = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
             esl_seteq<1,1,1>(icmp_ln426_fu_274_p2.read(), ap_const_lv1_1))) {
            grp_invMixColumn_fu_246_ap_start_reg = ap_const_logic_1;
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, grp_invMixColumn_fu_246_ap_ready.read())) {
            grp_invMixColumn_fu_246_ap_start_reg = ap_const_logic_0;
        }
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read()) && 
         esl_seteq<1,1,1>(icmp_ln435_fu_324_p2.read(), ap_const_lv1_1))) {
        i_0_reg_97 = i_reg_378.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        i_0_reg_97 = ap_const_lv3_0;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        j_0_reg_152 = j_reg_386.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln423_fu_262_p2.read()))) {
        j_0_reg_152 = ap_const_lv3_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln435_fu_324_p2.read()))) {
        j_1_reg_235 = j_3_fu_330_p2.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read()) && 
                esl_seteq<1,1,1>(grp_invMixColumn_fu_246_ap_done.read(), ap_const_logic_1))) {
        j_1_reg_235 = ap_const_lv3_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read()) && esl_seteq<1,1,1>(icmp_ln435_fu_324_p2.read(), ap_const_lv1_1))) {
        column_0_0_reg_85 = column_0_reg_408.read();
        column_1_0_reg_73 = column_1_reg_414.read();
        column_2_0_reg_61 = column_2_reg_420.read();
        column_3_0_reg_49 = column_3_reg_426.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read()) && esl_seteq<1,1,1>(grp_invMixColumn_fu_246_ap_done.read(), ap_const_logic_1))) {
        column_0_reg_408 = grp_invMixColumn_fu_246_ap_return_0.read();
        column_1_reg_414 = grp_invMixColumn_fu_246_ap_return_1.read();
        column_2_reg_420 = grp_invMixColumn_fu_246_ap_return_2.read();
        column_3_reg_426 = grp_invMixColumn_fu_246_ap_return_3.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        i_reg_378 = i_fu_268_p2.read();
        zext_ln423_reg_369 = zext_ln423_fu_258_p1.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        j_reg_386 = j_fu_280_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && esl_seteq<1,1,1>(icmp_ln426_fu_274_p2.read(), ap_const_lv1_0))) {
        trunc_ln428_reg_391 = trunc_ln428_fu_286_p1.read();
    }
}

void invMixColumns::thread_add_ln428_fu_298_p2() {
    add_ln428_fu_298_p2 = (!shl_ln_fu_290_p3.read().is_01() || !zext_ln423_reg_369.read().is_01())? sc_lv<4>(): (sc_biguint<4>(shl_ln_fu_290_p3.read()) + sc_biguint<4>(zext_ln423_reg_369.read()));
}

void invMixColumns::thread_add_ln437_fu_359_p2() {
    add_ln437_fu_359_p2 = (!shl_ln2_fu_351_p3.read().is_01() || !zext_ln423_reg_369.read().is_01())? sc_lv<4>(): (sc_biguint<4>(shl_ln2_fu_351_p3.read()) + sc_biguint<4>(zext_ln423_reg_369.read()));
}

void invMixColumns::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void invMixColumns::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void invMixColumns::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void invMixColumns::thread_ap_CS_fsm_state4() {
    ap_CS_fsm_state4 = ap_CS_fsm.read()[3];
}

void invMixColumns::thread_ap_CS_fsm_state5() {
    ap_CS_fsm_state5 = ap_CS_fsm.read()[4];
}

void invMixColumns::thread_ap_CS_fsm_state6() {
    ap_CS_fsm_state6 = ap_CS_fsm.read()[5];
}

void invMixColumns::thread_ap_CS_fsm_state7() {
    ap_CS_fsm_state7 = ap_CS_fsm.read()[6];
}

void invMixColumns::thread_ap_done() {
    if (((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, icmp_ln423_fu_262_p2.read())))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void invMixColumns::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void invMixColumns::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, icmp_ln423_fu_262_p2.read()))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void invMixColumns::thread_grp_invMixColumn_fu_246_ap_start() {
    grp_invMixColumn_fu_246_ap_start = grp_invMixColumn_fu_246_ap_start_reg.read();
}

void invMixColumns::thread_i_fu_268_p2() {
    i_fu_268_p2 = (!i_0_reg_97.read().is_01() || !ap_const_lv3_1.is_01())? sc_lv<3>(): (sc_biguint<3>(i_0_reg_97.read()) + sc_biguint<3>(ap_const_lv3_1));
}

void invMixColumns::thread_icmp_ln423_fu_262_p2() {
    icmp_ln423_fu_262_p2 = (!i_0_reg_97.read().is_01() || !ap_const_lv3_4.is_01())? sc_lv<1>(): sc_lv<1>(i_0_reg_97.read() == ap_const_lv3_4);
}

void invMixColumns::thread_icmp_ln426_fu_274_p2() {
    icmp_ln426_fu_274_p2 = (!j_0_reg_152.read().is_01() || !ap_const_lv3_4.is_01())? sc_lv<1>(): sc_lv<1>(j_0_reg_152.read() == ap_const_lv3_4);
}

void invMixColumns::thread_icmp_ln435_fu_324_p2() {
    icmp_ln435_fu_324_p2 = (!j_1_reg_235.read().is_01() || !ap_const_lv3_4.is_01())? sc_lv<1>(): sc_lv<1>(j_1_reg_235.read() == ap_const_lv3_4);
}

void invMixColumns::thread_j_3_fu_330_p2() {
    j_3_fu_330_p2 = (!j_1_reg_235.read().is_01() || !ap_const_lv3_1.is_01())? sc_lv<3>(): (sc_biguint<3>(j_1_reg_235.read()) + sc_biguint<3>(ap_const_lv3_1));
}

void invMixColumns::thread_j_fu_280_p2() {
    j_fu_280_p2 = (!j_0_reg_152.read().is_01() || !ap_const_lv3_1.is_01())? sc_lv<3>(): (sc_biguint<3>(j_0_reg_152.read()) + sc_biguint<3>(ap_const_lv3_1));
}

void invMixColumns::thread_shl_ln2_fu_351_p3() {
    shl_ln2_fu_351_p3 = esl_concat<2,2>(trunc_ln437_fu_336_p1.read(), ap_const_lv2_0);
}

void invMixColumns::thread_shl_ln_fu_290_p3() {
    shl_ln_fu_290_p3 = esl_concat<2,2>(trunc_ln428_fu_286_p1.read(), ap_const_lv2_0);
}

void invMixColumns::thread_state_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read())) {
        state_address0 =  (sc_lv<4>) (zext_ln437_fu_364_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        state_address0 =  (sc_lv<4>) (zext_ln428_fu_303_p1.read());
    } else {
        state_address0 = "XXXX";
    }
}

void invMixColumns::thread_state_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read()))) {
        state_ce0 = ap_const_logic_1;
    } else {
        state_ce0 = ap_const_logic_0;
    }
}

void invMixColumns::thread_state_d0() {
    state_d0 = tmp_fu_340_p6.read();
}

void invMixColumns::thread_state_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln435_fu_324_p2.read()))) {
        state_we0 = ap_const_logic_1;
    } else {
        state_we0 = ap_const_logic_0;
    }
}

void invMixColumns::thread_trunc_ln428_fu_286_p1() {
    trunc_ln428_fu_286_p1 = j_0_reg_152.read().range(2-1, 0);
}

void invMixColumns::thread_trunc_ln437_fu_336_p1() {
    trunc_ln437_fu_336_p1 = j_1_reg_235.read().range(2-1, 0);
}

void invMixColumns::thread_zext_ln423_fu_258_p1() {
    zext_ln423_fu_258_p1 = esl_zext<4,3>(i_0_reg_97.read());
}

void invMixColumns::thread_zext_ln428_fu_303_p1() {
    zext_ln428_fu_303_p1 = esl_zext<64,4>(add_ln428_fu_298_p2.read());
}

void invMixColumns::thread_zext_ln437_fu_364_p1() {
    zext_ln437_fu_364_p1 = esl_zext<64,4>(add_ln437_fu_359_p2.read());
}

void invMixColumns::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(ap_const_lv1_1, icmp_ln423_fu_262_p2.read()))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else {
                ap_NS_fsm = ap_ST_fsm_state3;
            }
            break;
        case 4 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && esl_seteq<1,1,1>(icmp_ln426_fu_274_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state6;
            } else {
                ap_NS_fsm = ap_ST_fsm_state4;
            }
            break;
        case 8 : 
            ap_NS_fsm = ap_ST_fsm_state5;
            break;
        case 16 : 
            ap_NS_fsm = ap_ST_fsm_state3;
            break;
        case 32 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read()) && esl_seteq<1,1,1>(grp_invMixColumn_fu_246_ap_done.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state7;
            } else {
                ap_NS_fsm = ap_ST_fsm_state6;
            }
            break;
        case 64 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read()) && esl_seteq<1,1,1>(icmp_ln435_fu_324_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state7;
            }
            break;
        default : 
            ap_NS_fsm =  (sc_lv<7>) ("XXXXXXX");
            break;
    }
}

}


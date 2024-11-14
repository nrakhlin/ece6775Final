// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _invMixColumns_HH_
#define _invMixColumns_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "invMixColumn.h"
#include "decrypt_dut_mux_4cud.h"

namespace ap_rtl {

struct invMixColumns : public sc_module {
    // Port declarations 11
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


    // Module declarations
    invMixColumns(sc_module_name name);
    SC_HAS_PROCESS(invMixColumns);

    ~invMixColumns();

    sc_trace_file* mVcdFile;

    invMixColumn* grp_invMixColumn_fu_246;
    decrypt_dut_mux_4cud<1,1,8,8,8,8,2,8>* decrypt_dut_mux_4cud_U32;
    sc_signal< sc_lv<7> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<4> > zext_ln261_fu_258_p1;
    sc_signal< sc_lv<4> > zext_ln261_reg_369;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<3> > i_fu_268_p2;
    sc_signal< sc_lv<3> > i_reg_378;
    sc_signal< sc_lv<3> > j_fu_280_p2;
    sc_signal< sc_lv<3> > j_reg_386;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<2> > trunc_ln266_fu_286_p1;
    sc_signal< sc_lv<2> > trunc_ln266_reg_391;
    sc_signal< sc_lv<1> > icmp_ln264_fu_274_p2;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<8> > column_0_reg_408;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_logic > grp_invMixColumn_fu_246_ap_ready;
    sc_signal< sc_logic > grp_invMixColumn_fu_246_ap_done;
    sc_signal< sc_lv<8> > column_1_reg_414;
    sc_signal< sc_lv<8> > column_2_reg_420;
    sc_signal< sc_lv<8> > column_3_reg_426;
    sc_signal< sc_lv<3> > j_2_fu_330_p2;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_logic > grp_invMixColumn_fu_246_ap_start;
    sc_signal< sc_logic > grp_invMixColumn_fu_246_ap_idle;
    sc_signal< sc_lv<8> > grp_invMixColumn_fu_246_ap_return_0;
    sc_signal< sc_lv<8> > grp_invMixColumn_fu_246_ap_return_1;
    sc_signal< sc_lv<8> > grp_invMixColumn_fu_246_ap_return_2;
    sc_signal< sc_lv<8> > grp_invMixColumn_fu_246_ap_return_3;
    sc_signal< sc_lv<8> > column_3_0_reg_49;
    sc_signal< sc_lv<1> > icmp_ln273_fu_324_p2;
    sc_signal< sc_lv<8> > column_2_0_reg_61;
    sc_signal< sc_lv<8> > column_1_0_reg_73;
    sc_signal< sc_lv<8> > column_0_0_reg_85;
    sc_signal< sc_lv<3> > i_0_reg_97;
    sc_signal< sc_lv<8> > column_3_1_reg_108;
    sc_signal< sc_lv<1> > icmp_ln261_fu_262_p2;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<8> > column_2_1_reg_119;
    sc_signal< sc_lv<8> > column_1_1_reg_130;
    sc_signal< sc_lv<8> > column_0_1_reg_141;
    sc_signal< sc_lv<3> > j_0_reg_152;
    sc_signal< sc_lv<8> > column_3_1_be_reg_163;
    sc_signal< sc_lv<8> > column_2_1_be_reg_181;
    sc_signal< sc_lv<8> > column_1_1_be_reg_199;
    sc_signal< sc_lv<8> > column_0_1_be_reg_217;
    sc_signal< sc_lv<3> > j_1_reg_235;
    sc_signal< sc_logic > grp_invMixColumn_fu_246_ap_start_reg;
    sc_signal< sc_lv<64> > zext_ln266_fu_303_p1;
    sc_signal< sc_lv<64> > zext_ln275_fu_364_p1;
    sc_signal< sc_lv<8> > tmp_fu_340_p6;
    sc_signal< sc_lv<4> > shl_ln_fu_290_p3;
    sc_signal< sc_lv<4> > add_ln266_fu_298_p2;
    sc_signal< sc_lv<2> > trunc_ln275_fu_336_p1;
    sc_signal< sc_lv<4> > shl_ln1_fu_351_p3;
    sc_signal< sc_lv<4> > add_ln275_fu_359_p2;
    sc_signal< sc_lv<7> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<7> ap_ST_fsm_state1;
    static const sc_lv<7> ap_ST_fsm_state2;
    static const sc_lv<7> ap_ST_fsm_state3;
    static const sc_lv<7> ap_ST_fsm_state4;
    static const sc_lv<7> ap_ST_fsm_state5;
    static const sc_lv<7> ap_ST_fsm_state6;
    static const sc_lv<7> ap_ST_fsm_state7;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<2> ap_const_lv2_3;
    static const sc_lv<2> ap_const_lv2_2;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<3> ap_const_lv3_4;
    static const sc_lv<3> ap_const_lv3_1;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_add_ln266_fu_298_p2();
    void thread_add_ln275_fu_359_p2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_grp_invMixColumn_fu_246_ap_start();
    void thread_i_fu_268_p2();
    void thread_icmp_ln261_fu_262_p2();
    void thread_icmp_ln264_fu_274_p2();
    void thread_icmp_ln273_fu_324_p2();
    void thread_j_2_fu_330_p2();
    void thread_j_fu_280_p2();
    void thread_shl_ln1_fu_351_p3();
    void thread_shl_ln_fu_290_p3();
    void thread_state_address0();
    void thread_state_ce0();
    void thread_state_d0();
    void thread_state_we0();
    void thread_trunc_ln266_fu_286_p1();
    void thread_trunc_ln275_fu_336_p1();
    void thread_zext_ln261_fu_258_p1();
    void thread_zext_ln266_fu_303_p1();
    void thread_zext_ln275_fu_364_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
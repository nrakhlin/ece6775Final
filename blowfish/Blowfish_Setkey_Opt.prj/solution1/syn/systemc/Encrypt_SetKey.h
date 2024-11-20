// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _Encrypt_SetKey_HH_
#define _Encrypt_SetKey_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "feistel.h"

namespace ap_rtl {

struct Encrypt_SetKey : public sc_module {
    // Port declarations 40
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<32> > left_read;
    sc_in< sc_lv<32> > right_read;
    sc_in< sc_lv<32> > P_0_read;
    sc_in< sc_lv<32> > P_1_read;
    sc_in< sc_lv<32> > P_2_read;
    sc_in< sc_lv<32> > P_3_read;
    sc_in< sc_lv<32> > P_4_read;
    sc_in< sc_lv<32> > P_5_read;
    sc_in< sc_lv<32> > P_6_read;
    sc_in< sc_lv<32> > P_7_read;
    sc_in< sc_lv<32> > P_8_read;
    sc_in< sc_lv<32> > P_9_read;
    sc_in< sc_lv<32> > P_10_read;
    sc_in< sc_lv<32> > P_11_read;
    sc_in< sc_lv<32> > P_12_read;
    sc_in< sc_lv<32> > P_13_read;
    sc_in< sc_lv<32> > P_14_read;
    sc_in< sc_lv<32> > P_15_read;
    sc_in< sc_lv<32> > P_16_read;
    sc_in< sc_lv<32> > P_17_read;
    sc_out< sc_lv<8> > S_0_address0;
    sc_out< sc_logic > S_0_ce0;
    sc_in< sc_lv<32> > S_0_q0;
    sc_out< sc_lv<8> > S_1_address0;
    sc_out< sc_logic > S_1_ce0;
    sc_in< sc_lv<32> > S_1_q0;
    sc_out< sc_lv<8> > S_2_address0;
    sc_out< sc_logic > S_2_ce0;
    sc_in< sc_lv<32> > S_2_q0;
    sc_out< sc_lv<8> > S_3_address0;
    sc_out< sc_logic > S_3_ce0;
    sc_in< sc_lv<32> > S_3_q0;
    sc_out< sc_lv<32> > ap_return_0;
    sc_out< sc_lv<32> > ap_return_1;


    // Module declarations
    Encrypt_SetKey(sc_module_name name);
    SC_HAS_PROCESS(Encrypt_SetKey);

    ~Encrypt_SetKey();

    sc_trace_file* mVcdFile;

    feistel* grp_feistel_fu_297;
    sc_signal< sc_lv<4> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<32> > p_tmp_reg_228;
    sc_signal< sc_lv<32> > p_b_read_assign_reg_238;
    sc_signal< sc_lv<5> > i_0_reg_248;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter1;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<1> > icmp_ln54_fu_310_p2;
    sc_signal< sc_lv<1> > icmp_ln54_reg_456;
    sc_signal< sc_lv<1> > icmp_ln54_reg_456_pp0_iter1_reg;
    sc_signal< sc_lv<5> > i_fu_316_p2;
    sc_signal< sc_lv<5> > i_reg_460;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<32> > localLeft_fu_322_p2;
    sc_signal< sc_lv<32> > localLeft_reg_465;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage1;
    sc_signal< bool > ap_block_state3_pp0_stage1_iter0;
    sc_signal< bool > ap_block_state5_pp0_stage1_iter1;
    sc_signal< bool > ap_block_pp0_stage1_11001;
    sc_signal< sc_lv<32> > grp_feistel_fu_297_ap_return;
    sc_signal< sc_lv<32> > tmp_1_reg_471;
    sc_signal< sc_lv<32> > localRight_fu_329_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state2;
    sc_signal< bool > ap_block_pp0_stage1_subdone;
    sc_signal< sc_logic > grp_feistel_fu_297_ap_start;
    sc_signal< sc_logic > grp_feistel_fu_297_ap_done;
    sc_signal< sc_logic > grp_feistel_fu_297_ap_idle;
    sc_signal< sc_logic > grp_feistel_fu_297_ap_ready;
    sc_signal< sc_lv<32> > grp_feistel_fu_297_x;
    sc_signal< sc_lv<8> > grp_feistel_fu_297_S_0_address0;
    sc_signal< sc_logic > grp_feistel_fu_297_S_0_ce0;
    sc_signal< sc_lv<8> > grp_feistel_fu_297_S_1_address0;
    sc_signal< sc_logic > grp_feistel_fu_297_S_1_ce0;
    sc_signal< sc_lv<8> > grp_feistel_fu_297_S_2_address0;
    sc_signal< sc_logic > grp_feistel_fu_297_S_2_ce0;
    sc_signal< sc_lv<8> > grp_feistel_fu_297_S_3_address0;
    sc_signal< sc_logic > grp_feistel_fu_297_S_3_ce0;
    sc_signal< sc_lv<32> > ap_phi_mux_p_tmp_phi_fu_231_p4;
    sc_signal< bool > ap_block_pp0_stage1;
    sc_signal< sc_lv<5> > ap_phi_mux_i_0_phi_fu_252_p4;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<32> > ap_phi_reg_pp0_iter0_phi_ln55_reg_260;
    sc_signal< sc_logic > grp_feistel_fu_297_ap_start_reg;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<32> > xor_ln63_fu_339_p2;
    sc_signal< sc_lv<32> > xor_ln62_fu_334_p2;
    sc_signal< sc_lv<4> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    sc_signal< bool > ap_condition_406;
    sc_signal< bool > ap_condition_317;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<4> ap_ST_fsm_state1;
    static const sc_lv<4> ap_ST_fsm_pp0_stage0;
    static const sc_lv<4> ap_ST_fsm_pp0_stage1;
    static const sc_lv<4> ap_ST_fsm_state6;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const bool ap_const_boolean_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<5> ap_const_lv5_1;
    static const sc_lv<5> ap_const_lv5_2;
    static const sc_lv<5> ap_const_lv5_3;
    static const sc_lv<5> ap_const_lv5_4;
    static const sc_lv<5> ap_const_lv5_5;
    static const sc_lv<5> ap_const_lv5_6;
    static const sc_lv<5> ap_const_lv5_7;
    static const sc_lv<5> ap_const_lv5_8;
    static const sc_lv<5> ap_const_lv5_9;
    static const sc_lv<5> ap_const_lv5_A;
    static const sc_lv<5> ap_const_lv5_B;
    static const sc_lv<5> ap_const_lv5_C;
    static const sc_lv<5> ap_const_lv5_D;
    static const sc_lv<5> ap_const_lv5_E;
    static const sc_lv<5> ap_const_lv5_10;
    static const sc_lv<32> ap_const_lv32_3;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_S_0_address0();
    void thread_S_0_ce0();
    void thread_S_1_address0();
    void thread_S_1_ce0();
    void thread_S_2_address0();
    void thread_S_2_ce0();
    void thread_S_3_address0();
    void thread_S_3_ce0();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_pp0_stage1();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state6();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_pp0_stage1();
    void thread_ap_block_pp0_stage1_11001();
    void thread_ap_block_pp0_stage1_subdone();
    void thread_ap_block_state2_pp0_stage0_iter0();
    void thread_ap_block_state3_pp0_stage1_iter0();
    void thread_ap_block_state4_pp0_stage0_iter1();
    void thread_ap_block_state5_pp0_stage1_iter1();
    void thread_ap_condition_317();
    void thread_ap_condition_406();
    void thread_ap_condition_pp0_exit_iter0_state2();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_phi_mux_i_0_phi_fu_252_p4();
    void thread_ap_phi_mux_p_tmp_phi_fu_231_p4();
    void thread_ap_ready();
    void thread_ap_return_0();
    void thread_ap_return_1();
    void thread_grp_feistel_fu_297_ap_start();
    void thread_grp_feistel_fu_297_x();
    void thread_i_fu_316_p2();
    void thread_icmp_ln54_fu_310_p2();
    void thread_localLeft_fu_322_p2();
    void thread_localRight_fu_329_p2();
    void thread_xor_ln62_fu_334_p2();
    void thread_xor_ln63_fu_339_p2();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif

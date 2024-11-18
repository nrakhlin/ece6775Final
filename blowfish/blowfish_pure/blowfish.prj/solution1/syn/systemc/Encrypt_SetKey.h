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


namespace ap_rtl {

struct Encrypt_SetKey : public sc_module {
    // Port declarations 22
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<32> > left_read;
    sc_in< sc_lv<32> > right_read;
    sc_out< sc_lv<5> > P_address0;
    sc_out< sc_logic > P_ce0;
    sc_in< sc_lv<32> > P_q0;
    sc_out< sc_lv<5> > P_address1;
    sc_out< sc_logic > P_ce1;
    sc_in< sc_lv<32> > P_q1;
    sc_out< sc_lv<10> > S_address0;
    sc_out< sc_logic > S_ce0;
    sc_in< sc_lv<32> > S_q0;
    sc_out< sc_lv<10> > S_address1;
    sc_out< sc_logic > S_ce1;
    sc_in< sc_lv<32> > S_q1;
    sc_out< sc_lv<32> > ap_return_0;
    sc_out< sc_lv<32> > ap_return_1;


    // Module declarations
    Encrypt_SetKey(sc_module_name name);
    SC_HAS_PROCESS(Encrypt_SetKey);

    ~Encrypt_SetKey();

    sc_trace_file* mVcdFile;

    sc_signal< sc_lv<6> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<5> > i_fu_183_p2;
    sc_signal< sc_lv<5> > i_reg_350;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<1> > icmp_ln12_fu_177_p2;
    sc_signal< sc_lv<32> > grp_fu_171_p2;
    sc_signal< sc_lv<32> > p_tmp_1_reg_370;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<8> > c_reg_375;
    sc_signal< sc_lv<8> > d_fu_260_p2;
    sc_signal< sc_lv<8> > d_reg_380;
    sc_signal< sc_lv<32> > add_ln62_fu_280_p2;
    sc_signal< sc_lv<32> > add_ln62_reg_395;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<32> > xor_ln14_fu_313_p2;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<32> > p_tmp_reg_140;
    sc_signal< sc_lv<32> > p_b_read_assign_2_reg_150;
    sc_signal< sc_lv<5> > i_0_reg_160;
    sc_signal< sc_lv<64> > zext_ln13_fu_189_p1;
    sc_signal< sc_lv<64> > zext_ln62_fu_266_p1;
    sc_signal< sc_lv<64> > tmp_fu_271_p3;
    sc_signal< sc_lv<64> > tmp_4_fu_286_p3;
    sc_signal< sc_lv<64> > tmp_5_fu_294_p3;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<16> > trunc_ln13_5_fu_214_p1;
    sc_signal< sc_lv<16> > trunc_ln13_4_fu_210_p1;
    sc_signal< sc_lv<24> > trunc_ln13_3_fu_206_p1;
    sc_signal< sc_lv<24> > trunc_ln13_2_fu_202_p1;
    sc_signal< sc_lv<24> > xor_ln57_1_fu_224_p2;
    sc_signal< sc_lv<16> > xor_ln57_fu_218_p2;
    sc_signal< sc_lv<8> > trunc_ln13_1_fu_198_p1;
    sc_signal< sc_lv<8> > trunc_ln13_fu_194_p1;
    sc_signal< sc_lv<8> > a_fu_230_p4;
    sc_signal< sc_lv<8> > b_fu_240_p4;
    sc_signal< sc_lv<32> > xor_ln62_fu_302_p2;
    sc_signal< sc_lv<32> > add_ln62_1_fu_307_p2;
    sc_signal< sc_lv<32> > xor_ln19_fu_319_p2;
    sc_signal< sc_lv<32> > ap_return_0_preg;
    sc_signal< sc_lv<32> > ap_return_1_preg;
    sc_signal< sc_lv<6> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<6> ap_ST_fsm_state1;
    static const sc_lv<6> ap_ST_fsm_state2;
    static const sc_lv<6> ap_ST_fsm_state3;
    static const sc_lv<6> ap_ST_fsm_state4;
    static const sc_lv<6> ap_ST_fsm_state5;
    static const sc_lv<6> ap_ST_fsm_state6;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<64> ap_const_lv64_10;
    static const sc_lv<64> ap_const_lv64_11;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<5> ap_const_lv5_10;
    static const sc_lv<5> ap_const_lv5_1;
    static const sc_lv<32> ap_const_lv32_18;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<56> ap_const_lv56_1;
    static const sc_lv<56> ap_const_lv56_2;
    static const sc_lv<56> ap_const_lv56_3;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_P_address0();
    void thread_P_address1();
    void thread_P_ce0();
    void thread_P_ce1();
    void thread_S_address0();
    void thread_S_address1();
    void thread_S_ce0();
    void thread_S_ce1();
    void thread_a_fu_230_p4();
    void thread_add_ln62_1_fu_307_p2();
    void thread_add_ln62_fu_280_p2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_return_0();
    void thread_ap_return_1();
    void thread_b_fu_240_p4();
    void thread_d_fu_260_p2();
    void thread_grp_fu_171_p2();
    void thread_i_fu_183_p2();
    void thread_icmp_ln12_fu_177_p2();
    void thread_tmp_4_fu_286_p3();
    void thread_tmp_5_fu_294_p3();
    void thread_tmp_fu_271_p3();
    void thread_trunc_ln13_1_fu_198_p1();
    void thread_trunc_ln13_2_fu_202_p1();
    void thread_trunc_ln13_3_fu_206_p1();
    void thread_trunc_ln13_4_fu_210_p1();
    void thread_trunc_ln13_5_fu_214_p1();
    void thread_trunc_ln13_fu_194_p1();
    void thread_xor_ln14_fu_313_p2();
    void thread_xor_ln19_fu_319_p2();
    void thread_xor_ln57_1_fu_224_p2();
    void thread_xor_ln57_fu_218_p2();
    void thread_xor_ln62_fu_302_p2();
    void thread_zext_ln13_fu_189_p1();
    void thread_zext_ln62_fu_266_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif

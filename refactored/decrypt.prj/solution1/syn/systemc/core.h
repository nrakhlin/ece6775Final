// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _core_HH_
#define _core_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "decrypt_dut_mux_4bkb.h"
#include "decrypt_dut_mux_4cud.h"
#include "core_sbox.h"
#include "core_Rcon.h"

namespace ap_rtl {

struct core : public sc_module {
    // Port declarations 15
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<8> > word_0_read;
    sc_in< sc_lv<8> > word_1_read;
    sc_in< sc_lv<8> > word_2_read;
    sc_in< sc_lv<8> > word_3_read;
    sc_in< sc_lv<32> > iteration;
    sc_out< sc_lv<8> > ap_return_0;
    sc_out< sc_lv<8> > ap_return_1;
    sc_out< sc_lv<8> > ap_return_2;
    sc_out< sc_lv<8> > ap_return_3;
    sc_signal< sc_lv<1> > ap_var_for_const0;


    // Module declarations
    core(sc_module_name name);
    SC_HAS_PROCESS(core);

    ~core();

    sc_trace_file* mVcdFile;

    core_sbox* sbox_U;
    core_Rcon* Rcon_U;
    decrypt_dut_mux_4bkb<1,1,1,1,1,1,2,1>* decrypt_dut_mux_4bkb_U1;
    decrypt_dut_mux_4cud<1,1,8,8,8,8,2,8>* decrypt_dut_mux_4cud_U2;
    decrypt_dut_mux_4cud<1,1,8,8,8,8,2,8>* decrypt_dut_mux_4cud_U3;
    decrypt_dut_mux_4cud<1,1,8,8,8,8,2,8>* decrypt_dut_mux_4cud_U4;
    decrypt_dut_mux_4cud<1,1,8,8,8,8,2,8>* decrypt_dut_mux_4cud_U5;
    sc_signal< sc_lv<6> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<8> > sbox_address0;
    sc_signal< sc_logic > sbox_ce0;
    sc_signal< sc_lv<8> > sbox_q0;
    sc_signal< sc_lv<8> > Rcon_address0;
    sc_signal< sc_logic > Rcon_ce0;
    sc_signal< sc_lv<8> > Rcon_q0;
    sc_signal< sc_lv<2> > i_5_fu_227_p2;
    sc_signal< sc_lv<2> > i_5_reg_501;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<1> > write_flag_0_be_i_fu_233_p6;
    sc_signal< sc_lv<1> > write_flag_0_be_i_reg_506;
    sc_signal< sc_lv<1> > icmp_ln86_fu_221_p2;
    sc_signal< sc_lv<8> > word12_0_be_i_fu_292_p6;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<8> > word2_0_be_i_fu_306_p6;
    sc_signal< sc_lv<8> > word_03_be_i_fu_320_p6;
    sc_signal< sc_lv<3> > i_fu_340_p2;
    sc_signal< sc_lv<3> > i_reg_585;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<2> > trunc_ln105_fu_358_p1;
    sc_signal< sc_lv<2> > trunc_ln105_reg_590;
    sc_signal< sc_lv<1> > icmp_ln103_fu_334_p2;
    sc_signal< sc_lv<1> > write_flag_0_i_reg_142;
    sc_signal< sc_lv<8> > word_03_i_reg_153;
    sc_signal< sc_lv<8> > word2_0_i_reg_165;
    sc_signal< sc_lv<8> > word12_0_i_reg_175;
    sc_signal< sc_lv<2> > ap_phi_mux_i_0_i_phi_fu_189_p4;
    sc_signal< sc_lv<2> > i_0_i_reg_185;
    sc_signal< sc_lv<8> > phi_ln87_reg_197;
    sc_signal< sc_lv<3> > i_0_reg_210;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<64> > zext_ln43_fu_376_p1;
    sc_signal< sc_lv<64> > zext_ln92_fu_384_p1;
    sc_signal< sc_lv<8> > word_load_fu_54;
    sc_signal< sc_lv<8> > select_ln89_fu_247_p3;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<8> > empty_14_fu_58;
    sc_signal< sc_lv<8> > empty_15_fu_62;
    sc_signal< sc_lv<8> > empty_16_fu_66;
    sc_signal< sc_lv<8> > empty_17_fu_70;
    sc_signal< sc_lv<8> > word_1_0_fu_74;
    sc_signal< sc_lv<8> > word_2_0_fu_78;
    sc_signal< sc_lv<8> > word_3_0_fu_82;
    sc_signal< sc_lv<2> > num_assign_1_fu_362_p5;
    sc_signal< sc_lv<8> > num_assign_1_fu_362_p6;
    sc_signal< sc_lv<8> > trunc_ln109_fu_381_p1;
    sc_signal< sc_lv<8> > xor_ln109_fu_441_p2;
    sc_signal< sc_lv<8> > ap_return_0_preg;
    sc_signal< sc_lv<8> > ap_return_1_preg;
    sc_signal< sc_lv<8> > ap_return_2_preg;
    sc_signal< sc_lv<8> > ap_return_3_preg;
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
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<2> ap_const_lv2_2;
    static const sc_lv<2> ap_const_lv2_3;
    static const sc_lv<3> ap_const_lv3_4;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<8> ap_const_lv8_0;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_Rcon_address0();
    void thread_Rcon_ce0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_phi_mux_i_0_i_phi_fu_189_p4();
    void thread_ap_ready();
    void thread_ap_return_0();
    void thread_ap_return_1();
    void thread_ap_return_2();
    void thread_ap_return_3();
    void thread_i_5_fu_227_p2();
    void thread_i_fu_340_p2();
    void thread_icmp_ln103_fu_334_p2();
    void thread_icmp_ln86_fu_221_p2();
    void thread_num_assign_1_fu_362_p5();
    void thread_sbox_address0();
    void thread_sbox_ce0();
    void thread_select_ln89_fu_247_p3();
    void thread_trunc_ln105_fu_358_p1();
    void thread_trunc_ln109_fu_381_p1();
    void thread_xor_ln109_fu_441_p2();
    void thread_zext_ln43_fu_376_p1();
    void thread_zext_ln92_fu_384_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif

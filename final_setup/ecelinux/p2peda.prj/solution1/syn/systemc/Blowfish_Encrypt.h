// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _Blowfish_Encrypt_HH_
#define _Blowfish_Encrypt_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct Blowfish_Encrypt : public sc_module {
    // Port declarations 50
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<3> > plaintext_address0;
    sc_out< sc_logic > plaintext_ce0;
    sc_in< sc_lv<8> > plaintext_q0;
    sc_out< sc_lv<3> > plaintext_address1;
    sc_out< sc_logic > plaintext_ce1;
    sc_in< sc_lv<8> > plaintext_q1;
    sc_out< sc_lv<3> > ciphertext_address0;
    sc_out< sc_logic > ciphertext_ce0;
    sc_out< sc_logic > ciphertext_we0;
    sc_out< sc_lv<8> > ciphertext_d0;
    sc_out< sc_lv<3> > ciphertext_address1;
    sc_out< sc_logic > ciphertext_ce1;
    sc_out< sc_logic > ciphertext_we1;
    sc_out< sc_lv<8> > ciphertext_d1;
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


    // Module declarations
    Blowfish_Encrypt(sc_module_name name);
    SC_HAS_PROCESS(Blowfish_Encrypt);

    ~Blowfish_Encrypt();

    sc_trace_file* mVcdFile;

    sc_signal< sc_lv<12> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<8> > plaintext_load_reg_827;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<8> > plaintext_load_1_reg_832;
    sc_signal< sc_lv<8> > plaintext_load_2_reg_847;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<8> > plaintext_load_3_reg_852;
    sc_signal< sc_lv<8> > plaintext_load_4_reg_867;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<8> > plaintext_load_5_reg_872;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<32> > left_3_fu_516_p5;
    sc_signal< sc_lv<32> > right_3_fu_524_p5;
    sc_signal< sc_lv<5> > i_fu_540_p2;
    sc_signal< sc_lv<5> > i_reg_996;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<8> > trunc_ln45_fu_546_p1;
    sc_signal< sc_lv<8> > trunc_ln45_reg_1001;
    sc_signal< sc_lv<1> > icmp_ln38_fu_534_p2;
    sc_signal< sc_lv<8> > trunc_ln2_reg_1006;
    sc_signal< sc_lv<32> > left_7_fu_636_p2;
    sc_signal< sc_lv<32> > left_7_reg_1011;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<32> > add_ln81_3_fu_722_p2;
    sc_signal< sc_lv<32> > add_ln81_3_reg_1036;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<32> > right_fu_728_p2;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_lv<8> > trunc_ln3_reg_1046;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_lv<8> > trunc_ln4_reg_1051;
    sc_signal< sc_lv<8> > trunc_ln5_reg_1056;
    sc_signal< sc_lv<8> > xor_ln172_fu_811_p2;
    sc_signal< sc_lv<8> > xor_ln172_reg_1061;
    sc_signal< sc_lv<32> > left_4_reg_448;
    sc_signal< sc_lv<32> > right_4_reg_458;
    sc_signal< sc_lv<5> > ap_phi_mux_i_0_phi_fu_472_p4;
    sc_signal< sc_lv<5> > i_0_reg_468;
    sc_signal< sc_lv<32> > phi_ln39_reg_479;
    sc_signal< sc_lv<64> > zext_ln81_fu_690_p1;
    sc_signal< sc_lv<64> > zext_ln81_5_fu_695_p1;
    sc_signal< sc_lv<64> > zext_ln81_6_fu_700_p1;
    sc_signal< sc_lv<64> > zext_ln81_7_fu_705_p1;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_lv<8> > xor_ln168_fu_775_p2;
    sc_signal< sc_lv<16> > trunc_ln45_5_fu_559_p1;
    sc_signal< sc_lv<16> > trunc_ln45_4_fu_556_p1;
    sc_signal< sc_lv<24> > trunc_ln45_3_fu_552_p1;
    sc_signal< sc_lv<24> > trunc_ln45_2_fu_549_p1;
    sc_signal< sc_lv<32> > left_fu_563_p2;
    sc_signal< sc_lv<24> > xor_ln45_2_fu_574_p2;
    sc_signal< sc_lv<16> > xor_ln45_1_fu_568_p2;
    sc_signal< sc_lv<16> > trunc_ln39_5_fu_632_p1;
    sc_signal< sc_lv<16> > trunc_ln39_4_fu_628_p1;
    sc_signal< sc_lv<24> > trunc_ln39_3_fu_624_p1;
    sc_signal< sc_lv<24> > trunc_ln39_2_fu_620_p1;
    sc_signal< sc_lv<24> > xor_ln39_2_fu_648_p2;
    sc_signal< sc_lv<16> > xor_ln39_1_fu_642_p2;
    sc_signal< sc_lv<8> > trunc_ln39_1_fu_616_p1;
    sc_signal< sc_lv<8> > trunc_ln39_fu_612_p1;
    sc_signal< sc_lv<8> > a_fu_654_p4;
    sc_signal< sc_lv<8> > b_fu_664_p4;
    sc_signal< sc_lv<8> > c_fu_674_p4;
    sc_signal< sc_lv<8> > d_fu_684_p2;
    sc_signal< sc_lv<32> > add_ln81_fu_710_p2;
    sc_signal< sc_lv<32> > xor_ln81_fu_716_p2;
    sc_signal< sc_lv<16> > trunc_ln44_5_fu_750_p1;
    sc_signal< sc_lv<16> > trunc_ln44_4_fu_747_p1;
    sc_signal< sc_lv<24> > trunc_ln44_3_fu_743_p1;
    sc_signal< sc_lv<24> > trunc_ln44_2_fu_740_p1;
    sc_signal< sc_lv<8> > trunc_ln45_1_fu_771_p1;
    sc_signal< sc_lv<32> > right_5_fu_754_p2;
    sc_signal< sc_lv<24> > xor_ln44_2_fu_765_p2;
    sc_signal< sc_lv<16> > xor_ln44_1_fu_759_p2;
    sc_signal< sc_lv<8> > trunc_ln44_1_fu_736_p1;
    sc_signal< sc_lv<8> > trunc_ln44_fu_733_p1;
    sc_signal< sc_lv<12> > ap_NS_fsm;
    sc_signal< bool > ap_condition_596;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<12> ap_ST_fsm_state1;
    static const sc_lv<12> ap_ST_fsm_state2;
    static const sc_lv<12> ap_ST_fsm_state3;
    static const sc_lv<12> ap_ST_fsm_state4;
    static const sc_lv<12> ap_ST_fsm_state5;
    static const sc_lv<12> ap_ST_fsm_state6;
    static const sc_lv<12> ap_ST_fsm_state7;
    static const sc_lv<12> ap_ST_fsm_state8;
    static const sc_lv<12> ap_ST_fsm_state9;
    static const sc_lv<12> ap_ST_fsm_state10;
    static const sc_lv<12> ap_ST_fsm_state11;
    static const sc_lv<12> ap_ST_fsm_state12;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<1> ap_const_lv1_0;
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
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<64> ap_const_lv64_1;
    static const sc_lv<64> ap_const_lv64_2;
    static const sc_lv<64> ap_const_lv64_3;
    static const sc_lv<64> ap_const_lv64_4;
    static const sc_lv<64> ap_const_lv64_5;
    static const sc_lv<64> ap_const_lv64_6;
    static const sc_lv<64> ap_const_lv64_7;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<5> ap_const_lv5_10;
    static const sc_lv<32> ap_const_lv32_18;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<32> ap_const_lv32_F;
    static const bool ap_const_boolean_1;
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
    void thread_a_fu_654_p4();
    void thread_add_ln81_3_fu_722_p2();
    void thread_add_ln81_fu_710_p2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state11();
    void thread_ap_CS_fsm_state12();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_condition_596();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_phi_mux_i_0_phi_fu_472_p4();
    void thread_ap_ready();
    void thread_b_fu_664_p4();
    void thread_c_fu_674_p4();
    void thread_ciphertext_address0();
    void thread_ciphertext_address1();
    void thread_ciphertext_ce0();
    void thread_ciphertext_ce1();
    void thread_ciphertext_d0();
    void thread_ciphertext_d1();
    void thread_ciphertext_we0();
    void thread_ciphertext_we1();
    void thread_d_fu_684_p2();
    void thread_i_fu_540_p2();
    void thread_icmp_ln38_fu_534_p2();
    void thread_left_3_fu_516_p5();
    void thread_left_7_fu_636_p2();
    void thread_left_fu_563_p2();
    void thread_plaintext_address0();
    void thread_plaintext_address1();
    void thread_plaintext_ce0();
    void thread_plaintext_ce1();
    void thread_right_3_fu_524_p5();
    void thread_right_5_fu_754_p2();
    void thread_right_fu_728_p2();
    void thread_trunc_ln39_1_fu_616_p1();
    void thread_trunc_ln39_2_fu_620_p1();
    void thread_trunc_ln39_3_fu_624_p1();
    void thread_trunc_ln39_4_fu_628_p1();
    void thread_trunc_ln39_5_fu_632_p1();
    void thread_trunc_ln39_fu_612_p1();
    void thread_trunc_ln44_1_fu_736_p1();
    void thread_trunc_ln44_2_fu_740_p1();
    void thread_trunc_ln44_3_fu_743_p1();
    void thread_trunc_ln44_4_fu_747_p1();
    void thread_trunc_ln44_5_fu_750_p1();
    void thread_trunc_ln44_fu_733_p1();
    void thread_trunc_ln45_1_fu_771_p1();
    void thread_trunc_ln45_2_fu_549_p1();
    void thread_trunc_ln45_3_fu_552_p1();
    void thread_trunc_ln45_4_fu_556_p1();
    void thread_trunc_ln45_5_fu_559_p1();
    void thread_trunc_ln45_fu_546_p1();
    void thread_xor_ln168_fu_775_p2();
    void thread_xor_ln172_fu_811_p2();
    void thread_xor_ln39_1_fu_642_p2();
    void thread_xor_ln39_2_fu_648_p2();
    void thread_xor_ln44_1_fu_759_p2();
    void thread_xor_ln44_2_fu_765_p2();
    void thread_xor_ln45_1_fu_568_p2();
    void thread_xor_ln45_2_fu_574_p2();
    void thread_xor_ln81_fu_716_p2();
    void thread_zext_ln81_5_fu_695_p1();
    void thread_zext_ln81_6_fu_700_p1();
    void thread_zext_ln81_7_fu_705_p1();
    void thread_zext_ln81_fu_690_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif

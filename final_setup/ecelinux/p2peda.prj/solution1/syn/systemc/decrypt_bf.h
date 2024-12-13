// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _decrypt_bf_HH_
#define _decrypt_bf_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "Blowfish_Decrypt.h"
#include "decrypt_bf_ciphercud.h"
#include "decrypt_bf_decrypeOg.h"

namespace ap_rtl {

struct decrypt_bf : public sc_module {
    // Port declarations 38
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<128> > ciphertext_V;
    sc_in< sc_lv<32> > P_0;
    sc_in< sc_lv<32> > P_1;
    sc_in< sc_lv<32> > P_2;
    sc_in< sc_lv<32> > P_3;
    sc_in< sc_lv<32> > P_4;
    sc_in< sc_lv<32> > P_5;
    sc_in< sc_lv<32> > P_6;
    sc_in< sc_lv<32> > P_7;
    sc_in< sc_lv<32> > P_8;
    sc_in< sc_lv<32> > P_9;
    sc_in< sc_lv<32> > P_10;
    sc_in< sc_lv<32> > P_11;
    sc_in< sc_lv<32> > P_12;
    sc_in< sc_lv<32> > P_13;
    sc_in< sc_lv<32> > P_14;
    sc_in< sc_lv<32> > P_15;
    sc_in< sc_lv<32> > P_16;
    sc_in< sc_lv<32> > P_17;
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
    sc_out< sc_lv<128> > ap_return;


    // Module declarations
    decrypt_bf(sc_module_name name);
    SC_HAS_PROCESS(decrypt_bf);

    ~decrypt_bf();

    sc_trace_file* mVcdFile;

    decrypt_bf_ciphercud* ciphertext1_U;
    decrypt_bf_ciphercud* ciphertext2_U;
    decrypt_bf_decrypeOg* decryptedtext1_U;
    decrypt_bf_decrypeOg* decryptedtext2_U;
    Blowfish_Decrypt* grp_Blowfish_Decrypt_fu_237;
    sc_signal< sc_lv<12> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<32> > reg_359;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<1> > icmp_ln188_fu_597_p2;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<32> > reg_364;
    sc_signal< sc_lv<32> > reg_369;
    sc_signal< sc_lv<32> > reg_374;
    sc_signal< sc_lv<32> > reg_379;
    sc_signal< sc_lv<32> > reg_384;
    sc_signal< sc_lv<32> > reg_389;
    sc_signal< sc_lv<32> > reg_394;
    sc_signal< sc_lv<32> > reg_399;
    sc_signal< sc_lv<32> > reg_404;
    sc_signal< sc_lv<32> > reg_409;
    sc_signal< sc_lv<32> > reg_414;
    sc_signal< sc_lv<32> > reg_419;
    sc_signal< sc_lv<32> > reg_424;
    sc_signal< sc_lv<32> > reg_429;
    sc_signal< sc_lv<32> > reg_434;
    sc_signal< sc_lv<32> > reg_439;
    sc_signal< sc_lv<32> > reg_444;
    sc_signal< sc_lv<64> > lower_64_V_fu_449_p1;
    sc_signal< sc_lv<64> > lower_64_V_reg_1086;
    sc_signal< sc_lv<64> > upper_64_V_reg_1091;
    sc_signal< sc_lv<4> > i_fu_469_p2;
    sc_signal< sc_lv<4> > i_reg_1099;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<7> > sub_ln681_9_fu_557_p2;
    sc_signal< sc_lv<7> > sub_ln681_9_reg_1104;
    sc_signal< sc_lv<1> > icmp_ln180_fu_463_p2;
    sc_signal< sc_lv<64> > lshr_ln681_fu_567_p2;
    sc_signal< sc_lv<64> > lshr_ln681_reg_1109;
    sc_signal< sc_lv<4> > i_9_fu_603_p2;
    sc_signal< sc_lv<4> > i_9_reg_1117;
    sc_signal< sc_lv<7> > sub_ln681_12_fu_691_p2;
    sc_signal< sc_lv<7> > sub_ln681_12_reg_1122;
    sc_signal< sc_lv<64> > lshr_ln681_6_fu_701_p2;
    sc_signal< sc_lv<64> > lshr_ln681_6_reg_1127;
    sc_signal< sc_lv<4> > i_10_fu_737_p2;
    sc_signal< sc_lv<4> > i_10_reg_1135;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_lv<3> > trunc_ln202_fu_743_p1;
    sc_signal< sc_lv<3> > trunc_ln202_reg_1140;
    sc_signal< sc_lv<1> > icmp_ln201_fu_731_p2;
    sc_signal< sc_lv<128> > p_Result_17_fu_891_p2;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_lv<4> > i_11_fu_903_p2;
    sc_signal< sc_lv<4> > i_11_reg_1158;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_lv<3> > trunc_ln207_fu_909_p1;
    sc_signal< sc_lv<3> > trunc_ln207_reg_1163;
    sc_signal< sc_lv<1> > icmp_ln206_fu_897_p2;
    sc_signal< sc_lv<128> > p_Result_18_fu_1074_p2;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_lv<3> > ciphertext1_address0;
    sc_signal< sc_logic > ciphertext1_ce0;
    sc_signal< sc_logic > ciphertext1_we0;
    sc_signal< sc_lv<8> > ciphertext1_d0;
    sc_signal< sc_lv<8> > ciphertext1_q0;
    sc_signal< sc_logic > ciphertext1_ce1;
    sc_signal< sc_lv<8> > ciphertext1_q1;
    sc_signal< sc_lv<3> > ciphertext2_address0;
    sc_signal< sc_logic > ciphertext2_ce0;
    sc_signal< sc_logic > ciphertext2_we0;
    sc_signal< sc_lv<8> > ciphertext2_d0;
    sc_signal< sc_lv<8> > ciphertext2_q0;
    sc_signal< sc_logic > ciphertext2_ce1;
    sc_signal< sc_lv<8> > ciphertext2_q1;
    sc_signal< sc_lv<3> > decryptedtext1_address0;
    sc_signal< sc_logic > decryptedtext1_ce0;
    sc_signal< sc_logic > decryptedtext1_we0;
    sc_signal< sc_lv<8> > decryptedtext1_q0;
    sc_signal< sc_logic > decryptedtext1_ce1;
    sc_signal< sc_logic > decryptedtext1_we1;
    sc_signal< sc_lv<3> > decryptedtext2_address0;
    sc_signal< sc_logic > decryptedtext2_ce0;
    sc_signal< sc_logic > decryptedtext2_we0;
    sc_signal< sc_lv<8> > decryptedtext2_q0;
    sc_signal< sc_logic > decryptedtext2_ce1;
    sc_signal< sc_logic > decryptedtext2_we1;
    sc_signal< sc_logic > grp_Blowfish_Decrypt_fu_237_ap_start;
    sc_signal< sc_logic > grp_Blowfish_Decrypt_fu_237_ap_done;
    sc_signal< sc_logic > grp_Blowfish_Decrypt_fu_237_ap_idle;
    sc_signal< sc_logic > grp_Blowfish_Decrypt_fu_237_ap_ready;
    sc_signal< sc_lv<3> > grp_Blowfish_Decrypt_fu_237_ciphertext_address0;
    sc_signal< sc_logic > grp_Blowfish_Decrypt_fu_237_ciphertext_ce0;
    sc_signal< sc_lv<8> > grp_Blowfish_Decrypt_fu_237_ciphertext_q0;
    sc_signal< sc_lv<3> > grp_Blowfish_Decrypt_fu_237_ciphertext_address1;
    sc_signal< sc_logic > grp_Blowfish_Decrypt_fu_237_ciphertext_ce1;
    sc_signal< sc_lv<8> > grp_Blowfish_Decrypt_fu_237_ciphertext_q1;
    sc_signal< sc_lv<3> > grp_Blowfish_Decrypt_fu_237_decryptedtext_address0;
    sc_signal< sc_logic > grp_Blowfish_Decrypt_fu_237_decryptedtext_ce0;
    sc_signal< sc_logic > grp_Blowfish_Decrypt_fu_237_decryptedtext_we0;
    sc_signal< sc_lv<8> > grp_Blowfish_Decrypt_fu_237_decryptedtext_d0;
    sc_signal< sc_lv<3> > grp_Blowfish_Decrypt_fu_237_decryptedtext_address1;
    sc_signal< sc_logic > grp_Blowfish_Decrypt_fu_237_decryptedtext_ce1;
    sc_signal< sc_logic > grp_Blowfish_Decrypt_fu_237_decryptedtext_we1;
    sc_signal< sc_lv<8> > grp_Blowfish_Decrypt_fu_237_decryptedtext_d1;
    sc_signal< sc_lv<8> > grp_Blowfish_Decrypt_fu_237_S_0_address0;
    sc_signal< sc_logic > grp_Blowfish_Decrypt_fu_237_S_0_ce0;
    sc_signal< sc_lv<8> > grp_Blowfish_Decrypt_fu_237_S_1_address0;
    sc_signal< sc_logic > grp_Blowfish_Decrypt_fu_237_S_1_ce0;
    sc_signal< sc_lv<8> > grp_Blowfish_Decrypt_fu_237_S_2_address0;
    sc_signal< sc_logic > grp_Blowfish_Decrypt_fu_237_S_2_ce0;
    sc_signal< sc_lv<8> > grp_Blowfish_Decrypt_fu_237_S_3_address0;
    sc_signal< sc_logic > grp_Blowfish_Decrypt_fu_237_S_3_ce0;
    sc_signal< sc_lv<4> > i_0_i_reg_168;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<4> > i1_0_i_reg_180;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<128> > p_Val2_12_reg_192;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<4> > i_0_i25_reg_204;
    sc_signal< sc_lv<128> > p_Val2_13_reg_215;
    sc_signal< sc_lv<4> > i1_0_i31_reg_226;
    sc_signal< sc_logic > grp_Blowfish_Decrypt_fu_237_ap_start_reg;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<64> > zext_ln184_fu_592_p1;
    sc_signal< sc_lv<64> > zext_ln192_fu_726_p1;
    sc_signal< sc_lv<64> > zext_ln202_fu_747_p1;
    sc_signal< sc_lv<64> > zext_ln207_fu_913_p1;
    sc_signal< sc_lv<3> > trunc_ln184_fu_475_p1;
    sc_signal< sc_lv<6> > Lo_assign_fu_479_p3;
    sc_signal< sc_lv<6> > or_ln184_fu_487_p2;
    sc_signal< sc_lv<7> > zext_ln681_fu_499_p1;
    sc_signal< sc_lv<7> > zext_ln681_11_fu_503_p1;
    sc_signal< sc_lv<1> > icmp_ln681_fu_493_p2;
    sc_signal< sc_lv<7> > sub_ln681_fu_516_p2;
    sc_signal< sc_lv<7> > sub_ln681_8_fu_528_p2;
    sc_signal< sc_lv<64> > tmp_fu_507_p4;
    sc_signal< sc_lv<7> > xor_ln681_fu_522_p2;
    sc_signal< sc_lv<7> > select_ln681_fu_534_p3;
    sc_signal< sc_lv<7> > select_ln681_9_fu_549_p3;
    sc_signal< sc_lv<64> > select_ln681_8_fu_542_p3;
    sc_signal< sc_lv<64> > zext_ln681_12_fu_563_p1;
    sc_signal< sc_lv<64> > zext_ln681_13_fu_573_p1;
    sc_signal< sc_lv<64> > lshr_ln681_5_fu_576_p2;
    sc_signal< sc_lv<64> > p_Result_s_fu_582_p2;
    sc_signal< sc_lv<3> > trunc_ln192_fu_609_p1;
    sc_signal< sc_lv<6> > Lo_assign_7_fu_613_p3;
    sc_signal< sc_lv<6> > or_ln192_fu_621_p2;
    sc_signal< sc_lv<7> > zext_ln681_14_fu_633_p1;
    sc_signal< sc_lv<7> > zext_ln681_15_fu_637_p1;
    sc_signal< sc_lv<1> > icmp_ln681_2_fu_627_p2;
    sc_signal< sc_lv<7> > sub_ln681_10_fu_650_p2;
    sc_signal< sc_lv<7> > sub_ln681_11_fu_662_p2;
    sc_signal< sc_lv<64> > tmp_19_fu_641_p4;
    sc_signal< sc_lv<7> > xor_ln681_2_fu_656_p2;
    sc_signal< sc_lv<7> > select_ln681_10_fu_668_p3;
    sc_signal< sc_lv<7> > select_ln681_12_fu_683_p3;
    sc_signal< sc_lv<64> > select_ln681_11_fu_676_p3;
    sc_signal< sc_lv<64> > zext_ln681_16_fu_697_p1;
    sc_signal< sc_lv<64> > zext_ln681_17_fu_707_p1;
    sc_signal< sc_lv<64> > lshr_ln681_7_fu_710_p2;
    sc_signal< sc_lv<64> > p_Result_14_fu_716_p2;
    sc_signal< sc_lv<6> > Lo_assign_8_fu_752_p3;
    sc_signal< sc_lv<6> > or_ln202_fu_759_p2;
    sc_signal< sc_lv<8> > zext_ln388_fu_775_p1;
    sc_signal< sc_lv<1> > icmp_ln388_fu_769_p2;
    sc_signal< sc_lv<8> > zext_ln388_14_fu_779_p1;
    sc_signal< sc_lv<8> > xor_ln388_fu_783_p2;
    sc_signal< sc_lv<8> > select_ln388_fu_789_p3;
    sc_signal< sc_lv<8> > select_ln388_12_fu_805_p3;
    sc_signal< sc_lv<8> > select_ln388_11_fu_797_p3;
    sc_signal< sc_lv<8> > xor_ln388_8_fu_813_p2;
    sc_signal< sc_lv<128> > tmp_V_fu_765_p1;
    sc_signal< sc_lv<128> > zext_ln388_15_fu_819_p1;
    sc_signal< sc_lv<128> > shl_ln388_fu_831_p2;
    sc_signal< sc_lv<128> > tmp_20_fu_837_p4;
    sc_signal< sc_lv<128> > zext_ln388_16_fu_823_p1;
    sc_signal< sc_lv<128> > zext_ln388_17_fu_827_p1;
    sc_signal< sc_lv<128> > shl_ln388_5_fu_855_p2;
    sc_signal< sc_lv<128> > lshr_ln388_fu_861_p2;
    sc_signal< sc_lv<128> > and_ln388_fu_867_p2;
    sc_signal< sc_lv<128> > xor_ln388_9_fu_873_p2;
    sc_signal< sc_lv<128> > select_ln388_13_fu_847_p3;
    sc_signal< sc_lv<128> > and_ln388_8_fu_879_p2;
    sc_signal< sc_lv<128> > and_ln388_9_fu_885_p2;
    sc_signal< sc_lv<6> > shl_ln_fu_918_p3;
    sc_signal< sc_lv<6> > or_ln207_fu_925_p2;
    sc_signal< sc_lv<7> > Lo_assign_9_fu_939_p4;
    sc_signal< sc_lv<7> > Hi_assign_9_fu_931_p3;
    sc_signal< sc_lv<8> > zext_ln388_18_fu_958_p1;
    sc_signal< sc_lv<1> > icmp_ln388_2_fu_952_p2;
    sc_signal< sc_lv<8> > zext_ln388_19_fu_962_p1;
    sc_signal< sc_lv<8> > xor_ln388_10_fu_966_p2;
    sc_signal< sc_lv<8> > select_ln388_14_fu_972_p3;
    sc_signal< sc_lv<8> > select_ln388_16_fu_988_p3;
    sc_signal< sc_lv<8> > select_ln388_15_fu_980_p3;
    sc_signal< sc_lv<8> > xor_ln388_11_fu_996_p2;
    sc_signal< sc_lv<128> > tmp_V_5_fu_948_p1;
    sc_signal< sc_lv<128> > zext_ln388_20_fu_1002_p1;
    sc_signal< sc_lv<128> > shl_ln388_6_fu_1014_p2;
    sc_signal< sc_lv<128> > tmp_21_fu_1020_p4;
    sc_signal< sc_lv<128> > zext_ln388_21_fu_1006_p1;
    sc_signal< sc_lv<128> > zext_ln388_22_fu_1010_p1;
    sc_signal< sc_lv<128> > shl_ln388_7_fu_1038_p2;
    sc_signal< sc_lv<128> > lshr_ln388_2_fu_1044_p2;
    sc_signal< sc_lv<128> > and_ln388_10_fu_1050_p2;
    sc_signal< sc_lv<128> > xor_ln388_12_fu_1056_p2;
    sc_signal< sc_lv<128> > select_ln388_17_fu_1030_p3;
    sc_signal< sc_lv<128> > and_ln388_11_fu_1062_p2;
    sc_signal< sc_lv<128> > and_ln388_12_fu_1068_p2;
    sc_signal< sc_lv<128> > ap_return_preg;
    sc_signal< sc_lv<12> > ap_NS_fsm;
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
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<128> ap_const_lv128_lc_1;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_40;
    static const sc_lv<32> ap_const_lv32_7F;
    static const sc_lv<4> ap_const_lv4_8;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<6> ap_const_lv6_7;
    static const sc_lv<32> ap_const_lv32_3F;
    static const sc_lv<7> ap_const_lv7_3F;
    static const sc_lv<64> ap_const_lv64_FFFFFFFFFFFFFFFF;
    static const sc_lv<8> ap_const_lv8_7F;
    static const sc_lv<128> ap_const_lv128_lc_2;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_Hi_assign_9_fu_931_p3();
    void thread_Lo_assign_7_fu_613_p3();
    void thread_Lo_assign_8_fu_752_p3();
    void thread_Lo_assign_9_fu_939_p4();
    void thread_Lo_assign_fu_479_p3();
    void thread_S_0_address0();
    void thread_S_0_ce0();
    void thread_S_1_address0();
    void thread_S_1_ce0();
    void thread_S_2_address0();
    void thread_S_2_ce0();
    void thread_S_3_address0();
    void thread_S_3_ce0();
    void thread_and_ln388_10_fu_1050_p2();
    void thread_and_ln388_11_fu_1062_p2();
    void thread_and_ln388_12_fu_1068_p2();
    void thread_and_ln388_8_fu_879_p2();
    void thread_and_ln388_9_fu_885_p2();
    void thread_and_ln388_fu_867_p2();
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
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_return();
    void thread_ciphertext1_address0();
    void thread_ciphertext1_ce0();
    void thread_ciphertext1_ce1();
    void thread_ciphertext1_d0();
    void thread_ciphertext1_we0();
    void thread_ciphertext2_address0();
    void thread_ciphertext2_ce0();
    void thread_ciphertext2_ce1();
    void thread_ciphertext2_d0();
    void thread_ciphertext2_we0();
    void thread_decryptedtext1_address0();
    void thread_decryptedtext1_ce0();
    void thread_decryptedtext1_ce1();
    void thread_decryptedtext1_we0();
    void thread_decryptedtext1_we1();
    void thread_decryptedtext2_address0();
    void thread_decryptedtext2_ce0();
    void thread_decryptedtext2_ce1();
    void thread_decryptedtext2_we0();
    void thread_decryptedtext2_we1();
    void thread_grp_Blowfish_Decrypt_fu_237_ap_start();
    void thread_grp_Blowfish_Decrypt_fu_237_ciphertext_q0();
    void thread_grp_Blowfish_Decrypt_fu_237_ciphertext_q1();
    void thread_i_10_fu_737_p2();
    void thread_i_11_fu_903_p2();
    void thread_i_9_fu_603_p2();
    void thread_i_fu_469_p2();
    void thread_icmp_ln180_fu_463_p2();
    void thread_icmp_ln188_fu_597_p2();
    void thread_icmp_ln201_fu_731_p2();
    void thread_icmp_ln206_fu_897_p2();
    void thread_icmp_ln388_2_fu_952_p2();
    void thread_icmp_ln388_fu_769_p2();
    void thread_icmp_ln681_2_fu_627_p2();
    void thread_icmp_ln681_fu_493_p2();
    void thread_lower_64_V_fu_449_p1();
    void thread_lshr_ln388_2_fu_1044_p2();
    void thread_lshr_ln388_fu_861_p2();
    void thread_lshr_ln681_5_fu_576_p2();
    void thread_lshr_ln681_6_fu_701_p2();
    void thread_lshr_ln681_7_fu_710_p2();
    void thread_lshr_ln681_fu_567_p2();
    void thread_or_ln184_fu_487_p2();
    void thread_or_ln192_fu_621_p2();
    void thread_or_ln202_fu_759_p2();
    void thread_or_ln207_fu_925_p2();
    void thread_p_Result_14_fu_716_p2();
    void thread_p_Result_17_fu_891_p2();
    void thread_p_Result_18_fu_1074_p2();
    void thread_p_Result_s_fu_582_p2();
    void thread_select_ln388_11_fu_797_p3();
    void thread_select_ln388_12_fu_805_p3();
    void thread_select_ln388_13_fu_847_p3();
    void thread_select_ln388_14_fu_972_p3();
    void thread_select_ln388_15_fu_980_p3();
    void thread_select_ln388_16_fu_988_p3();
    void thread_select_ln388_17_fu_1030_p3();
    void thread_select_ln388_fu_789_p3();
    void thread_select_ln681_10_fu_668_p3();
    void thread_select_ln681_11_fu_676_p3();
    void thread_select_ln681_12_fu_683_p3();
    void thread_select_ln681_8_fu_542_p3();
    void thread_select_ln681_9_fu_549_p3();
    void thread_select_ln681_fu_534_p3();
    void thread_shl_ln388_5_fu_855_p2();
    void thread_shl_ln388_6_fu_1014_p2();
    void thread_shl_ln388_7_fu_1038_p2();
    void thread_shl_ln388_fu_831_p2();
    void thread_shl_ln_fu_918_p3();
    void thread_sub_ln681_10_fu_650_p2();
    void thread_sub_ln681_11_fu_662_p2();
    void thread_sub_ln681_12_fu_691_p2();
    void thread_sub_ln681_8_fu_528_p2();
    void thread_sub_ln681_9_fu_557_p2();
    void thread_sub_ln681_fu_516_p2();
    void thread_tmp_19_fu_641_p4();
    void thread_tmp_20_fu_837_p4();
    void thread_tmp_21_fu_1020_p4();
    void thread_tmp_V_5_fu_948_p1();
    void thread_tmp_V_fu_765_p1();
    void thread_tmp_fu_507_p4();
    void thread_trunc_ln184_fu_475_p1();
    void thread_trunc_ln192_fu_609_p1();
    void thread_trunc_ln202_fu_743_p1();
    void thread_trunc_ln207_fu_909_p1();
    void thread_xor_ln388_10_fu_966_p2();
    void thread_xor_ln388_11_fu_996_p2();
    void thread_xor_ln388_12_fu_1056_p2();
    void thread_xor_ln388_8_fu_813_p2();
    void thread_xor_ln388_9_fu_873_p2();
    void thread_xor_ln388_fu_783_p2();
    void thread_xor_ln681_2_fu_656_p2();
    void thread_xor_ln681_fu_522_p2();
    void thread_zext_ln184_fu_592_p1();
    void thread_zext_ln192_fu_726_p1();
    void thread_zext_ln202_fu_747_p1();
    void thread_zext_ln207_fu_913_p1();
    void thread_zext_ln388_14_fu_779_p1();
    void thread_zext_ln388_15_fu_819_p1();
    void thread_zext_ln388_16_fu_823_p1();
    void thread_zext_ln388_17_fu_827_p1();
    void thread_zext_ln388_18_fu_958_p1();
    void thread_zext_ln388_19_fu_962_p1();
    void thread_zext_ln388_20_fu_1002_p1();
    void thread_zext_ln388_21_fu_1006_p1();
    void thread_zext_ln388_22_fu_1010_p1();
    void thread_zext_ln388_fu_775_p1();
    void thread_zext_ln681_11_fu_503_p1();
    void thread_zext_ln681_12_fu_563_p1();
    void thread_zext_ln681_13_fu_573_p1();
    void thread_zext_ln681_14_fu_633_p1();
    void thread_zext_ln681_15_fu_637_p1();
    void thread_zext_ln681_16_fu_697_p1();
    void thread_zext_ln681_17_fu_707_p1();
    void thread_zext_ln681_fu_499_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif

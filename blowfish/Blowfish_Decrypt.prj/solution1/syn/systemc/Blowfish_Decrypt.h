// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _Blowfish_Decrypt_HH_
#define _Blowfish_Decrypt_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct Blowfish_Decrypt : public sc_module {
    // Port declarations 29
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<3> > ciphertext_address0;
    sc_out< sc_logic > ciphertext_ce0;
    sc_in< sc_lv<8> > ciphertext_q0;
    sc_out< sc_lv<3> > ciphertext_address1;
    sc_out< sc_logic > ciphertext_ce1;
    sc_in< sc_lv<8> > ciphertext_q1;
    sc_out< sc_lv<3> > decryptedtext_address0;
    sc_out< sc_logic > decryptedtext_ce0;
    sc_out< sc_logic > decryptedtext_we0;
    sc_out< sc_lv<8> > decryptedtext_d0;
    sc_out< sc_lv<3> > decryptedtext_address1;
    sc_out< sc_logic > decryptedtext_ce1;
    sc_out< sc_logic > decryptedtext_we1;
    sc_out< sc_lv<8> > decryptedtext_d1;
    sc_out< sc_lv<5> > P_address0;
    sc_out< sc_logic > P_ce0;
    sc_in< sc_lv<32> > P_q0;
    sc_out< sc_lv<10> > S_address0;
    sc_out< sc_logic > S_ce0;
    sc_in< sc_lv<32> > S_q0;
    sc_out< sc_lv<10> > S_address1;
    sc_out< sc_logic > S_ce1;
    sc_in< sc_lv<32> > S_q1;


    // Module declarations
    Blowfish_Decrypt(sc_module_name name);
    SC_HAS_PROCESS(Blowfish_Decrypt);

    ~Blowfish_Decrypt();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    sc_signal< sc_lv<13> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<8> > ciphertext_load_reg_668;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<8> > ciphertext_load_1_reg_673;
    sc_signal< sc_lv<8> > ciphertext_load_2_reg_688;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<8> > ciphertext_load_3_reg_693;
    sc_signal< sc_lv<8> > ciphertext_load_4_reg_708;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<8> > ciphertext_load_5_reg_713;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<32> > left_1_fu_355_p5;
    sc_signal< sc_lv<32> > right_1_fu_363_p5;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<1> > icmp_ln84_fu_383_p2;
    sc_signal< sc_lv<5> > i_fu_394_p2;
    sc_signal< sc_lv<5> > i_reg_751;
    sc_signal< sc_lv<8> > trunc_ln85_fu_400_p1;
    sc_signal< sc_lv<8> > trunc_ln85_reg_756;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<32> > grp_fu_338_p2;
    sc_signal< sc_lv<32> > left_5_reg_761;
    sc_signal< sc_lv<8> > c_reg_766;
    sc_signal< sc_lv<32> > add_ln102_fu_475_p2;
    sc_signal< sc_lv<32> > add_ln102_reg_781;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<32> > right_fu_509_p2;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_lv<8> > trunc_ln91_fu_515_p1;
    sc_signal< sc_lv<8> > trunc_ln91_reg_801;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_lv<8> > trunc_ln5_reg_806;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_lv<8> > trunc_ln8_reg_816;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_lv<8> > xor_ln179_fu_652_p2;
    sc_signal< sc_lv<8> > xor_ln179_reg_821;
    sc_signal< sc_lv<32> > left_2_reg_307;
    sc_signal< sc_lv<32> > right_2_reg_317;
    sc_signal< sc_lv<5> > i_0_reg_327;
    sc_signal< sc_lv<64> > zext_ln85_fu_389_p1;
    sc_signal< sc_lv<64> > zext_ln102_fu_452_p1;
    sc_signal< sc_lv<64> > tmp_fu_457_p3;
    sc_signal< sc_lv<64> > tmp_1_fu_481_p3;
    sc_signal< sc_lv<64> > tmp_2_fu_489_p3;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< sc_lv<8> > xor_ln175_fu_589_p2;
    sc_signal< sc_lv<8> > grp_fu_344_p4;
    sc_signal< sc_lv<4> > tmp_3_fu_373_p4;
    sc_signal< sc_lv<16> > trunc_ln85_5_fu_416_p1;
    sc_signal< sc_lv<16> > trunc_ln85_4_fu_412_p1;
    sc_signal< sc_lv<24> > trunc_ln85_3_fu_408_p1;
    sc_signal< sc_lv<24> > trunc_ln85_2_fu_404_p1;
    sc_signal< sc_lv<24> > xor_ln85_2_fu_426_p2;
    sc_signal< sc_lv<16> > xor_ln85_1_fu_420_p2;
    sc_signal< sc_lv<8> > b_fu_432_p4;
    sc_signal< sc_lv<8> > trunc_ln85_1_fu_466_p1;
    sc_signal< sc_lv<8> > d_fu_470_p2;
    sc_signal< sc_lv<32> > xor_ln102_fu_498_p2;
    sc_signal< sc_lv<32> > add_ln102_1_fu_503_p2;
    sc_signal< sc_lv<16> > trunc_ln91_5_fu_531_p1;
    sc_signal< sc_lv<16> > trunc_ln91_4_fu_527_p1;
    sc_signal< sc_lv<24> > trunc_ln91_3_fu_523_p1;
    sc_signal< sc_lv<24> > trunc_ln91_2_fu_519_p1;
    sc_signal< sc_lv<32> > left_fu_535_p2;
    sc_signal< sc_lv<24> > xor_ln91_2_fu_547_p2;
    sc_signal< sc_lv<16> > xor_ln91_1_fu_541_p2;
    sc_signal< sc_lv<8> > trunc_ln91_1_fu_585_p1;
    sc_signal< sc_lv<16> > trunc_ln90_5_fu_615_p1;
    sc_signal< sc_lv<16> > trunc_ln90_4_fu_611_p1;
    sc_signal< sc_lv<24> > trunc_ln90_3_fu_607_p1;
    sc_signal< sc_lv<24> > trunc_ln90_2_fu_603_p1;
    sc_signal< sc_lv<24> > xor_ln90_2_fu_625_p2;
    sc_signal< sc_lv<16> > xor_ln90_1_fu_619_p2;
    sc_signal< sc_lv<8> > trunc_ln90_1_fu_599_p1;
    sc_signal< sc_lv<8> > trunc_ln90_fu_595_p1;
    sc_signal< sc_lv<13> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<13> ap_ST_fsm_state1;
    static const sc_lv<13> ap_ST_fsm_state2;
    static const sc_lv<13> ap_ST_fsm_state3;
    static const sc_lv<13> ap_ST_fsm_state4;
    static const sc_lv<13> ap_ST_fsm_state5;
    static const sc_lv<13> ap_ST_fsm_state6;
    static const sc_lv<13> ap_ST_fsm_state7;
    static const sc_lv<13> ap_ST_fsm_state8;
    static const sc_lv<13> ap_ST_fsm_state9;
    static const sc_lv<13> ap_ST_fsm_state10;
    static const sc_lv<13> ap_ST_fsm_state11;
    static const sc_lv<13> ap_ST_fsm_state12;
    static const sc_lv<13> ap_ST_fsm_state13;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<5> ap_const_lv5_11;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<64> ap_const_lv64_1;
    static const sc_lv<64> ap_const_lv64_2;
    static const sc_lv<64> ap_const_lv64_3;
    static const sc_lv<64> ap_const_lv64_4;
    static const sc_lv<64> ap_const_lv64_5;
    static const sc_lv<64> ap_const_lv64_6;
    static const sc_lv<64> ap_const_lv64_7;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_18;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<5> ap_const_lv5_1F;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<56> ap_const_lv56_1;
    static const sc_lv<56> ap_const_lv56_2;
    static const sc_lv<56> ap_const_lv56_3;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_P_address0();
    void thread_P_ce0();
    void thread_S_address0();
    void thread_S_address1();
    void thread_S_ce0();
    void thread_S_ce1();
    void thread_add_ln102_1_fu_503_p2();
    void thread_add_ln102_fu_475_p2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state11();
    void thread_ap_CS_fsm_state12();
    void thread_ap_CS_fsm_state13();
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
    void thread_b_fu_432_p4();
    void thread_ciphertext_address0();
    void thread_ciphertext_address1();
    void thread_ciphertext_ce0();
    void thread_ciphertext_ce1();
    void thread_d_fu_470_p2();
    void thread_decryptedtext_address0();
    void thread_decryptedtext_address1();
    void thread_decryptedtext_ce0();
    void thread_decryptedtext_ce1();
    void thread_decryptedtext_d0();
    void thread_decryptedtext_d1();
    void thread_decryptedtext_we0();
    void thread_decryptedtext_we1();
    void thread_grp_fu_338_p2();
    void thread_grp_fu_344_p4();
    void thread_i_fu_394_p2();
    void thread_icmp_ln84_fu_383_p2();
    void thread_left_1_fu_355_p5();
    void thread_left_fu_535_p2();
    void thread_right_1_fu_363_p5();
    void thread_right_fu_509_p2();
    void thread_tmp_1_fu_481_p3();
    void thread_tmp_2_fu_489_p3();
    void thread_tmp_3_fu_373_p4();
    void thread_tmp_fu_457_p3();
    void thread_trunc_ln85_1_fu_466_p1();
    void thread_trunc_ln85_2_fu_404_p1();
    void thread_trunc_ln85_3_fu_408_p1();
    void thread_trunc_ln85_4_fu_412_p1();
    void thread_trunc_ln85_5_fu_416_p1();
    void thread_trunc_ln85_fu_400_p1();
    void thread_trunc_ln90_1_fu_599_p1();
    void thread_trunc_ln90_2_fu_603_p1();
    void thread_trunc_ln90_3_fu_607_p1();
    void thread_trunc_ln90_4_fu_611_p1();
    void thread_trunc_ln90_5_fu_615_p1();
    void thread_trunc_ln90_fu_595_p1();
    void thread_trunc_ln91_1_fu_585_p1();
    void thread_trunc_ln91_2_fu_519_p1();
    void thread_trunc_ln91_3_fu_523_p1();
    void thread_trunc_ln91_4_fu_527_p1();
    void thread_trunc_ln91_5_fu_531_p1();
    void thread_trunc_ln91_fu_515_p1();
    void thread_xor_ln102_fu_498_p2();
    void thread_xor_ln175_fu_589_p2();
    void thread_xor_ln179_fu_652_p2();
    void thread_xor_ln85_1_fu_420_p2();
    void thread_xor_ln85_2_fu_426_p2();
    void thread_xor_ln90_1_fu_619_p2();
    void thread_xor_ln90_2_fu_625_p2();
    void thread_xor_ln91_1_fu_541_p2();
    void thread_xor_ln91_2_fu_547_p2();
    void thread_zext_ln102_fu_452_p1();
    void thread_zext_ln85_fu_389_p1();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif

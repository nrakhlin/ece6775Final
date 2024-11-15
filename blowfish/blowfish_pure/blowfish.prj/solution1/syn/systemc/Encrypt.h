// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _Encrypt_HH_
#define _Encrypt_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct Encrypt : public sc_module {
    // Port declarations 28
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<5> > Blowfish_pary_s_address0;
    sc_out< sc_logic > Blowfish_pary_s_ce0;
    sc_in< sc_lv<32> > Blowfish_pary_s_q0;
    sc_out< sc_lv<10> > Blowfish_sbox_s_address0;
    sc_out< sc_logic > Blowfish_sbox_s_ce0;
    sc_in< sc_lv<32> > Blowfish_sbox_s_q0;
    sc_out< sc_lv<10> > Blowfish_sbox_s_address1;
    sc_out< sc_logic > Blowfish_sbox_s_ce1;
    sc_in< sc_lv<32> > Blowfish_sbox_s_q1;
    sc_out< sc_lv<3> > dst_address0;
    sc_out< sc_logic > dst_ce0;
    sc_out< sc_logic > dst_we0;
    sc_out< sc_lv<8> > dst_d0;
    sc_in< sc_lv<8> > dst_q0;
    sc_out< sc_lv<3> > dst_address1;
    sc_out< sc_logic > dst_ce1;
    sc_out< sc_logic > dst_we1;
    sc_out< sc_lv<8> > dst_d1;
    sc_in< sc_lv<8> > dst_q1;
    sc_out< sc_lv<3> > src_address0;
    sc_out< sc_logic > src_ce0;
    sc_in< sc_lv<8> > src_q0;


    // Module declarations
    Encrypt(sc_module_name name);
    SC_HAS_PROCESS(Encrypt);

    ~Encrypt();

    sc_trace_file* mVcdFile;

    sc_signal< sc_lv<15> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<4> > i_fu_315_p2;
    sc_signal< sc_lv<4> > i_reg_628;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<64> > zext_ln117_fu_321_p1;
    sc_signal< sc_lv<64> > zext_ln117_reg_633;
    sc_signal< sc_lv<1> > icmp_ln116_fu_309_p2;
    sc_signal< sc_lv<8> > dst_load_reg_649;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<8> > dst_load_1_reg_654;
    sc_signal< sc_lv<3> > dst_addr_2_reg_659;
    sc_signal< sc_lv<3> > dst_addr_3_reg_664;
    sc_signal< sc_lv<8> > dst_load_2_reg_669;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<8> > dst_load_3_reg_674;
    sc_signal< sc_lv<3> > dst_addr_4_reg_679;
    sc_signal< sc_lv<3> > dst_addr_5_reg_684;
    sc_signal< sc_lv<8> > dst_load_4_reg_689;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<8> > dst_load_5_reg_694;
    sc_signal< sc_lv<3> > dst_addr_6_reg_699;
    sc_signal< sc_lv<3> > dst_addr_7_reg_704;
    sc_signal< sc_lv<32> > left_fu_326_p5;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<32> > right_fu_334_p5;
    sc_signal< sc_lv<5> > i_6_fu_350_p2;
    sc_signal< sc_lv<5> > i_6_reg_722;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<1> > icmp_ln224_fu_344_p2;
    sc_signal< sc_lv<8> > trunc_ln225_fu_361_p1;
    sc_signal< sc_lv<8> > trunc_ln225_reg_737;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_lv<32> > grp_fu_292_p2;
    sc_signal< sc_lv<32> > temp_2_reg_742;
    sc_signal< sc_lv<8> > c_reg_747;
    sc_signal< sc_lv<32> > add_ln281_fu_436_p2;
    sc_signal< sc_lv<32> > add_ln281_reg_762;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_lv<32> > xor_ln226_fu_470_p2;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_lv<8> > trunc_ln241_fu_476_p1;
    sc_signal< sc_lv<8> > trunc_ln241_reg_782;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_lv<8> > trunc_ln5_reg_787;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< sc_lv<8> > trunc_ln8_reg_797;
    sc_signal< sc_logic > ap_CS_fsm_state14;
    sc_signal< sc_lv<8> > xor_ln142_fu_613_p2;
    sc_signal< sc_lv<8> > xor_ln142_reg_802;
    sc_signal< sc_lv<4> > i_0_reg_250;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<32> > temp_reg_261;
    sc_signal< sc_lv<32> > right_new_0_i_reg_271;
    sc_signal< sc_lv<5> > i_0_i_reg_281;
    sc_signal< sc_lv<64> > zext_ln225_fu_356_p1;
    sc_signal< sc_lv<64> > zext_ln281_fu_413_p1;
    sc_signal< sc_lv<64> > tmp_fu_418_p3;
    sc_signal< sc_lv<64> > tmp_9_fu_442_p3;
    sc_signal< sc_lv<64> > tmp_s_fu_450_p3;
    sc_signal< sc_lv<8> > xor_ln138_fu_550_p2;
    sc_signal< sc_lv<8> > grp_fu_298_p4;
    sc_signal< sc_logic > ap_CS_fsm_state15;
    sc_signal< sc_lv<16> > trunc_ln225_10_fu_377_p1;
    sc_signal< sc_lv<16> > trunc_ln225_9_fu_373_p1;
    sc_signal< sc_lv<24> > trunc_ln225_8_fu_369_p1;
    sc_signal< sc_lv<24> > trunc_ln225_7_fu_365_p1;
    sc_signal< sc_lv<24> > xor_ln272_2_fu_387_p2;
    sc_signal< sc_lv<16> > xor_ln272_fu_381_p2;
    sc_signal< sc_lv<8> > b_fu_393_p4;
    sc_signal< sc_lv<8> > trunc_ln225_6_fu_427_p1;
    sc_signal< sc_lv<8> > d_fu_431_p2;
    sc_signal< sc_lv<32> > xor_ln281_fu_459_p2;
    sc_signal< sc_lv<32> > add_ln281_2_fu_464_p2;
    sc_signal< sc_lv<16> > trunc_ln241_5_fu_492_p1;
    sc_signal< sc_lv<16> > trunc_ln241_4_fu_488_p1;
    sc_signal< sc_lv<24> > trunc_ln241_3_fu_484_p1;
    sc_signal< sc_lv<24> > trunc_ln241_2_fu_480_p1;
    sc_signal< sc_lv<32> > left_new_fu_496_p2;
    sc_signal< sc_lv<24> > xor_ln131_1_fu_508_p2;
    sc_signal< sc_lv<16> > xor_ln131_fu_502_p2;
    sc_signal< sc_lv<8> > trunc_ln241_1_fu_546_p1;
    sc_signal< sc_lv<16> > trunc_ln240_5_fu_576_p1;
    sc_signal< sc_lv<16> > trunc_ln240_4_fu_572_p1;
    sc_signal< sc_lv<24> > trunc_ln240_3_fu_568_p1;
    sc_signal< sc_lv<24> > trunc_ln240_2_fu_564_p1;
    sc_signal< sc_lv<24> > xor_ln241_1_fu_586_p2;
    sc_signal< sc_lv<16> > xor_ln241_fu_580_p2;
    sc_signal< sc_lv<8> > trunc_ln240_1_fu_560_p1;
    sc_signal< sc_lv<8> > trunc_ln240_fu_556_p1;
    sc_signal< sc_lv<15> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<15> ap_ST_fsm_state1;
    static const sc_lv<15> ap_ST_fsm_state2;
    static const sc_lv<15> ap_ST_fsm_state3;
    static const sc_lv<15> ap_ST_fsm_state4;
    static const sc_lv<15> ap_ST_fsm_state5;
    static const sc_lv<15> ap_ST_fsm_state6;
    static const sc_lv<15> ap_ST_fsm_state7;
    static const sc_lv<15> ap_ST_fsm_state8;
    static const sc_lv<15> ap_ST_fsm_state9;
    static const sc_lv<15> ap_ST_fsm_state10;
    static const sc_lv<15> ap_ST_fsm_state11;
    static const sc_lv<15> ap_ST_fsm_state12;
    static const sc_lv<15> ap_ST_fsm_state13;
    static const sc_lv<15> ap_ST_fsm_state14;
    static const sc_lv<15> ap_ST_fsm_state15;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<64> ap_const_lv64_1;
    static const sc_lv<64> ap_const_lv64_2;
    static const sc_lv<64> ap_const_lv64_3;
    static const sc_lv<64> ap_const_lv64_4;
    static const sc_lv<64> ap_const_lv64_5;
    static const sc_lv<64> ap_const_lv64_6;
    static const sc_lv<64> ap_const_lv64_7;
    static const sc_lv<64> ap_const_lv64_11;
    static const sc_lv<64> ap_const_lv64_10;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<32> ap_const_lv32_18;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<4> ap_const_lv4_8;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<5> ap_const_lv5_10;
    static const sc_lv<5> ap_const_lv5_1;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<56> ap_const_lv56_1;
    static const sc_lv<56> ap_const_lv56_2;
    static const sc_lv<56> ap_const_lv56_3;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_Blowfish_pary_s_address0();
    void thread_Blowfish_pary_s_ce0();
    void thread_Blowfish_sbox_s_address0();
    void thread_Blowfish_sbox_s_address1();
    void thread_Blowfish_sbox_s_ce0();
    void thread_Blowfish_sbox_s_ce1();
    void thread_add_ln281_2_fu_464_p2();
    void thread_add_ln281_fu_436_p2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state11();
    void thread_ap_CS_fsm_state12();
    void thread_ap_CS_fsm_state13();
    void thread_ap_CS_fsm_state14();
    void thread_ap_CS_fsm_state15();
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
    void thread_b_fu_393_p4();
    void thread_d_fu_431_p2();
    void thread_dst_addr_2_reg_659();
    void thread_dst_addr_3_reg_664();
    void thread_dst_addr_4_reg_679();
    void thread_dst_addr_5_reg_684();
    void thread_dst_addr_6_reg_699();
    void thread_dst_addr_7_reg_704();
    void thread_dst_address0();
    void thread_dst_address1();
    void thread_dst_ce0();
    void thread_dst_ce1();
    void thread_dst_d0();
    void thread_dst_d1();
    void thread_dst_we0();
    void thread_dst_we1();
    void thread_grp_fu_292_p2();
    void thread_grp_fu_298_p4();
    void thread_i_6_fu_350_p2();
    void thread_i_fu_315_p2();
    void thread_icmp_ln116_fu_309_p2();
    void thread_icmp_ln224_fu_344_p2();
    void thread_left_fu_326_p5();
    void thread_left_new_fu_496_p2();
    void thread_right_fu_334_p5();
    void thread_src_address0();
    void thread_src_ce0();
    void thread_tmp_9_fu_442_p3();
    void thread_tmp_fu_418_p3();
    void thread_tmp_s_fu_450_p3();
    void thread_trunc_ln225_10_fu_377_p1();
    void thread_trunc_ln225_6_fu_427_p1();
    void thread_trunc_ln225_7_fu_365_p1();
    void thread_trunc_ln225_8_fu_369_p1();
    void thread_trunc_ln225_9_fu_373_p1();
    void thread_trunc_ln225_fu_361_p1();
    void thread_trunc_ln240_1_fu_560_p1();
    void thread_trunc_ln240_2_fu_564_p1();
    void thread_trunc_ln240_3_fu_568_p1();
    void thread_trunc_ln240_4_fu_572_p1();
    void thread_trunc_ln240_5_fu_576_p1();
    void thread_trunc_ln240_fu_556_p1();
    void thread_trunc_ln241_1_fu_546_p1();
    void thread_trunc_ln241_2_fu_480_p1();
    void thread_trunc_ln241_3_fu_484_p1();
    void thread_trunc_ln241_4_fu_488_p1();
    void thread_trunc_ln241_5_fu_492_p1();
    void thread_trunc_ln241_fu_476_p1();
    void thread_xor_ln131_1_fu_508_p2();
    void thread_xor_ln131_fu_502_p2();
    void thread_xor_ln138_fu_550_p2();
    void thread_xor_ln142_fu_613_p2();
    void thread_xor_ln226_fu_470_p2();
    void thread_xor_ln241_1_fu_586_p2();
    void thread_xor_ln241_fu_580_p2();
    void thread_xor_ln272_2_fu_387_p2();
    void thread_xor_ln272_fu_381_p2();
    void thread_xor_ln281_fu_459_p2();
    void thread_zext_ln117_fu_321_p1();
    void thread_zext_ln225_fu_356_p1();
    void thread_zext_ln281_fu_413_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif

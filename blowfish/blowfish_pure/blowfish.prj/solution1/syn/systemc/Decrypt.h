// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _Decrypt_HH_
#define _Decrypt_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct Decrypt : public sc_module {
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
    Decrypt(sc_module_name name);
    SC_HAS_PROCESS(Decrypt);

    ~Decrypt();

    sc_trace_file* mVcdFile;

    sc_signal< sc_lv<15> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<4> > i_fu_311_p2;
    sc_signal< sc_lv<4> > i_reg_630;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<64> > zext_ln150_fu_317_p1;
    sc_signal< sc_lv<64> > zext_ln150_reg_635;
    sc_signal< sc_lv<1> > icmp_ln149_fu_305_p2;
    sc_signal< sc_lv<8> > dst_load_reg_651;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<8> > dst_load_8_reg_656;
    sc_signal< sc_lv<3> > dst_addr_10_reg_661;
    sc_signal< sc_lv<3> > dst_addr_11_reg_666;
    sc_signal< sc_lv<8> > dst_load_9_reg_671;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<8> > dst_load_10_reg_676;
    sc_signal< sc_lv<3> > dst_addr_12_reg_681;
    sc_signal< sc_lv<3> > dst_addr_13_reg_686;
    sc_signal< sc_lv<8> > dst_load_11_reg_691;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<8> > dst_load_12_reg_696;
    sc_signal< sc_lv<3> > dst_addr_14_reg_701;
    sc_signal< sc_lv<3> > dst_addr_15_reg_706;
    sc_signal< sc_lv<32> > left_fu_322_p5;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<32> > right_fu_330_p5;
    sc_signal< sc_lv<5> > i_7_fu_346_p2;
    sc_signal< sc_lv<5> > i_7_reg_724;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<1> > icmp_ln251_fu_340_p2;
    sc_signal< sc_lv<8> > trunc_ln252_fu_363_p1;
    sc_signal< sc_lv<8> > trunc_ln252_reg_739;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_lv<32> > grp_fu_288_p2;
    sc_signal< sc_lv<32> > temp_3_reg_744;
    sc_signal< sc_lv<8> > c_reg_749;
    sc_signal< sc_lv<32> > add_ln281_fu_438_p2;
    sc_signal< sc_lv<32> > add_ln281_reg_764;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_lv<32> > xor_ln253_fu_472_p2;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_lv<8> > trunc_ln267_fu_478_p1;
    sc_signal< sc_lv<8> > trunc_ln267_reg_784;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_lv<8> > trunc_ln2_reg_789;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< sc_lv<8> > trunc_ln5_reg_799;
    sc_signal< sc_logic > ap_CS_fsm_state14;
    sc_signal< sc_lv<8> > xor_ln176_fu_615_p2;
    sc_signal< sc_lv<8> > xor_ln176_reg_804;
    sc_signal< sc_lv<4> > i_0_reg_246;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<32> > temp_reg_257;
    sc_signal< sc_lv<32> > right_new_0_i_reg_267;
    sc_signal< sc_lv<5> > i_0_i_reg_277;
    sc_signal< sc_lv<64> > zext_ln252_fu_358_p1;
    sc_signal< sc_lv<64> > zext_ln281_fu_415_p1;
    sc_signal< sc_lv<64> > tmp_fu_420_p3;
    sc_signal< sc_lv<64> > tmp_s_fu_444_p3;
    sc_signal< sc_lv<64> > tmp_1_fu_452_p3;
    sc_signal< sc_lv<8> > xor_ln172_fu_552_p2;
    sc_signal< sc_lv<8> > grp_fu_294_p4;
    sc_signal< sc_logic > ap_CS_fsm_state15;
    sc_signal< sc_lv<5> > sub_ln252_fu_352_p2;
    sc_signal< sc_lv<16> > trunc_ln252_5_fu_379_p1;
    sc_signal< sc_lv<16> > trunc_ln252_4_fu_375_p1;
    sc_signal< sc_lv<24> > trunc_ln252_3_fu_371_p1;
    sc_signal< sc_lv<24> > trunc_ln252_2_fu_367_p1;
    sc_signal< sc_lv<24> > xor_ln272_3_fu_389_p2;
    sc_signal< sc_lv<16> > xor_ln272_fu_383_p2;
    sc_signal< sc_lv<8> > b_fu_395_p4;
    sc_signal< sc_lv<8> > trunc_ln252_1_fu_429_p1;
    sc_signal< sc_lv<8> > d_fu_433_p2;
    sc_signal< sc_lv<32> > xor_ln281_fu_461_p2;
    sc_signal< sc_lv<32> > add_ln281_3_fu_466_p2;
    sc_signal< sc_lv<16> > trunc_ln267_5_fu_494_p1;
    sc_signal< sc_lv<16> > trunc_ln267_4_fu_490_p1;
    sc_signal< sc_lv<24> > trunc_ln267_3_fu_486_p1;
    sc_signal< sc_lv<24> > trunc_ln267_2_fu_482_p1;
    sc_signal< sc_lv<32> > left_new_fu_498_p2;
    sc_signal< sc_lv<24> > xor_ln166_1_fu_510_p2;
    sc_signal< sc_lv<16> > xor_ln166_fu_504_p2;
    sc_signal< sc_lv<8> > trunc_ln267_1_fu_548_p1;
    sc_signal< sc_lv<16> > trunc_ln266_5_fu_578_p1;
    sc_signal< sc_lv<16> > trunc_ln266_4_fu_574_p1;
    sc_signal< sc_lv<24> > trunc_ln266_3_fu_570_p1;
    sc_signal< sc_lv<24> > trunc_ln266_2_fu_566_p1;
    sc_signal< sc_lv<24> > xor_ln267_1_fu_588_p2;
    sc_signal< sc_lv<16> > xor_ln267_fu_582_p2;
    sc_signal< sc_lv<8> > trunc_ln266_1_fu_562_p1;
    sc_signal< sc_lv<8> > trunc_ln266_fu_558_p1;
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
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<32> ap_const_lv32_18;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<4> ap_const_lv4_8;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<5> ap_const_lv5_10;
    static const sc_lv<5> ap_const_lv5_1;
    static const sc_lv<5> ap_const_lv5_11;
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
    void thread_add_ln281_3_fu_466_p2();
    void thread_add_ln281_fu_438_p2();
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
    void thread_b_fu_395_p4();
    void thread_d_fu_433_p2();
    void thread_dst_addr_10_reg_661();
    void thread_dst_addr_11_reg_666();
    void thread_dst_addr_12_reg_681();
    void thread_dst_addr_13_reg_686();
    void thread_dst_addr_14_reg_701();
    void thread_dst_addr_15_reg_706();
    void thread_dst_address0();
    void thread_dst_address1();
    void thread_dst_ce0();
    void thread_dst_ce1();
    void thread_dst_d0();
    void thread_dst_d1();
    void thread_dst_we0();
    void thread_dst_we1();
    void thread_grp_fu_288_p2();
    void thread_grp_fu_294_p4();
    void thread_i_7_fu_346_p2();
    void thread_i_fu_311_p2();
    void thread_icmp_ln149_fu_305_p2();
    void thread_icmp_ln251_fu_340_p2();
    void thread_left_fu_322_p5();
    void thread_left_new_fu_498_p2();
    void thread_right_fu_330_p5();
    void thread_src_address0();
    void thread_src_ce0();
    void thread_sub_ln252_fu_352_p2();
    void thread_tmp_1_fu_452_p3();
    void thread_tmp_fu_420_p3();
    void thread_tmp_s_fu_444_p3();
    void thread_trunc_ln252_1_fu_429_p1();
    void thread_trunc_ln252_2_fu_367_p1();
    void thread_trunc_ln252_3_fu_371_p1();
    void thread_trunc_ln252_4_fu_375_p1();
    void thread_trunc_ln252_5_fu_379_p1();
    void thread_trunc_ln252_fu_363_p1();
    void thread_trunc_ln266_1_fu_562_p1();
    void thread_trunc_ln266_2_fu_566_p1();
    void thread_trunc_ln266_3_fu_570_p1();
    void thread_trunc_ln266_4_fu_574_p1();
    void thread_trunc_ln266_5_fu_578_p1();
    void thread_trunc_ln266_fu_558_p1();
    void thread_trunc_ln267_1_fu_548_p1();
    void thread_trunc_ln267_2_fu_482_p1();
    void thread_trunc_ln267_3_fu_486_p1();
    void thread_trunc_ln267_4_fu_490_p1();
    void thread_trunc_ln267_5_fu_494_p1();
    void thread_trunc_ln267_fu_478_p1();
    void thread_xor_ln166_1_fu_510_p2();
    void thread_xor_ln166_fu_504_p2();
    void thread_xor_ln172_fu_552_p2();
    void thread_xor_ln176_fu_615_p2();
    void thread_xor_ln253_fu_472_p2();
    void thread_xor_ln267_1_fu_588_p2();
    void thread_xor_ln267_fu_582_p2();
    void thread_xor_ln272_3_fu_389_p2();
    void thread_xor_ln272_fu_383_p2();
    void thread_xor_ln281_fu_461_p2();
    void thread_zext_ln150_fu_317_p1();
    void thread_zext_ln252_fu_358_p1();
    void thread_zext_ln281_fu_415_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif

// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _decrypt_aes_HH_
#define _decrypt_aes_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "aes_decrypt.h"
#include "aes_invMain_roundhbi.h"

namespace ap_rtl {

struct decrypt_aes : public sc_module {
    // Port declarations 8
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<128> > ciphertext_V;
    sc_out< sc_lv<128> > ap_return;


    // Module declarations
    decrypt_aes(sc_module_name name);
    SC_HAS_PROCESS(decrypt_aes);

    ~decrypt_aes();

    sc_trace_file* mVcdFile;

    aes_invMain_roundhbi* aes_input_U;
    aes_invMain_roundhbi* output_U;
    aes_decrypt* grp_aes_decrypt_fu_167;
    sc_signal< sc_lv<8> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<4> > add_ln69_fu_177_p2;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<4> > add_ln70_fu_194_p2;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<5> > i_fu_217_p2;
    sc_signal< sc_lv<5> > i_reg_536;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<8> > sub_ln681_14_fu_305_p2;
    sc_signal< sc_lv<8> > sub_ln681_14_reg_541;
    sc_signal< sc_lv<1> > icmp_ln72_fu_211_p2;
    sc_signal< sc_lv<128> > lshr_ln681_fu_315_p2;
    sc_signal< sc_lv<128> > lshr_ln681_reg_546;
    sc_signal< sc_lv<5> > i_12_fu_351_p2;
    sc_signal< sc_lv<5> > i_12_reg_554;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<4> > trunc_ln79_fu_357_p1;
    sc_signal< sc_lv<4> > trunc_ln79_reg_559;
    sc_signal< sc_lv<1> > icmp_ln78_fu_345_p2;
    sc_signal< sc_lv<128> > p_Result_20_fu_505_p2;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<4> > aes_input_address0;
    sc_signal< sc_logic > aes_input_ce0;
    sc_signal< sc_logic > aes_input_we0;
    sc_signal< sc_lv<8> > aes_input_d0;
    sc_signal< sc_lv<8> > aes_input_q0;
    sc_signal< sc_lv<4> > output_address0;
    sc_signal< sc_logic > output_ce0;
    sc_signal< sc_logic > output_we0;
    sc_signal< sc_lv<8> > output_d0;
    sc_signal< sc_lv<8> > output_q0;
    sc_signal< sc_logic > grp_aes_decrypt_fu_167_ap_start;
    sc_signal< sc_logic > grp_aes_decrypt_fu_167_ap_done;
    sc_signal< sc_logic > grp_aes_decrypt_fu_167_ap_idle;
    sc_signal< sc_logic > grp_aes_decrypt_fu_167_ap_ready;
    sc_signal< sc_lv<4> > grp_aes_decrypt_fu_167_input_r_address0;
    sc_signal< sc_logic > grp_aes_decrypt_fu_167_input_r_ce0;
    sc_signal< sc_lv<4> > grp_aes_decrypt_fu_167_output_r_address0;
    sc_signal< sc_logic > grp_aes_decrypt_fu_167_output_r_ce0;
    sc_signal< sc_logic > grp_aes_decrypt_fu_167_output_r_we0;
    sc_signal< sc_lv<8> > grp_aes_decrypt_fu_167_output_r_d0;
    sc_signal< sc_lv<4> > phi_ln69_reg_110;
    sc_signal< sc_lv<1> > icmp_ln69_fu_188_p2;
    sc_signal< sc_lv<4> > phi_ln70_reg_121;
    sc_signal< sc_lv<1> > icmp_ln70_fu_205_p2;
    sc_signal< sc_lv<5> > i_0_reg_132;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<128> > p_Val2_s_reg_144;
    sc_signal< sc_lv<5> > i1_0_reg_156;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_logic > grp_aes_decrypt_fu_167_ap_start_reg;
    sc_signal< sc_lv<64> > zext_ln69_fu_183_p1;
    sc_signal< sc_lv<64> > zext_ln70_fu_200_p1;
    sc_signal< sc_lv<64> > zext_ln73_fu_340_p1;
    sc_signal< sc_lv<64> > zext_ln79_fu_361_p1;
    sc_signal< sc_lv<8> > trunc_ln73_1_fu_335_p1;
    sc_signal< sc_lv<4> > trunc_ln73_fu_223_p1;
    sc_signal< sc_lv<7> > Lo_assign_fu_227_p3;
    sc_signal< sc_lv<7> > or_ln73_fu_235_p2;
    sc_signal< sc_lv<8> > zext_ln681_fu_247_p1;
    sc_signal< sc_lv<8> > zext_ln681_18_fu_251_p1;
    sc_signal< sc_lv<1> > icmp_ln681_fu_241_p2;
    sc_signal< sc_lv<8> > sub_ln681_fu_264_p2;
    sc_signal< sc_lv<8> > sub_ln681_13_fu_276_p2;
    sc_signal< sc_lv<128> > tmp_fu_255_p4;
    sc_signal< sc_lv<8> > xor_ln681_fu_270_p2;
    sc_signal< sc_lv<8> > select_ln681_fu_282_p3;
    sc_signal< sc_lv<8> > select_ln681_14_fu_297_p3;
    sc_signal< sc_lv<128> > select_ln681_13_fu_290_p3;
    sc_signal< sc_lv<128> > zext_ln681_19_fu_311_p1;
    sc_signal< sc_lv<128> > zext_ln681_20_fu_321_p1;
    sc_signal< sc_lv<128> > lshr_ln681_8_fu_324_p2;
    sc_signal< sc_lv<128> > p_Result_s_fu_330_p2;
    sc_signal< sc_lv<7> > Lo_assign_s_fu_366_p3;
    sc_signal< sc_lv<7> > or_ln79_fu_373_p2;
    sc_signal< sc_lv<8> > zext_ln388_fu_389_p1;
    sc_signal< sc_lv<1> > icmp_ln388_fu_383_p2;
    sc_signal< sc_lv<8> > zext_ln388_23_fu_393_p1;
    sc_signal< sc_lv<8> > xor_ln388_fu_397_p2;
    sc_signal< sc_lv<8> > select_ln388_fu_403_p3;
    sc_signal< sc_lv<8> > select_ln388_19_fu_419_p3;
    sc_signal< sc_lv<8> > select_ln388_18_fu_411_p3;
    sc_signal< sc_lv<8> > xor_ln388_13_fu_427_p2;
    sc_signal< sc_lv<128> > tmp_V_fu_379_p1;
    sc_signal< sc_lv<128> > zext_ln388_24_fu_433_p1;
    sc_signal< sc_lv<128> > shl_ln388_fu_445_p2;
    sc_signal< sc_lv<128> > tmp_22_fu_451_p4;
    sc_signal< sc_lv<128> > zext_ln388_25_fu_437_p1;
    sc_signal< sc_lv<128> > zext_ln388_26_fu_441_p1;
    sc_signal< sc_lv<128> > shl_ln388_8_fu_469_p2;
    sc_signal< sc_lv<128> > lshr_ln388_fu_475_p2;
    sc_signal< sc_lv<128> > and_ln388_fu_481_p2;
    sc_signal< sc_lv<128> > xor_ln388_14_fu_487_p2;
    sc_signal< sc_lv<128> > select_ln388_20_fu_461_p3;
    sc_signal< sc_lv<128> > and_ln388_13_fu_493_p2;
    sc_signal< sc_lv<128> > and_ln388_14_fu_499_p2;
    sc_signal< sc_lv<128> > ap_return_preg;
    sc_signal< sc_lv<8> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<8> ap_ST_fsm_state1;
    static const sc_lv<8> ap_ST_fsm_state2;
    static const sc_lv<8> ap_ST_fsm_state3;
    static const sc_lv<8> ap_ST_fsm_state4;
    static const sc_lv<8> ap_ST_fsm_state5;
    static const sc_lv<8> ap_ST_fsm_state6;
    static const sc_lv<8> ap_ST_fsm_state7;
    static const sc_lv<8> ap_ST_fsm_state8;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<4> ap_const_lv4_F;
    static const sc_lv<5> ap_const_lv5_10;
    static const sc_lv<5> ap_const_lv5_1;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<7> ap_const_lv7_7;
    static const sc_lv<32> ap_const_lv32_7F;
    static const sc_lv<8> ap_const_lv8_7F;
    static const sc_lv<128> ap_const_lv128_lc_2;
    static const sc_lv<128> ap_const_lv128_lc_1;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_Lo_assign_fu_227_p3();
    void thread_Lo_assign_s_fu_366_p3();
    void thread_add_ln69_fu_177_p2();
    void thread_add_ln70_fu_194_p2();
    void thread_aes_input_address0();
    void thread_aes_input_ce0();
    void thread_aes_input_d0();
    void thread_aes_input_we0();
    void thread_and_ln388_13_fu_493_p2();
    void thread_and_ln388_14_fu_499_p2();
    void thread_and_ln388_fu_481_p2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_return();
    void thread_grp_aes_decrypt_fu_167_ap_start();
    void thread_i_12_fu_351_p2();
    void thread_i_fu_217_p2();
    void thread_icmp_ln388_fu_383_p2();
    void thread_icmp_ln681_fu_241_p2();
    void thread_icmp_ln69_fu_188_p2();
    void thread_icmp_ln70_fu_205_p2();
    void thread_icmp_ln72_fu_211_p2();
    void thread_icmp_ln78_fu_345_p2();
    void thread_lshr_ln388_fu_475_p2();
    void thread_lshr_ln681_8_fu_324_p2();
    void thread_lshr_ln681_fu_315_p2();
    void thread_or_ln73_fu_235_p2();
    void thread_or_ln79_fu_373_p2();
    void thread_output_address0();
    void thread_output_ce0();
    void thread_output_d0();
    void thread_output_we0();
    void thread_p_Result_20_fu_505_p2();
    void thread_p_Result_s_fu_330_p2();
    void thread_select_ln388_18_fu_411_p3();
    void thread_select_ln388_19_fu_419_p3();
    void thread_select_ln388_20_fu_461_p3();
    void thread_select_ln388_fu_403_p3();
    void thread_select_ln681_13_fu_290_p3();
    void thread_select_ln681_14_fu_297_p3();
    void thread_select_ln681_fu_282_p3();
    void thread_shl_ln388_8_fu_469_p2();
    void thread_shl_ln388_fu_445_p2();
    void thread_sub_ln681_13_fu_276_p2();
    void thread_sub_ln681_14_fu_305_p2();
    void thread_sub_ln681_fu_264_p2();
    void thread_tmp_22_fu_451_p4();
    void thread_tmp_V_fu_379_p1();
    void thread_tmp_fu_255_p4();
    void thread_trunc_ln73_1_fu_335_p1();
    void thread_trunc_ln73_fu_223_p1();
    void thread_trunc_ln79_fu_357_p1();
    void thread_xor_ln388_13_fu_427_p2();
    void thread_xor_ln388_14_fu_487_p2();
    void thread_xor_ln388_fu_397_p2();
    void thread_xor_ln681_fu_270_p2();
    void thread_zext_ln388_23_fu_393_p1();
    void thread_zext_ln388_24_fu_433_p1();
    void thread_zext_ln388_25_fu_437_p1();
    void thread_zext_ln388_26_fu_441_p1();
    void thread_zext_ln388_fu_389_p1();
    void thread_zext_ln681_18_fu_251_p1();
    void thread_zext_ln681_19_fu_311_p1();
    void thread_zext_ln681_20_fu_321_p1();
    void thread_zext_ln681_fu_247_p1();
    void thread_zext_ln69_fu_183_p1();
    void thread_zext_ln70_fu_200_p1();
    void thread_zext_ln73_fu_340_p1();
    void thread_zext_ln79_fu_361_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif

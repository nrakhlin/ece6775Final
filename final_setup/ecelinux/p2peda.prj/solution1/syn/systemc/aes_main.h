// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _aes_main_HH_
#define _aes_main_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "aes_round.h"
#include "createRoundKey.h"
#include "aes_main_expandedbkb.h"
#include "aes_round_sbox.h"
#include "aes_main_roundKey.h"

namespace ap_rtl {

struct aes_main : public sc_module {
    // Port declarations 16
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
    sc_out< sc_lv<4> > state_address1;
    sc_out< sc_logic > state_ce1;
    sc_out< sc_logic > state_we1;
    sc_out< sc_lv<8> > state_d1;
    sc_in< sc_lv<8> > state_q1;


    // Module declarations
    aes_main(sc_module_name name);
    SC_HAS_PROCESS(aes_main);

    ~aes_main();

    sc_trace_file* mVcdFile;

    aes_main_expandedbkb* expandedKey_U;
    aes_round_sbox* sbox_U;
    aes_main_roundKey* roundKey_U;
    aes_round* grp_aes_round_fu_289;
    createRoundKey* grp_createRoundKey_fu_298;
    sc_signal< sc_lv<23> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > expandedKey_ce0;
    sc_signal< sc_lv<8> > expandedKey_q0;
    sc_signal< sc_lv<8> > sbox_address0;
    sc_signal< sc_logic > sbox_ce0;
    sc_signal< sc_lv<8> > sbox_q0;
    sc_signal< sc_lv<8> > reg_309;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< sc_logic > ap_CS_fsm_state18;
    sc_signal< sc_lv<8> > reg_315;
    sc_signal< sc_logic > ap_CS_fsm_state14;
    sc_signal< sc_lv<5> > i_8_fu_327_p2;
    sc_signal< sc_lv<5> > i_8_reg_421;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<4> > state_addr_reg_426;
    sc_signal< sc_lv<1> > icmp_ln225_fu_321_p2;
    sc_signal< sc_lv<9> > zext_ln27_fu_360_p1;
    sc_signal< sc_lv<9> > zext_ln27_reg_439;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<1> > icmp_ln25_fu_346_p2;
    sc_signal< sc_lv<4> > i_fu_365_p2;
    sc_signal< sc_lv<4> > i_reg_444;
    sc_signal< sc_lv<5> > i_9_fu_377_p2;
    sc_signal< sc_lv<5> > i_9_reg_452;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_lv<4> > state_addr_28_reg_457;
    sc_signal< sc_lv<1> > icmp_ln174_fu_371_p2;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_lv<4> > state_addr_18_reg_480;
    sc_signal< sc_lv<8> > state_load_16_reg_490;
    sc_signal< sc_logic > ap_CS_fsm_state15;
    sc_signal< sc_lv<8> > state_load_19_reg_517;
    sc_signal< sc_logic > ap_CS_fsm_state16;
    sc_signal< sc_lv<8> > state_load_20_reg_522;
    sc_signal< sc_lv<8> > tmp_10_reg_539;
    sc_signal< sc_logic > ap_CS_fsm_state17;
    sc_signal< sc_lv<4> > state_addr_27_reg_549;
    sc_signal< sc_lv<5> > i_10_fu_399_p2;
    sc_signal< sc_lv<5> > i_10_reg_557;
    sc_signal< sc_logic > ap_CS_fsm_state22;
    sc_signal< sc_lv<4> > state_addr_29_reg_562;
    sc_signal< sc_lv<1> > icmp_ln225_1_fu_393_p2;
    sc_signal< sc_lv<4> > roundKey_address0;
    sc_signal< sc_logic > roundKey_ce0;
    sc_signal< sc_logic > roundKey_we0;
    sc_signal< sc_lv<8> > roundKey_q0;
    sc_signal< sc_logic > grp_aes_round_fu_289_ap_start;
    sc_signal< sc_logic > grp_aes_round_fu_289_ap_done;
    sc_signal< sc_logic > grp_aes_round_fu_289_ap_idle;
    sc_signal< sc_logic > grp_aes_round_fu_289_ap_ready;
    sc_signal< sc_lv<4> > grp_aes_round_fu_289_state_address0;
    sc_signal< sc_logic > grp_aes_round_fu_289_state_ce0;
    sc_signal< sc_logic > grp_aes_round_fu_289_state_we0;
    sc_signal< sc_lv<8> > grp_aes_round_fu_289_state_d0;
    sc_signal< sc_lv<4> > grp_aes_round_fu_289_state_address1;
    sc_signal< sc_logic > grp_aes_round_fu_289_state_ce1;
    sc_signal< sc_logic > grp_aes_round_fu_289_state_we1;
    sc_signal< sc_lv<8> > grp_aes_round_fu_289_state_d1;
    sc_signal< sc_lv<4> > grp_aes_round_fu_289_roundKey_address0;
    sc_signal< sc_logic > grp_aes_round_fu_289_roundKey_ce0;
    sc_signal< sc_logic > grp_createRoundKey_fu_298_ap_start;
    sc_signal< sc_logic > grp_createRoundKey_fu_298_ap_done;
    sc_signal< sc_logic > grp_createRoundKey_fu_298_ap_idle;
    sc_signal< sc_logic > grp_createRoundKey_fu_298_ap_ready;
    sc_signal< sc_lv<8> > grp_createRoundKey_fu_298_expandedKey_address0;
    sc_signal< sc_logic > grp_createRoundKey_fu_298_expandedKey_ce0;
    sc_signal< sc_lv<4> > grp_createRoundKey_fu_298_roundKey_address0;
    sc_signal< sc_logic > grp_createRoundKey_fu_298_roundKey_ce0;
    sc_signal< sc_logic > grp_createRoundKey_fu_298_roundKey_we0;
    sc_signal< sc_lv<8> > grp_createRoundKey_fu_298_roundKey_d0;
    sc_signal< sc_lv<9> > grp_createRoundKey_fu_298_ptr;
    sc_signal< sc_lv<5> > i_0_i_reg_245;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<4> > i_0_reg_256;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<5> > i_0_i1_reg_267;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_lv<5> > i_0_i7_reg_278;
    sc_signal< sc_logic > ap_CS_fsm_state21;
    sc_signal< sc_logic > ap_CS_fsm_state23;
    sc_signal< sc_logic > grp_aes_round_fu_289_ap_start_reg;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_logic > grp_createRoundKey_fu_298_ap_start_reg;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<64> > zext_ln226_fu_333_p1;
    sc_signal< sc_lv<64> > zext_ln175_fu_383_p1;
    sc_signal< sc_lv<64> > zext_ln43_fu_388_p1;
    sc_signal< sc_lv<64> > zext_ln226_1_fu_405_p1;
    sc_signal< sc_lv<8> > xor_ln226_fu_339_p2;
    sc_signal< sc_logic > ap_CS_fsm_state19;
    sc_signal< sc_logic > ap_CS_fsm_state20;
    sc_signal< sc_lv<8> > xor_ln226_1_fu_411_p2;
    sc_signal< sc_lv<8> > shl_ln_fu_352_p3;
    sc_signal< sc_lv<23> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<23> ap_ST_fsm_state1;
    static const sc_lv<23> ap_ST_fsm_state2;
    static const sc_lv<23> ap_ST_fsm_state3;
    static const sc_lv<23> ap_ST_fsm_state4;
    static const sc_lv<23> ap_ST_fsm_state5;
    static const sc_lv<23> ap_ST_fsm_state6;
    static const sc_lv<23> ap_ST_fsm_state7;
    static const sc_lv<23> ap_ST_fsm_state8;
    static const sc_lv<23> ap_ST_fsm_state9;
    static const sc_lv<23> ap_ST_fsm_state10;
    static const sc_lv<23> ap_ST_fsm_state11;
    static const sc_lv<23> ap_ST_fsm_state12;
    static const sc_lv<23> ap_ST_fsm_state13;
    static const sc_lv<23> ap_ST_fsm_state14;
    static const sc_lv<23> ap_ST_fsm_state15;
    static const sc_lv<23> ap_ST_fsm_state16;
    static const sc_lv<23> ap_ST_fsm_state17;
    static const sc_lv<23> ap_ST_fsm_state18;
    static const sc_lv<23> ap_ST_fsm_state19;
    static const sc_lv<23> ap_ST_fsm_state20;
    static const sc_lv<23> ap_ST_fsm_state21;
    static const sc_lv<23> ap_ST_fsm_state22;
    static const sc_lv<23> ap_ST_fsm_state23;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<32> ap_const_lv32_11;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_15;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<32> ap_const_lv32_14;
    static const sc_lv<32> ap_const_lv32_16;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<9> ap_const_lv9_0;
    static const sc_lv<9> ap_const_lv9_A0;
    static const sc_lv<64> ap_const_lv64_4;
    static const sc_lv<64> ap_const_lv64_5;
    static const sc_lv<64> ap_const_lv64_6;
    static const sc_lv<64> ap_const_lv64_7;
    static const sc_lv<64> ap_const_lv64_8;
    static const sc_lv<64> ap_const_lv64_9;
    static const sc_lv<64> ap_const_lv64_A;
    static const sc_lv<64> ap_const_lv64_B;
    static const sc_lv<64> ap_const_lv64_C;
    static const sc_lv<64> ap_const_lv64_D;
    static const sc_lv<64> ap_const_lv64_E;
    static const sc_lv<64> ap_const_lv64_F;
    static const sc_lv<32> ap_const_lv32_12;
    static const sc_lv<32> ap_const_lv32_13;
    static const sc_lv<5> ap_const_lv5_10;
    static const sc_lv<5> ap_const_lv5_1;
    static const sc_lv<4> ap_const_lv4_A;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<8> ap_const_lv8_0;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state11();
    void thread_ap_CS_fsm_state12();
    void thread_ap_CS_fsm_state13();
    void thread_ap_CS_fsm_state14();
    void thread_ap_CS_fsm_state15();
    void thread_ap_CS_fsm_state16();
    void thread_ap_CS_fsm_state17();
    void thread_ap_CS_fsm_state18();
    void thread_ap_CS_fsm_state19();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state20();
    void thread_ap_CS_fsm_state21();
    void thread_ap_CS_fsm_state22();
    void thread_ap_CS_fsm_state23();
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
    void thread_expandedKey_ce0();
    void thread_grp_aes_round_fu_289_ap_start();
    void thread_grp_createRoundKey_fu_298_ap_start();
    void thread_grp_createRoundKey_fu_298_ptr();
    void thread_i_10_fu_399_p2();
    void thread_i_8_fu_327_p2();
    void thread_i_9_fu_377_p2();
    void thread_i_fu_365_p2();
    void thread_icmp_ln174_fu_371_p2();
    void thread_icmp_ln225_1_fu_393_p2();
    void thread_icmp_ln225_fu_321_p2();
    void thread_icmp_ln25_fu_346_p2();
    void thread_roundKey_address0();
    void thread_roundKey_ce0();
    void thread_roundKey_we0();
    void thread_sbox_address0();
    void thread_sbox_ce0();
    void thread_shl_ln_fu_352_p3();
    void thread_state_addr_18_reg_480();
    void thread_state_addr_27_reg_549();
    void thread_state_address0();
    void thread_state_address1();
    void thread_state_ce0();
    void thread_state_ce1();
    void thread_state_d0();
    void thread_state_d1();
    void thread_state_we0();
    void thread_state_we1();
    void thread_xor_ln226_1_fu_411_p2();
    void thread_xor_ln226_fu_339_p2();
    void thread_zext_ln175_fu_383_p1();
    void thread_zext_ln226_1_fu_405_p1();
    void thread_zext_ln226_fu_333_p1();
    void thread_zext_ln27_fu_360_p1();
    void thread_zext_ln43_fu_388_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif

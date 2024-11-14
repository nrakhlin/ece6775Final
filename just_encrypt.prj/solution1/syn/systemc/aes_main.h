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
#include "core_sbox.h"
#include "aes_main_roundKey.h"

namespace ap_rtl {

struct aes_main : public sc_module {
    // Port declarations 14
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
    sc_out< sc_lv<8> > expandedKey_address0;
    sc_out< sc_logic > expandedKey_ce0;
    sc_in< sc_lv<8> > expandedKey_q0;


    // Module declarations
    aes_main(sc_module_name name);
    SC_HAS_PROCESS(aes_main);

    ~aes_main();

    sc_trace_file* mVcdFile;

    core_sbox* sbox_U;
    aes_main_roundKey* roundKey_U;
    aes_round* grp_aes_round_fu_219;
    createRoundKey* grp_createRoundKey_fu_228;
    sc_signal< sc_lv<18> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<8> > sbox_address0;
    sc_signal< sc_logic > sbox_ce0;
    sc_signal< sc_lv<8> > sbox_q0;
    sc_signal< sc_lv<5> > i_7_fu_252_p2;
    sc_signal< sc_lv<5> > i_7_reg_373;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<4> > state_addr_reg_378;
    sc_signal< sc_lv<1> > icmp_ln228_fu_246_p2;
    sc_signal< sc_lv<10> > zext_ln335_fu_278_p1;
    sc_signal< sc_lv<10> > zext_ln335_reg_391;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<1> > icmp_ln333_fu_264_p2;
    sc_signal< sc_lv<4> > i_fu_283_p2;
    sc_signal< sc_lv<4> > i_reg_396;
    sc_signal< sc_lv<5> > i_8_fu_295_p2;
    sc_signal< sc_lv<5> > i_8_reg_404;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_lv<4> > state_addr_9_reg_409;
    sc_signal< sc_lv<1> > icmp_ln183_fu_289_p2;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_lv<3> > k_fu_317_p2;
    sc_signal< sc_lv<3> > k_reg_432;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< sc_lv<8> > tmp_reg_437;
    sc_signal< sc_logic > ap_CS_fsm_state14;
    sc_signal< sc_lv<4> > sext_ln202_fu_323_p1;
    sc_signal< sc_lv<4> > sext_ln202_reg_442;
    sc_signal< sc_logic > ap_CS_fsm_state15;
    sc_signal< sc_lv<3> > j_fu_333_p2;
    sc_signal< sc_lv<3> > j_reg_450;
    sc_signal< sc_lv<1> > icmp_ln202_fu_327_p2;
    sc_signal< sc_lv<5> > i_9_fu_358_p2;
    sc_signal< sc_lv<5> > i_9_reg_463;
    sc_signal< sc_logic > ap_CS_fsm_state17;
    sc_signal< sc_lv<4> > state_addr_10_reg_468;
    sc_signal< sc_lv<1> > icmp_ln228_1_fu_352_p2;
    sc_signal< sc_lv<4> > roundKey_address0;
    sc_signal< sc_logic > roundKey_ce0;
    sc_signal< sc_logic > roundKey_we0;
    sc_signal< sc_lv<8> > roundKey_q0;
    sc_signal< sc_logic > grp_aes_round_fu_219_ap_start;
    sc_signal< sc_logic > grp_aes_round_fu_219_ap_done;
    sc_signal< sc_logic > grp_aes_round_fu_219_ap_idle;
    sc_signal< sc_logic > grp_aes_round_fu_219_ap_ready;
    sc_signal< sc_lv<4> > grp_aes_round_fu_219_state_address0;
    sc_signal< sc_logic > grp_aes_round_fu_219_state_ce0;
    sc_signal< sc_logic > grp_aes_round_fu_219_state_we0;
    sc_signal< sc_lv<8> > grp_aes_round_fu_219_state_d0;
    sc_signal< sc_lv<4> > grp_aes_round_fu_219_roundKey_address0;
    sc_signal< sc_logic > grp_aes_round_fu_219_roundKey_ce0;
    sc_signal< sc_logic > grp_createRoundKey_fu_228_ap_start;
    sc_signal< sc_logic > grp_createRoundKey_fu_228_ap_done;
    sc_signal< sc_logic > grp_createRoundKey_fu_228_ap_idle;
    sc_signal< sc_logic > grp_createRoundKey_fu_228_ap_ready;
    sc_signal< sc_lv<8> > grp_createRoundKey_fu_228_expandedKey_address0;
    sc_signal< sc_logic > grp_createRoundKey_fu_228_expandedKey_ce0;
    sc_signal< sc_lv<4> > grp_createRoundKey_fu_228_roundKey_address0;
    sc_signal< sc_logic > grp_createRoundKey_fu_228_roundKey_ce0;
    sc_signal< sc_logic > grp_createRoundKey_fu_228_roundKey_we0;
    sc_signal< sc_lv<8> > grp_createRoundKey_fu_228_roundKey_d0;
    sc_signal< sc_lv<10> > grp_createRoundKey_fu_228_ptr;
    sc_signal< sc_lv<5> > i_0_i_reg_153;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<4> > i_0_reg_164;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<5> > i_0_i2_reg_175;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_lv<3> > k_0_i_reg_186;
    sc_signal< sc_lv<3> > j_0_i_reg_197;
    sc_signal< sc_logic > ap_CS_fsm_state16;
    sc_signal< sc_lv<5> > i_0_i8_reg_208;
    sc_signal< sc_logic > ap_CS_fsm_state18;
    sc_signal< sc_lv<1> > icmp_ln199_fu_311_p2;
    sc_signal< sc_logic > grp_aes_round_fu_219_ap_start_reg;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_logic > grp_createRoundKey_fu_228_ap_start_reg;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<64> > zext_ln229_fu_258_p1;
    sc_signal< sc_lv<64> > zext_ln184_fu_301_p1;
    sc_signal< sc_lv<64> > zext_ln71_fu_306_p1;
    sc_signal< sc_lv<64> > zext_ln203_fu_343_p1;
    sc_signal< sc_lv<64> > zext_ln203_2_fu_348_p1;
    sc_signal< sc_lv<64> > zext_ln229_1_fu_364_p1;
    sc_signal< sc_lv<8> > grp_fu_239_p2;
    sc_signal< sc_lv<8> > shl_ln_fu_270_p3;
    sc_signal< sc_lv<4> > sext_ln203_fu_339_p1;
    sc_signal< sc_lv<18> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<18> ap_ST_fsm_state1;
    static const sc_lv<18> ap_ST_fsm_state2;
    static const sc_lv<18> ap_ST_fsm_state3;
    static const sc_lv<18> ap_ST_fsm_state4;
    static const sc_lv<18> ap_ST_fsm_state5;
    static const sc_lv<18> ap_ST_fsm_state6;
    static const sc_lv<18> ap_ST_fsm_state7;
    static const sc_lv<18> ap_ST_fsm_state8;
    static const sc_lv<18> ap_ST_fsm_state9;
    static const sc_lv<18> ap_ST_fsm_state10;
    static const sc_lv<18> ap_ST_fsm_state11;
    static const sc_lv<18> ap_ST_fsm_state12;
    static const sc_lv<18> ap_ST_fsm_state13;
    static const sc_lv<18> ap_ST_fsm_state14;
    static const sc_lv<18> ap_ST_fsm_state15;
    static const sc_lv<18> ap_ST_fsm_state16;
    static const sc_lv<18> ap_ST_fsm_state17;
    static const sc_lv<18> ap_ST_fsm_state18;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<3> ap_const_lv3_4;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<32> ap_const_lv32_11;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<10> ap_const_lv10_0;
    static const sc_lv<10> ap_const_lv10_A0;
    static const sc_lv<64> ap_const_lv64_C;
    static const sc_lv<64> ap_const_lv64_F;
    static const sc_lv<5> ap_const_lv5_10;
    static const sc_lv<5> ap_const_lv5_1;
    static const sc_lv<4> ap_const_lv4_A;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<3> ap_const_lv3_7;
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
    void thread_expandedKey_address0();
    void thread_expandedKey_ce0();
    void thread_grp_aes_round_fu_219_ap_start();
    void thread_grp_createRoundKey_fu_228_ap_start();
    void thread_grp_createRoundKey_fu_228_ptr();
    void thread_grp_fu_239_p2();
    void thread_i_7_fu_252_p2();
    void thread_i_8_fu_295_p2();
    void thread_i_9_fu_358_p2();
    void thread_i_fu_283_p2();
    void thread_icmp_ln183_fu_289_p2();
    void thread_icmp_ln199_fu_311_p2();
    void thread_icmp_ln202_fu_327_p2();
    void thread_icmp_ln228_1_fu_352_p2();
    void thread_icmp_ln228_fu_246_p2();
    void thread_icmp_ln333_fu_264_p2();
    void thread_j_fu_333_p2();
    void thread_k_fu_317_p2();
    void thread_roundKey_address0();
    void thread_roundKey_ce0();
    void thread_roundKey_we0();
    void thread_sbox_address0();
    void thread_sbox_ce0();
    void thread_sext_ln202_fu_323_p1();
    void thread_sext_ln203_fu_339_p1();
    void thread_shl_ln_fu_270_p3();
    void thread_state_address0();
    void thread_state_ce0();
    void thread_state_d0();
    void thread_state_we0();
    void thread_zext_ln184_fu_301_p1();
    void thread_zext_ln203_2_fu_348_p1();
    void thread_zext_ln203_fu_343_p1();
    void thread_zext_ln229_1_fu_364_p1();
    void thread_zext_ln229_fu_258_p1();
    void thread_zext_ln335_fu_278_p1();
    void thread_zext_ln71_fu_306_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
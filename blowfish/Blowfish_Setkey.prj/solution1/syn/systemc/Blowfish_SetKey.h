// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _Blowfish_SetKey_HH_
#define _Blowfish_SetKey_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "Encrypt_SetKey.h"
#include "Blowfish_SetKey_udEe.h"
#include "Blowfish_SetKey_ibkb.h"
#include "Blowfish_SetKey_icud.h"

namespace ap_rtl {

struct Blowfish_SetKey : public sc_module {
    // Port declarations 30
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<6> > key_address0;
    sc_out< sc_logic > key_ce0;
    sc_in< sc_lv<8> > key_q0;
    sc_in< sc_lv<64> > key_size;
    sc_out< sc_lv<5> > P_address0;
    sc_out< sc_logic > P_ce0;
    sc_out< sc_logic > P_we0;
    sc_out< sc_lv<32> > P_d0;
    sc_in< sc_lv<32> > P_q0;
    sc_out< sc_lv<5> > P_address1;
    sc_out< sc_logic > P_ce1;
    sc_out< sc_logic > P_we1;
    sc_out< sc_lv<32> > P_d1;
    sc_in< sc_lv<32> > P_q1;
    sc_out< sc_lv<10> > S_address0;
    sc_out< sc_logic > S_ce0;
    sc_out< sc_logic > S_we0;
    sc_out< sc_lv<32> > S_d0;
    sc_in< sc_lv<32> > S_q0;
    sc_out< sc_lv<10> > S_address1;
    sc_out< sc_logic > S_ce1;
    sc_out< sc_logic > S_we1;
    sc_out< sc_lv<32> > S_d1;
    sc_in< sc_lv<32> > S_q1;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    Blowfish_SetKey(sc_module_name name);
    SC_HAS_PROCESS(Blowfish_SetKey);

    ~Blowfish_SetKey();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    Blowfish_SetKey_ibkb* initial_parray_U;
    Blowfish_SetKey_icud* initial_sbox_U;
    Encrypt_SetKey* grp_Encrypt_SetKey_fu_336;
    Blowfish_SetKey_udEe<1,68,64,64,64>* Blowfish_SetKey_udEe_U5;
    sc_signal< sc_lv<83> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<5> > initial_parray_address0;
    sc_signal< sc_logic > initial_parray_ce0;
    sc_signal< sc_lv<32> > initial_parray_q0;
    sc_signal< sc_lv<10> > initial_sbox_address0;
    sc_signal< sc_logic > initial_sbox_ce0;
    sc_signal< sc_lv<32> > initial_sbox_q0;
    sc_signal< sc_lv<32> > reg_356;
    sc_signal< sc_logic > ap_CS_fsm_state78;
    sc_signal< sc_logic > grp_Encrypt_SetKey_fu_336_ap_ready;
    sc_signal< sc_logic > grp_Encrypt_SetKey_fu_336_ap_done;
    sc_signal< sc_logic > ap_CS_fsm_state82;
    sc_signal< sc_lv<32> > reg_363;
    sc_signal< sc_lv<5> > i_fu_376_p2;
    sc_signal< sc_lv<5> > i_reg_647;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<64> > zext_ln110_fu_382_p1;
    sc_signal< sc_lv<64> > zext_ln110_reg_652;
    sc_signal< sc_lv<1> > icmp_ln109_fu_370_p2;
    sc_signal< sc_lv<3> > i_1_fu_393_p2;
    sc_signal< sc_lv<3> > i_1_reg_665;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<12> > zext_ln115_fu_407_p1;
    sc_signal< sc_lv<12> > zext_ln115_reg_670;
    sc_signal< sc_lv<1> > icmp_ln114_fu_387_p2;
    sc_signal< sc_lv<9> > j_fu_422_p2;
    sc_signal< sc_lv<9> > j_reg_685;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<64> > zext_ln116_1_fu_437_p1;
    sc_signal< sc_lv<64> > zext_ln116_1_reg_690;
    sc_signal< sc_lv<1> > icmp_ln115_fu_416_p2;
    sc_signal< sc_lv<5> > i_3_fu_448_p2;
    sc_signal< sc_lv<5> > i_3_reg_703;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<3> > j_1_fu_460_p2;
    sc_signal< sc_lv<3> > j_1_reg_711;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<1> > icmp_ln125_fu_454_p2;
    sc_signal< sc_lv<5> > P_addr_5_reg_726;
    sc_signal< sc_lv<32> > data_fu_490_p3;
    sc_signal< sc_lv<32> > data_reg_731;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_lv<5> > i_2_fu_542_p2;
    sc_signal< sc_logic > ap_CS_fsm_state79;
    sc_signal< sc_lv<3> > i_4_fu_554_p2;
    sc_signal< sc_lv<3> > i_4_reg_761;
    sc_signal< sc_logic > ap_CS_fsm_state80;
    sc_signal< sc_lv<12> > zext_ln143_fu_568_p1;
    sc_signal< sc_lv<12> > zext_ln143_reg_766;
    sc_signal< sc_lv<1> > icmp_ln142_fu_548_p2;
    sc_signal< sc_logic > ap_CS_fsm_state81;
    sc_signal< sc_lv<1> > tmp_fu_572_p3;
    sc_signal< sc_lv<12> > add_ln145_fu_592_p2;
    sc_signal< sc_lv<12> > add_ln145_reg_784;
    sc_signal< sc_lv<8> > trunc_ln143_fu_597_p1;
    sc_signal< sc_lv<8> > trunc_ln143_reg_789;
    sc_signal< sc_lv<9> > j_2_fu_601_p2;
    sc_signal< sc_lv<9> > j_2_reg_794;
    sc_signal< sc_logic > grp_Encrypt_SetKey_fu_336_ap_start;
    sc_signal< sc_logic > grp_Encrypt_SetKey_fu_336_ap_idle;
    sc_signal< sc_lv<32> > grp_Encrypt_SetKey_fu_336_left_read;
    sc_signal< sc_lv<32> > grp_Encrypt_SetKey_fu_336_right_read;
    sc_signal< sc_lv<5> > grp_Encrypt_SetKey_fu_336_P_address0;
    sc_signal< sc_logic > grp_Encrypt_SetKey_fu_336_P_ce0;
    sc_signal< sc_lv<5> > grp_Encrypt_SetKey_fu_336_P_address1;
    sc_signal< sc_logic > grp_Encrypt_SetKey_fu_336_P_ce1;
    sc_signal< sc_lv<10> > grp_Encrypt_SetKey_fu_336_S_address0;
    sc_signal< sc_logic > grp_Encrypt_SetKey_fu_336_S_ce0;
    sc_signal< sc_lv<10> > grp_Encrypt_SetKey_fu_336_S_address1;
    sc_signal< sc_logic > grp_Encrypt_SetKey_fu_336_S_ce1;
    sc_signal< sc_lv<32> > grp_Encrypt_SetKey_fu_336_ap_return_0;
    sc_signal< sc_lv<32> > grp_Encrypt_SetKey_fu_336_ap_return_1;
    sc_signal< sc_lv<5> > i_0_reg_209;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<3> > i1_0_reg_220;
    sc_signal< sc_lv<9> > j_0_reg_231;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<5> > i2_0_reg_242;
    sc_signal< sc_logic > ap_CS_fsm_state76;
    sc_signal< sc_lv<32> > data_0_reg_254;
    sc_signal< sc_logic > ap_CS_fsm_state75;
    sc_signal< sc_lv<1> > icmp_ln123_fu_442_p2;
    sc_signal< sc_lv<3> > j3_0_reg_266;
    sc_signal< sc_lv<32> > right_0_reg_277;
    sc_signal< sc_lv<32> > left_0_reg_289;
    sc_signal< sc_lv<5> > i4_0_reg_301;
    sc_signal< sc_lv<3> > i5_0_reg_313;
    sc_signal< sc_logic > ap_CS_fsm_state77;
    sc_signal< sc_lv<1> > icmp_ln135_fu_510_p2;
    sc_signal< sc_lv<9> > j6_0_reg_325;
    sc_signal< sc_logic > ap_CS_fsm_state83;
    sc_signal< sc_logic > grp_Encrypt_SetKey_fu_336_ap_start_reg;
    sc_signal< sc_lv<64> > zext_ln129_fu_481_p1;
    sc_signal< sc_lv<64> > zext_ln137_fu_526_p1;
    sc_signal< sc_lv<64> > zext_ln138_fu_537_p1;
    sc_signal< sc_lv<64> > zext_ln145_1_fu_617_p1;
    sc_signal< sc_lv<64> > zext_ln146_fu_634_p1;
    sc_signal< sc_lv<64> > keyIndex_1_fu_76;
    sc_signal< sc_lv<64> > grp_fu_476_p2;
    sc_signal< sc_lv<32> > left_1_fu_80;
    sc_signal< sc_lv<32> > right_1_fu_84;
    sc_signal< sc_lv<32> > xor_ln129_fu_503_p2;
    sc_signal< sc_lv<11> > tmp_3_fu_399_p3;
    sc_signal< sc_lv<12> > zext_ln116_fu_428_p1;
    sc_signal< sc_lv<12> > add_ln116_fu_432_p2;
    sc_signal< sc_lv<64> > grp_fu_476_p0;
    sc_signal< sc_lv<24> > trunc_ln126_fu_486_p1;
    sc_signal< sc_lv<5> > or_ln138_fu_531_p2;
    sc_signal< sc_lv<11> > tmp_4_fu_560_p3;
    sc_signal< sc_lv<12> > zext_ln145_fu_588_p1;
    sc_signal< sc_lv<8> > or_ln146_fu_621_p2;
    sc_signal< sc_lv<11> > tmp_5_fu_626_p3;
    sc_signal< sc_logic > grp_fu_476_ap_start;
    sc_signal< sc_logic > grp_fu_476_ap_done;
    sc_signal< sc_lv<83> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<83> ap_ST_fsm_state1;
    static const sc_lv<83> ap_ST_fsm_state2;
    static const sc_lv<83> ap_ST_fsm_state3;
    static const sc_lv<83> ap_ST_fsm_state4;
    static const sc_lv<83> ap_ST_fsm_state5;
    static const sc_lv<83> ap_ST_fsm_state6;
    static const sc_lv<83> ap_ST_fsm_state7;
    static const sc_lv<83> ap_ST_fsm_state8;
    static const sc_lv<83> ap_ST_fsm_state9;
    static const sc_lv<83> ap_ST_fsm_state10;
    static const sc_lv<83> ap_ST_fsm_state11;
    static const sc_lv<83> ap_ST_fsm_state12;
    static const sc_lv<83> ap_ST_fsm_state13;
    static const sc_lv<83> ap_ST_fsm_state14;
    static const sc_lv<83> ap_ST_fsm_state15;
    static const sc_lv<83> ap_ST_fsm_state16;
    static const sc_lv<83> ap_ST_fsm_state17;
    static const sc_lv<83> ap_ST_fsm_state18;
    static const sc_lv<83> ap_ST_fsm_state19;
    static const sc_lv<83> ap_ST_fsm_state20;
    static const sc_lv<83> ap_ST_fsm_state21;
    static const sc_lv<83> ap_ST_fsm_state22;
    static const sc_lv<83> ap_ST_fsm_state23;
    static const sc_lv<83> ap_ST_fsm_state24;
    static const sc_lv<83> ap_ST_fsm_state25;
    static const sc_lv<83> ap_ST_fsm_state26;
    static const sc_lv<83> ap_ST_fsm_state27;
    static const sc_lv<83> ap_ST_fsm_state28;
    static const sc_lv<83> ap_ST_fsm_state29;
    static const sc_lv<83> ap_ST_fsm_state30;
    static const sc_lv<83> ap_ST_fsm_state31;
    static const sc_lv<83> ap_ST_fsm_state32;
    static const sc_lv<83> ap_ST_fsm_state33;
    static const sc_lv<83> ap_ST_fsm_state34;
    static const sc_lv<83> ap_ST_fsm_state35;
    static const sc_lv<83> ap_ST_fsm_state36;
    static const sc_lv<83> ap_ST_fsm_state37;
    static const sc_lv<83> ap_ST_fsm_state38;
    static const sc_lv<83> ap_ST_fsm_state39;
    static const sc_lv<83> ap_ST_fsm_state40;
    static const sc_lv<83> ap_ST_fsm_state41;
    static const sc_lv<83> ap_ST_fsm_state42;
    static const sc_lv<83> ap_ST_fsm_state43;
    static const sc_lv<83> ap_ST_fsm_state44;
    static const sc_lv<83> ap_ST_fsm_state45;
    static const sc_lv<83> ap_ST_fsm_state46;
    static const sc_lv<83> ap_ST_fsm_state47;
    static const sc_lv<83> ap_ST_fsm_state48;
    static const sc_lv<83> ap_ST_fsm_state49;
    static const sc_lv<83> ap_ST_fsm_state50;
    static const sc_lv<83> ap_ST_fsm_state51;
    static const sc_lv<83> ap_ST_fsm_state52;
    static const sc_lv<83> ap_ST_fsm_state53;
    static const sc_lv<83> ap_ST_fsm_state54;
    static const sc_lv<83> ap_ST_fsm_state55;
    static const sc_lv<83> ap_ST_fsm_state56;
    static const sc_lv<83> ap_ST_fsm_state57;
    static const sc_lv<83> ap_ST_fsm_state58;
    static const sc_lv<83> ap_ST_fsm_state59;
    static const sc_lv<83> ap_ST_fsm_state60;
    static const sc_lv<83> ap_ST_fsm_state61;
    static const sc_lv<83> ap_ST_fsm_state62;
    static const sc_lv<83> ap_ST_fsm_state63;
    static const sc_lv<83> ap_ST_fsm_state64;
    static const sc_lv<83> ap_ST_fsm_state65;
    static const sc_lv<83> ap_ST_fsm_state66;
    static const sc_lv<83> ap_ST_fsm_state67;
    static const sc_lv<83> ap_ST_fsm_state68;
    static const sc_lv<83> ap_ST_fsm_state69;
    static const sc_lv<83> ap_ST_fsm_state70;
    static const sc_lv<83> ap_ST_fsm_state71;
    static const sc_lv<83> ap_ST_fsm_state72;
    static const sc_lv<83> ap_ST_fsm_state73;
    static const sc_lv<83> ap_ST_fsm_state74;
    static const sc_lv<83> ap_ST_fsm_state75;
    static const sc_lv<83> ap_ST_fsm_state76;
    static const sc_lv<83> ap_ST_fsm_state77;
    static const sc_lv<83> ap_ST_fsm_state78;
    static const sc_lv<83> ap_ST_fsm_state79;
    static const sc_lv<83> ap_ST_fsm_state80;
    static const sc_lv<83> ap_ST_fsm_state81;
    static const sc_lv<83> ap_ST_fsm_state82;
    static const sc_lv<83> ap_ST_fsm_state83;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_4D;
    static const sc_lv<32> ap_const_lv32_51;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_4E;
    static const sc_lv<32> ap_const_lv32_4F;
    static const sc_lv<32> ap_const_lv32_50;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<9> ap_const_lv9_0;
    static const sc_lv<32> ap_const_lv32_4B;
    static const sc_lv<32> ap_const_lv32_4A;
    static const sc_lv<32> ap_const_lv32_4C;
    static const sc_lv<32> ap_const_lv32_52;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<5> ap_const_lv5_12;
    static const sc_lv<5> ap_const_lv5_1;
    static const sc_lv<3> ap_const_lv3_4;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<9> ap_const_lv9_100;
    static const sc_lv<9> ap_const_lv9_1;
    static const sc_lv<64> ap_const_lv64_1;
    static const sc_lv<5> ap_const_lv5_2;
    static const sc_lv<9> ap_const_lv9_2;
    static const sc_lv<8> ap_const_lv8_1;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_P_address0();
    void thread_P_address1();
    void thread_P_ce0();
    void thread_P_ce1();
    void thread_P_d0();
    void thread_P_d1();
    void thread_P_we0();
    void thread_P_we1();
    void thread_S_address0();
    void thread_S_address1();
    void thread_S_ce0();
    void thread_S_ce1();
    void thread_S_d0();
    void thread_S_d1();
    void thread_S_we0();
    void thread_S_we1();
    void thread_add_ln116_fu_432_p2();
    void thread_add_ln145_fu_592_p2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state75();
    void thread_ap_CS_fsm_state76();
    void thread_ap_CS_fsm_state77();
    void thread_ap_CS_fsm_state78();
    void thread_ap_CS_fsm_state79();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state80();
    void thread_ap_CS_fsm_state81();
    void thread_ap_CS_fsm_state82();
    void thread_ap_CS_fsm_state83();
    void thread_ap_CS_fsm_state9();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_data_fu_490_p3();
    void thread_grp_Encrypt_SetKey_fu_336_ap_start();
    void thread_grp_Encrypt_SetKey_fu_336_left_read();
    void thread_grp_Encrypt_SetKey_fu_336_right_read();
    void thread_grp_fu_476_ap_start();
    void thread_grp_fu_476_p0();
    void thread_i_1_fu_393_p2();
    void thread_i_2_fu_542_p2();
    void thread_i_3_fu_448_p2();
    void thread_i_4_fu_554_p2();
    void thread_i_fu_376_p2();
    void thread_icmp_ln109_fu_370_p2();
    void thread_icmp_ln114_fu_387_p2();
    void thread_icmp_ln115_fu_416_p2();
    void thread_icmp_ln123_fu_442_p2();
    void thread_icmp_ln125_fu_454_p2();
    void thread_icmp_ln135_fu_510_p2();
    void thread_icmp_ln142_fu_548_p2();
    void thread_initial_parray_address0();
    void thread_initial_parray_ce0();
    void thread_initial_sbox_address0();
    void thread_initial_sbox_ce0();
    void thread_j_1_fu_460_p2();
    void thread_j_2_fu_601_p2();
    void thread_j_fu_422_p2();
    void thread_key_address0();
    void thread_key_ce0();
    void thread_or_ln138_fu_531_p2();
    void thread_or_ln146_fu_621_p2();
    void thread_tmp_3_fu_399_p3();
    void thread_tmp_4_fu_560_p3();
    void thread_tmp_5_fu_626_p3();
    void thread_tmp_fu_572_p3();
    void thread_trunc_ln126_fu_486_p1();
    void thread_trunc_ln143_fu_597_p1();
    void thread_xor_ln129_fu_503_p2();
    void thread_zext_ln110_fu_382_p1();
    void thread_zext_ln115_fu_407_p1();
    void thread_zext_ln116_1_fu_437_p1();
    void thread_zext_ln116_fu_428_p1();
    void thread_zext_ln129_fu_481_p1();
    void thread_zext_ln137_fu_526_p1();
    void thread_zext_ln138_fu_537_p1();
    void thread_zext_ln143_fu_568_p1();
    void thread_zext_ln145_1_fu_617_p1();
    void thread_zext_ln145_fu_588_p1();
    void thread_zext_ln146_fu_634_p1();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif

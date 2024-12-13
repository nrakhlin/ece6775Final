// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _invMixColumn_HH_
#define _invMixColumn_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "galois_multiplicatio.h"
#include "dut_mux_42_8_1_1.h"

namespace ap_rtl {

struct invMixColumn : public sc_module {
    // Port declarations 14
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<8> > column_0_read;
    sc_in< sc_lv<8> > column_1_read;
    sc_in< sc_lv<8> > column_2_read;
    sc_in< sc_lv<8> > column_3_read;
    sc_out< sc_lv<8> > ap_return_0;
    sc_out< sc_lv<8> > ap_return_1;
    sc_out< sc_lv<8> > ap_return_2;
    sc_out< sc_lv<8> > ap_return_3;
    sc_signal< sc_lv<5> > ap_var_for_const0;
    sc_signal< sc_lv<5> > ap_var_for_const1;
    sc_signal< sc_lv<5> > ap_var_for_const2;
    sc_signal< sc_lv<5> > ap_var_for_const3;


    // Module declarations
    invMixColumn(sc_module_name name);
    SC_HAS_PROCESS(invMixColumn);

    ~invMixColumn();

    sc_trace_file* mVcdFile;

    galois_multiplicatio* grp_galois_multiplicatio_fu_93;
    galois_multiplicatio* grp_galois_multiplicatio_fu_100;
    galois_multiplicatio* grp_galois_multiplicatio_fu_107;
    galois_multiplicatio* grp_galois_multiplicatio_fu_114;
    galois_multiplicatio* grp_galois_multiplicatio_fu_121;
    galois_multiplicatio* grp_galois_multiplicatio_fu_128;
    galois_multiplicatio* grp_galois_multiplicatio_fu_135;
    galois_multiplicatio* grp_galois_multiplicatio_fu_142;
    galois_multiplicatio* grp_galois_multiplicatio_fu_149;
    galois_multiplicatio* grp_galois_multiplicatio_fu_156;
    galois_multiplicatio* grp_galois_multiplicatio_fu_163;
    galois_multiplicatio* grp_galois_multiplicatio_fu_170;
    galois_multiplicatio* grp_galois_multiplicatio_fu_177;
    galois_multiplicatio* grp_galois_multiplicatio_fu_184;
    galois_multiplicatio* grp_galois_multiplicatio_fu_191;
    galois_multiplicatio* grp_galois_multiplicatio_fu_198;
    dut_mux_42_8_1_1<1,1,8,8,8,8,2,8>* dut_mux_42_8_1_1_U104;
    sc_signal< sc_lv<3> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<3> > i_fu_211_p2;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<8> > cpy_3_load_reg_430;
    sc_signal< sc_lv<1> > icmp_ln394_fu_205_p2;
    sc_signal< sc_lv<8> > cpy_3_5_load_reg_438;
    sc_signal< sc_lv<8> > cpy_3_6_load_reg_446;
    sc_signal< sc_lv<8> > cpy_3_7_load_reg_454;
    sc_signal< sc_logic > grp_galois_multiplicatio_fu_93_ap_start;
    sc_signal< sc_logic > grp_galois_multiplicatio_fu_93_ap_done;
    sc_signal< sc_logic > grp_galois_multiplicatio_fu_93_ap_idle;
    sc_signal< sc_logic > grp_galois_multiplicatio_fu_93_ap_ready;
    sc_signal< sc_lv<8> > grp_galois_multiplicatio_fu_93_ap_return;
    sc_signal< sc_logic > grp_galois_multiplicatio_fu_100_ap_start;
    sc_signal< sc_logic > grp_galois_multiplicatio_fu_100_ap_done;
    sc_signal< sc_logic > grp_galois_multiplicatio_fu_100_ap_idle;
    sc_signal< sc_logic > grp_galois_multiplicatio_fu_100_ap_ready;
    sc_signal< sc_lv<8> > grp_galois_multiplicatio_fu_100_ap_return;
    sc_signal< sc_logic > grp_galois_multiplicatio_fu_107_ap_start;
    sc_signal< sc_logic > grp_galois_multiplicatio_fu_107_ap_done;
    sc_signal< sc_logic > grp_galois_multiplicatio_fu_107_ap_idle;
    sc_signal< sc_logic > grp_galois_multiplicatio_fu_107_ap_ready;
    sc_signal< sc_lv<8> > grp_galois_multiplicatio_fu_107_ap_return;
    sc_signal< sc_logic > grp_galois_multiplicatio_fu_114_ap_start;
    sc_signal< sc_logic > grp_galois_multiplicatio_fu_114_ap_done;
    sc_signal< sc_logic > grp_galois_multiplicatio_fu_114_ap_idle;
    sc_signal< sc_logic > grp_galois_multiplicatio_fu_114_ap_ready;
    sc_signal< sc_lv<8> > grp_galois_multiplicatio_fu_114_ap_return;
    sc_signal< sc_logic > grp_galois_multiplicatio_fu_121_ap_start;
    sc_signal< sc_logic > grp_galois_multiplicatio_fu_121_ap_done;
    sc_signal< sc_logic > grp_galois_multiplicatio_fu_121_ap_idle;
    sc_signal< sc_logic > grp_galois_multiplicatio_fu_121_ap_ready;
    sc_signal< sc_lv<8> > grp_galois_multiplicatio_fu_121_ap_return;
    sc_signal< sc_logic > grp_galois_multiplicatio_fu_128_ap_start;
    sc_signal< sc_logic > grp_galois_multiplicatio_fu_128_ap_done;
    sc_signal< sc_logic > grp_galois_multiplicatio_fu_128_ap_idle;
    sc_signal< sc_logic > grp_galois_multiplicatio_fu_128_ap_ready;
    sc_signal< sc_lv<8> > grp_galois_multiplicatio_fu_128_ap_return;
    sc_signal< sc_logic > grp_galois_multiplicatio_fu_135_ap_start;
    sc_signal< sc_logic > grp_galois_multiplicatio_fu_135_ap_done;
    sc_signal< sc_logic > grp_galois_multiplicatio_fu_135_ap_idle;
    sc_signal< sc_logic > grp_galois_multiplicatio_fu_135_ap_ready;
    sc_signal< sc_lv<8> > grp_galois_multiplicatio_fu_135_ap_return;
    sc_signal< sc_logic > grp_galois_multiplicatio_fu_142_ap_start;
    sc_signal< sc_logic > grp_galois_multiplicatio_fu_142_ap_done;
    sc_signal< sc_logic > grp_galois_multiplicatio_fu_142_ap_idle;
    sc_signal< sc_logic > grp_galois_multiplicatio_fu_142_ap_ready;
    sc_signal< sc_lv<8> > grp_galois_multiplicatio_fu_142_ap_return;
    sc_signal< sc_logic > grp_galois_multiplicatio_fu_149_ap_start;
    sc_signal< sc_logic > grp_galois_multiplicatio_fu_149_ap_done;
    sc_signal< sc_logic > grp_galois_multiplicatio_fu_149_ap_idle;
    sc_signal< sc_logic > grp_galois_multiplicatio_fu_149_ap_ready;
    sc_signal< sc_lv<8> > grp_galois_multiplicatio_fu_149_ap_return;
    sc_signal< sc_logic > grp_galois_multiplicatio_fu_156_ap_start;
    sc_signal< sc_logic > grp_galois_multiplicatio_fu_156_ap_done;
    sc_signal< sc_logic > grp_galois_multiplicatio_fu_156_ap_idle;
    sc_signal< sc_logic > grp_galois_multiplicatio_fu_156_ap_ready;
    sc_signal< sc_lv<8> > grp_galois_multiplicatio_fu_156_ap_return;
    sc_signal< sc_logic > grp_galois_multiplicatio_fu_163_ap_start;
    sc_signal< sc_logic > grp_galois_multiplicatio_fu_163_ap_done;
    sc_signal< sc_logic > grp_galois_multiplicatio_fu_163_ap_idle;
    sc_signal< sc_logic > grp_galois_multiplicatio_fu_163_ap_ready;
    sc_signal< sc_lv<8> > grp_galois_multiplicatio_fu_163_ap_return;
    sc_signal< sc_logic > grp_galois_multiplicatio_fu_170_ap_start;
    sc_signal< sc_logic > grp_galois_multiplicatio_fu_170_ap_done;
    sc_signal< sc_logic > grp_galois_multiplicatio_fu_170_ap_idle;
    sc_signal< sc_logic > grp_galois_multiplicatio_fu_170_ap_ready;
    sc_signal< sc_lv<8> > grp_galois_multiplicatio_fu_170_ap_return;
    sc_signal< sc_logic > grp_galois_multiplicatio_fu_177_ap_start;
    sc_signal< sc_logic > grp_galois_multiplicatio_fu_177_ap_done;
    sc_signal< sc_logic > grp_galois_multiplicatio_fu_177_ap_idle;
    sc_signal< sc_logic > grp_galois_multiplicatio_fu_177_ap_ready;
    sc_signal< sc_lv<8> > grp_galois_multiplicatio_fu_177_ap_return;
    sc_signal< sc_logic > grp_galois_multiplicatio_fu_184_ap_start;
    sc_signal< sc_logic > grp_galois_multiplicatio_fu_184_ap_done;
    sc_signal< sc_logic > grp_galois_multiplicatio_fu_184_ap_idle;
    sc_signal< sc_logic > grp_galois_multiplicatio_fu_184_ap_ready;
    sc_signal< sc_lv<8> > grp_galois_multiplicatio_fu_184_ap_return;
    sc_signal< sc_logic > grp_galois_multiplicatio_fu_191_ap_start;
    sc_signal< sc_logic > grp_galois_multiplicatio_fu_191_ap_done;
    sc_signal< sc_logic > grp_galois_multiplicatio_fu_191_ap_idle;
    sc_signal< sc_logic > grp_galois_multiplicatio_fu_191_ap_ready;
    sc_signal< sc_lv<8> > grp_galois_multiplicatio_fu_191_ap_return;
    sc_signal< sc_logic > grp_galois_multiplicatio_fu_198_ap_start;
    sc_signal< sc_logic > grp_galois_multiplicatio_fu_198_ap_done;
    sc_signal< sc_logic > grp_galois_multiplicatio_fu_198_ap_idle;
    sc_signal< sc_logic > grp_galois_multiplicatio_fu_198_ap_ready;
    sc_signal< sc_lv<8> > grp_galois_multiplicatio_fu_198_ap_return;
    sc_signal< sc_lv<3> > i_0_reg_82;
    sc_signal< sc_logic > grp_galois_multiplicatio_fu_93_ap_start_reg;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_logic > grp_galois_multiplicatio_fu_100_ap_start_reg;
    sc_signal< sc_logic > grp_galois_multiplicatio_fu_107_ap_start_reg;
    sc_signal< sc_logic > grp_galois_multiplicatio_fu_114_ap_start_reg;
    sc_signal< sc_logic > grp_galois_multiplicatio_fu_121_ap_start_reg;
    sc_signal< sc_logic > grp_galois_multiplicatio_fu_128_ap_start_reg;
    sc_signal< sc_logic > grp_galois_multiplicatio_fu_135_ap_start_reg;
    sc_signal< sc_logic > grp_galois_multiplicatio_fu_142_ap_start_reg;
    sc_signal< sc_logic > grp_galois_multiplicatio_fu_149_ap_start_reg;
    sc_signal< sc_logic > grp_galois_multiplicatio_fu_156_ap_start_reg;
    sc_signal< sc_logic > grp_galois_multiplicatio_fu_163_ap_start_reg;
    sc_signal< sc_logic > grp_galois_multiplicatio_fu_170_ap_start_reg;
    sc_signal< sc_logic > grp_galois_multiplicatio_fu_177_ap_start_reg;
    sc_signal< sc_logic > grp_galois_multiplicatio_fu_184_ap_start_reg;
    sc_signal< sc_logic > grp_galois_multiplicatio_fu_191_ap_start_reg;
    sc_signal< sc_logic > grp_galois_multiplicatio_fu_198_ap_start_reg;
    sc_signal< sc_lv<8> > cpy_3_fu_42;
    sc_signal< sc_lv<8> > cpy_0_fu_221_p6;
    sc_signal< sc_lv<2> > trunc_ln396_fu_217_p1;
    sc_signal< sc_lv<8> > cpy_3_5_fu_46;
    sc_signal< sc_lv<8> > cpy_3_6_fu_50;
    sc_signal< sc_lv<8> > cpy_3_7_fu_54;
    sc_signal< sc_lv<2> > cpy_0_fu_221_p5;
    sc_signal< sc_lv<8> > xor_ln401_1_fu_285_p2;
    sc_signal< sc_lv<8> > xor_ln401_fu_279_p2;
    sc_signal< sc_lv<8> > xor_ln405_1_fu_303_p2;
    sc_signal< sc_lv<8> > xor_ln405_fu_297_p2;
    sc_signal< sc_lv<8> > xor_ln409_1_fu_321_p2;
    sc_signal< sc_lv<8> > xor_ln409_fu_315_p2;
    sc_signal< sc_lv<8> > xor_ln413_1_fu_339_p2;
    sc_signal< sc_lv<8> > xor_ln413_fu_333_p2;
    sc_signal< sc_lv<8> > xor_ln401_2_fu_291_p2;
    sc_signal< sc_lv<8> > xor_ln405_2_fu_309_p2;
    sc_signal< sc_lv<8> > xor_ln409_2_fu_327_p2;
    sc_signal< sc_lv<8> > xor_ln413_2_fu_345_p2;
    sc_signal< sc_lv<8> > ap_return_0_preg;
    sc_signal< bool > ap_block_state3_on_subcall_done;
    sc_signal< sc_lv<8> > ap_return_1_preg;
    sc_signal< sc_lv<8> > ap_return_2_preg;
    sc_signal< sc_lv<8> > ap_return_3_preg;
    sc_signal< sc_lv<3> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<3> ap_ST_fsm_state1;
    static const sc_lv<3> ap_ST_fsm_state2;
    static const sc_lv<3> ap_ST_fsm_state3;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<5> ap_const_lv5_E;
    static const sc_lv<5> ap_const_lv5_9;
    static const sc_lv<5> ap_const_lv5_D;
    static const sc_lv<5> ap_const_lv5_B;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<2> ap_const_lv2_2;
    static const sc_lv<2> ap_const_lv2_3;
    static const sc_lv<3> ap_const_lv3_4;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<8> ap_const_lv8_0;
    static const bool ap_const_boolean_0;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_var_for_const1();
    void thread_ap_var_for_const2();
    void thread_ap_var_for_const3();
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_block_state3_on_subcall_done();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_return_0();
    void thread_ap_return_1();
    void thread_ap_return_2();
    void thread_ap_return_3();
    void thread_cpy_0_fu_221_p5();
    void thread_grp_galois_multiplicatio_fu_100_ap_start();
    void thread_grp_galois_multiplicatio_fu_107_ap_start();
    void thread_grp_galois_multiplicatio_fu_114_ap_start();
    void thread_grp_galois_multiplicatio_fu_121_ap_start();
    void thread_grp_galois_multiplicatio_fu_128_ap_start();
    void thread_grp_galois_multiplicatio_fu_135_ap_start();
    void thread_grp_galois_multiplicatio_fu_142_ap_start();
    void thread_grp_galois_multiplicatio_fu_149_ap_start();
    void thread_grp_galois_multiplicatio_fu_156_ap_start();
    void thread_grp_galois_multiplicatio_fu_163_ap_start();
    void thread_grp_galois_multiplicatio_fu_170_ap_start();
    void thread_grp_galois_multiplicatio_fu_177_ap_start();
    void thread_grp_galois_multiplicatio_fu_184_ap_start();
    void thread_grp_galois_multiplicatio_fu_191_ap_start();
    void thread_grp_galois_multiplicatio_fu_198_ap_start();
    void thread_grp_galois_multiplicatio_fu_93_ap_start();
    void thread_i_fu_211_p2();
    void thread_icmp_ln394_fu_205_p2();
    void thread_trunc_ln396_fu_217_p1();
    void thread_xor_ln401_1_fu_285_p2();
    void thread_xor_ln401_2_fu_291_p2();
    void thread_xor_ln401_fu_279_p2();
    void thread_xor_ln405_1_fu_303_p2();
    void thread_xor_ln405_2_fu_309_p2();
    void thread_xor_ln405_fu_297_p2();
    void thread_xor_ln409_1_fu_321_p2();
    void thread_xor_ln409_2_fu_327_p2();
    void thread_xor_ln409_fu_315_p2();
    void thread_xor_ln413_1_fu_339_p2();
    void thread_xor_ln413_2_fu_345_p2();
    void thread_xor_ln413_fu_333_p2();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif

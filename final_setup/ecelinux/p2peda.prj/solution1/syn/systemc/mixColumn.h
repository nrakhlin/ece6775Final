// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _mixColumn_HH_
#define _mixColumn_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "galois_multiplicatio.h"

namespace ap_rtl {

struct mixColumn : public sc_module {
    // Port declarations 9
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


    // Module declarations
    mixColumn(sc_module_name name);
    SC_HAS_PROCESS(mixColumn);

    ~mixColumn();

    sc_trace_file* mVcdFile;

    galois_multiplicatio* tmp_galois_multiplicatio_fu_44;
    galois_multiplicatio* tmp_3_galois_multiplicatio_fu_52;
    galois_multiplicatio* tmp_4_galois_multiplicatio_fu_60;
    galois_multiplicatio* tmp_5_galois_multiplicatio_fu_68;
    galois_multiplicatio* tmp_6_galois_multiplicatio_fu_76;
    galois_multiplicatio* tmp_7_galois_multiplicatio_fu_84;
    galois_multiplicatio* tmp_9_galois_multiplicatio_fu_92;
    galois_multiplicatio* tmp_s_galois_multiplicatio_fu_100;
    galois_multiplicatio* tmp_1_galois_multiplicatio_fu_108;
    galois_multiplicatio* tmp_2_galois_multiplicatio_fu_116;
    galois_multiplicatio* tmp_8_galois_multiplicatio_fu_124;
    galois_multiplicatio* tmp_10_galois_multiplicatio_fu_132;
    sc_signal< sc_logic > tmp_galois_multiplicatio_fu_44_ap_ready;
    sc_signal< sc_lv<8> > tmp_galois_multiplicatio_fu_44_ap_return;
    sc_signal< sc_logic > tmp_3_galois_multiplicatio_fu_52_ap_ready;
    sc_signal< sc_lv<8> > tmp_3_galois_multiplicatio_fu_52_ap_return;
    sc_signal< sc_logic > tmp_4_galois_multiplicatio_fu_60_ap_ready;
    sc_signal< sc_lv<8> > tmp_4_galois_multiplicatio_fu_60_ap_return;
    sc_signal< sc_logic > tmp_5_galois_multiplicatio_fu_68_ap_ready;
    sc_signal< sc_lv<8> > tmp_5_galois_multiplicatio_fu_68_ap_return;
    sc_signal< sc_logic > tmp_6_galois_multiplicatio_fu_76_ap_ready;
    sc_signal< sc_lv<8> > tmp_6_galois_multiplicatio_fu_76_ap_return;
    sc_signal< sc_logic > tmp_7_galois_multiplicatio_fu_84_ap_ready;
    sc_signal< sc_lv<8> > tmp_7_galois_multiplicatio_fu_84_ap_return;
    sc_signal< sc_logic > tmp_9_galois_multiplicatio_fu_92_ap_ready;
    sc_signal< sc_lv<8> > tmp_9_galois_multiplicatio_fu_92_ap_return;
    sc_signal< sc_logic > tmp_s_galois_multiplicatio_fu_100_ap_ready;
    sc_signal< sc_lv<8> > tmp_s_galois_multiplicatio_fu_100_ap_return;
    sc_signal< sc_logic > tmp_1_galois_multiplicatio_fu_108_ap_ready;
    sc_signal< sc_lv<8> > tmp_1_galois_multiplicatio_fu_108_ap_return;
    sc_signal< sc_logic > tmp_2_galois_multiplicatio_fu_116_ap_ready;
    sc_signal< sc_lv<8> > tmp_2_galois_multiplicatio_fu_116_ap_return;
    sc_signal< sc_logic > tmp_8_galois_multiplicatio_fu_124_ap_ready;
    sc_signal< sc_lv<8> > tmp_8_galois_multiplicatio_fu_124_ap_return;
    sc_signal< sc_logic > tmp_10_galois_multiplicatio_fu_132_ap_ready;
    sc_signal< sc_lv<8> > tmp_10_galois_multiplicatio_fu_132_ap_return;
    sc_signal< sc_lv<8> > xor_ln267_2_fu_146_p2;
    sc_signal< sc_lv<8> > xor_ln267_1_fu_140_p2;
    sc_signal< sc_lv<8> > xor_ln272_2_fu_164_p2;
    sc_signal< sc_lv<8> > xor_ln272_1_fu_158_p2;
    sc_signal< sc_lv<8> > xor_ln277_2_fu_182_p2;
    sc_signal< sc_lv<8> > xor_ln277_1_fu_176_p2;
    sc_signal< sc_lv<8> > xor_ln282_2_fu_200_p2;
    sc_signal< sc_lv<8> > xor_ln282_1_fu_194_p2;
    sc_signal< sc_lv<8> > xor_ln267_fu_152_p2;
    sc_signal< sc_lv<8> > xor_ln272_fu_170_p2;
    sc_signal< sc_lv<8> > xor_ln277_fu_188_p2;
    sc_signal< sc_lv<8> > xor_ln282_fu_206_p2;
    static const sc_logic ap_const_logic_1;
    static const bool ap_const_boolean_1;
    static const sc_lv<5> ap_const_lv5_2;
    static const sc_lv<5> ap_const_lv5_1;
    static const sc_lv<5> ap_const_lv5_3;
    static const sc_logic ap_const_logic_0;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_var_for_const1();
    void thread_ap_var_for_const2();
    void thread_ap_ready();
    void thread_ap_return_0();
    void thread_ap_return_1();
    void thread_ap_return_2();
    void thread_ap_return_3();
    void thread_xor_ln267_1_fu_140_p2();
    void thread_xor_ln267_2_fu_146_p2();
    void thread_xor_ln267_fu_152_p2();
    void thread_xor_ln272_1_fu_158_p2();
    void thread_xor_ln272_2_fu_164_p2();
    void thread_xor_ln272_fu_170_p2();
    void thread_xor_ln277_1_fu_176_p2();
    void thread_xor_ln277_2_fu_182_p2();
    void thread_xor_ln277_fu_188_p2();
    void thread_xor_ln282_1_fu_194_p2();
    void thread_xor_ln282_2_fu_200_p2();
    void thread_xor_ln282_fu_206_p2();
};

}

using namespace ap_rtl;

#endif

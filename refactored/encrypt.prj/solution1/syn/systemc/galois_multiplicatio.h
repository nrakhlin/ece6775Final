// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _galois_multiplicatio_HH_
#define _galois_multiplicatio_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct galois_multiplicatio : public sc_module {
    // Port declarations 4
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<8> > a;
    sc_in< sc_lv<3> > b;
    sc_out< sc_lv<8> > ap_return;


    // Module declarations
    galois_multiplicatio(sc_module_name name);
    SC_HAS_PROCESS(galois_multiplicatio);

    ~galois_multiplicatio();

    sc_trace_file* mVcdFile;

    sc_signal< sc_lv<1> > trunc_ln235_fu_34_p1;
    sc_signal< sc_lv<8> > shl_ln238_fu_46_p2;
    sc_signal< sc_lv<1> > tmp_fu_52_p3;
    sc_signal< sc_lv<8> > xor_ln240_fu_60_p2;
    sc_signal< sc_lv<1> > tmp_1_fu_74_p3;
    sc_signal< sc_lv<8> > select_ln239_fu_66_p3;
    sc_signal< sc_lv<8> > select_ln235_fu_38_p3;
    sc_signal< sc_lv<8> > select_ln235_1_fu_82_p3;
    static const sc_logic ap_const_logic_1;
    static const bool ap_const_boolean_1;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<8> ap_const_lv8_1;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<8> ap_const_lv8_1B;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_logic ap_const_logic_0;
    // Thread declarations
    void thread_ap_ready();
    void thread_ap_return();
    void thread_select_ln235_1_fu_82_p3();
    void thread_select_ln235_fu_38_p3();
    void thread_select_ln239_fu_66_p3();
    void thread_shl_ln238_fu_46_p2();
    void thread_tmp_1_fu_74_p3();
    void thread_tmp_fu_52_p3();
    void thread_trunc_ln235_fu_34_p1();
    void thread_xor_ln240_fu_60_p2();
};

}

using namespace ap_rtl;

#endif

// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _dut_HH_
#define _dut_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "aes_decrypt.h"
#include "dut_decryptedtext.h"

namespace ap_rtl {

struct dut : public sc_module {
    // Port declarations 7
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<32> > ap_return;


    // Module declarations
    dut(sc_module_name name);
    SC_HAS_PROCESS(dut);

    ~dut();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    dut_decryptedtext* decryptedtext_U;
    aes_decrypt* grp_aes_decrypt_fu_22;
    sc_signal< sc_lv<2> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > grp_aes_decrypt_fu_22_ap_start;
    sc_signal< sc_logic > grp_aes_decrypt_fu_22_ap_done;
    sc_signal< sc_logic > grp_aes_decrypt_fu_22_ap_idle;
    sc_signal< sc_logic > grp_aes_decrypt_fu_22_ap_ready;
    sc_signal< sc_lv<4> > grp_aes_decrypt_fu_22_output_r_address0;
    sc_signal< sc_logic > grp_aes_decrypt_fu_22_output_r_ce0;
    sc_signal< sc_logic > grp_aes_decrypt_fu_22_output_r_we0;
    sc_signal< sc_lv<8> > grp_aes_decrypt_fu_22_output_r_d0;
    sc_signal< sc_logic > grp_aes_decrypt_fu_22_ap_start_reg;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<2> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<2> ap_ST_fsm_state1;
    static const sc_lv<2> ap_ST_fsm_state2;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_return();
    void thread_grp_aes_decrypt_fu_22_ap_start();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
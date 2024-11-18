// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "Encrypt_SetKey.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic Encrypt_SetKey::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic Encrypt_SetKey::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<6> Encrypt_SetKey::ap_ST_fsm_state1 = "1";
const sc_lv<6> Encrypt_SetKey::ap_ST_fsm_state2 = "10";
const sc_lv<6> Encrypt_SetKey::ap_ST_fsm_state3 = "100";
const sc_lv<6> Encrypt_SetKey::ap_ST_fsm_state4 = "1000";
const sc_lv<6> Encrypt_SetKey::ap_ST_fsm_state5 = "10000";
const sc_lv<6> Encrypt_SetKey::ap_ST_fsm_state6 = "100000";
const sc_lv<32> Encrypt_SetKey::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> Encrypt_SetKey::ap_const_lv32_1 = "1";
const sc_lv<1> Encrypt_SetKey::ap_const_lv1_0 = "0";
const sc_lv<1> Encrypt_SetKey::ap_const_lv1_1 = "1";
const sc_lv<32> Encrypt_SetKey::ap_const_lv32_2 = "10";
const sc_lv<32> Encrypt_SetKey::ap_const_lv32_3 = "11";
const sc_lv<32> Encrypt_SetKey::ap_const_lv32_4 = "100";
const sc_lv<5> Encrypt_SetKey::ap_const_lv5_0 = "00000";
const sc_lv<64> Encrypt_SetKey::ap_const_lv64_10 = "10000";
const sc_lv<64> Encrypt_SetKey::ap_const_lv64_11 = "10001";
const sc_lv<32> Encrypt_SetKey::ap_const_lv32_5 = "101";
const sc_lv<5> Encrypt_SetKey::ap_const_lv5_10 = "10000";
const sc_lv<5> Encrypt_SetKey::ap_const_lv5_1 = "1";
const sc_lv<32> Encrypt_SetKey::ap_const_lv32_18 = "11000";
const sc_lv<32> Encrypt_SetKey::ap_const_lv32_1F = "11111";
const sc_lv<32> Encrypt_SetKey::ap_const_lv32_10 = "10000";
const sc_lv<32> Encrypt_SetKey::ap_const_lv32_17 = "10111";
const sc_lv<32> Encrypt_SetKey::ap_const_lv32_8 = "1000";
const sc_lv<32> Encrypt_SetKey::ap_const_lv32_F = "1111";
const sc_lv<56> Encrypt_SetKey::ap_const_lv56_1 = "1";
const sc_lv<56> Encrypt_SetKey::ap_const_lv56_2 = "10";
const sc_lv<56> Encrypt_SetKey::ap_const_lv56_3 = "11";
const bool Encrypt_SetKey::ap_const_boolean_1 = true;

Encrypt_SetKey::Encrypt_SetKey(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_P_address0);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln12_fu_177_p2 );
    sensitive << ( zext_ln13_fu_189_p1 );

    SC_METHOD(thread_P_address1);
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_P_ce0);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln12_fu_177_p2 );

    SC_METHOD(thread_P_ce1);
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_S_address0);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( zext_ln62_fu_266_p1 );
    sensitive << ( tmp_4_fu_286_p3 );

    SC_METHOD(thread_S_address1);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( tmp_fu_271_p3 );
    sensitive << ( tmp_5_fu_294_p3 );

    SC_METHOD(thread_S_ce0);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_S_ce1);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_a_fu_230_p4);
    sensitive << ( grp_fu_171_p2 );

    SC_METHOD(thread_add_ln62_1_fu_307_p2);
    sensitive << ( S_q1 );
    sensitive << ( xor_ln62_fu_302_p2 );

    SC_METHOD(thread_add_ln62_fu_280_p2);
    sensitive << ( S_q0 );
    sensitive << ( S_q1 );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state3);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state4);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state5);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state6);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state6 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state6 );

    SC_METHOD(thread_ap_return_0);
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( xor_ln19_fu_319_p2 );
    sensitive << ( ap_return_0_preg );

    SC_METHOD(thread_ap_return_1);
    sensitive << ( grp_fu_171_p2 );
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( ap_return_1_preg );

    SC_METHOD(thread_b_fu_240_p4);
    sensitive << ( xor_ln57_1_fu_224_p2 );

    SC_METHOD(thread_d_fu_260_p2);
    sensitive << ( trunc_ln13_1_fu_198_p1 );
    sensitive << ( trunc_ln13_fu_194_p1 );

    SC_METHOD(thread_grp_fu_171_p2);
    sensitive << ( P_q0 );
    sensitive << ( p_tmp_reg_140 );

    SC_METHOD(thread_i_fu_183_p2);
    sensitive << ( i_0_reg_160 );

    SC_METHOD(thread_icmp_ln12_fu_177_p2);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( i_0_reg_160 );

    SC_METHOD(thread_tmp_4_fu_286_p3);
    sensitive << ( c_reg_375 );

    SC_METHOD(thread_tmp_5_fu_294_p3);
    sensitive << ( d_reg_380 );

    SC_METHOD(thread_tmp_fu_271_p3);
    sensitive << ( b_fu_240_p4 );

    SC_METHOD(thread_trunc_ln13_1_fu_198_p1);
    sensitive << ( p_tmp_reg_140 );

    SC_METHOD(thread_trunc_ln13_2_fu_202_p1);
    sensitive << ( p_tmp_reg_140 );

    SC_METHOD(thread_trunc_ln13_3_fu_206_p1);
    sensitive << ( P_q0 );

    SC_METHOD(thread_trunc_ln13_4_fu_210_p1);
    sensitive << ( p_tmp_reg_140 );

    SC_METHOD(thread_trunc_ln13_5_fu_214_p1);
    sensitive << ( P_q0 );

    SC_METHOD(thread_trunc_ln13_fu_194_p1);
    sensitive << ( P_q0 );

    SC_METHOD(thread_xor_ln14_fu_313_p2);
    sensitive << ( p_b_read_assign_2_reg_150 );
    sensitive << ( add_ln62_1_fu_307_p2 );

    SC_METHOD(thread_xor_ln19_fu_319_p2);
    sensitive << ( P_q1 );
    sensitive << ( p_b_read_assign_2_reg_150 );

    SC_METHOD(thread_xor_ln57_1_fu_224_p2);
    sensitive << ( trunc_ln13_3_fu_206_p1 );
    sensitive << ( trunc_ln13_2_fu_202_p1 );

    SC_METHOD(thread_xor_ln57_fu_218_p2);
    sensitive << ( trunc_ln13_5_fu_214_p1 );
    sensitive << ( trunc_ln13_4_fu_210_p1 );

    SC_METHOD(thread_xor_ln62_fu_302_p2);
    sensitive << ( S_q0 );
    sensitive << ( add_ln62_reg_395 );

    SC_METHOD(thread_zext_ln13_fu_189_p1);
    sensitive << ( i_0_reg_160 );

    SC_METHOD(thread_zext_ln62_fu_266_p1);
    sensitive << ( a_fu_230_p4 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln12_fu_177_p2 );

    ap_CS_fsm = "000001";
    ap_return_0_preg = "00000000000000000000000000000000";
    ap_return_1_preg = "00000000000000000000000000000000";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "Encrypt_SetKey_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, left_read, "(port)left_read");
    sc_trace(mVcdFile, right_read, "(port)right_read");
    sc_trace(mVcdFile, P_address0, "(port)P_address0");
    sc_trace(mVcdFile, P_ce0, "(port)P_ce0");
    sc_trace(mVcdFile, P_q0, "(port)P_q0");
    sc_trace(mVcdFile, P_address1, "(port)P_address1");
    sc_trace(mVcdFile, P_ce1, "(port)P_ce1");
    sc_trace(mVcdFile, P_q1, "(port)P_q1");
    sc_trace(mVcdFile, S_address0, "(port)S_address0");
    sc_trace(mVcdFile, S_ce0, "(port)S_ce0");
    sc_trace(mVcdFile, S_q0, "(port)S_q0");
    sc_trace(mVcdFile, S_address1, "(port)S_address1");
    sc_trace(mVcdFile, S_ce1, "(port)S_ce1");
    sc_trace(mVcdFile, S_q1, "(port)S_q1");
    sc_trace(mVcdFile, ap_return_0, "(port)ap_return_0");
    sc_trace(mVcdFile, ap_return_1, "(port)ap_return_1");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, i_fu_183_p2, "i_fu_183_p2");
    sc_trace(mVcdFile, i_reg_350, "i_reg_350");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, icmp_ln12_fu_177_p2, "icmp_ln12_fu_177_p2");
    sc_trace(mVcdFile, grp_fu_171_p2, "grp_fu_171_p2");
    sc_trace(mVcdFile, p_tmp_1_reg_370, "p_tmp_1_reg_370");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, c_reg_375, "c_reg_375");
    sc_trace(mVcdFile, d_fu_260_p2, "d_fu_260_p2");
    sc_trace(mVcdFile, d_reg_380, "d_reg_380");
    sc_trace(mVcdFile, add_ln62_fu_280_p2, "add_ln62_fu_280_p2");
    sc_trace(mVcdFile, add_ln62_reg_395, "add_ln62_reg_395");
    sc_trace(mVcdFile, ap_CS_fsm_state4, "ap_CS_fsm_state4");
    sc_trace(mVcdFile, xor_ln14_fu_313_p2, "xor_ln14_fu_313_p2");
    sc_trace(mVcdFile, ap_CS_fsm_state5, "ap_CS_fsm_state5");
    sc_trace(mVcdFile, p_tmp_reg_140, "p_tmp_reg_140");
    sc_trace(mVcdFile, p_b_read_assign_2_reg_150, "p_b_read_assign_2_reg_150");
    sc_trace(mVcdFile, i_0_reg_160, "i_0_reg_160");
    sc_trace(mVcdFile, zext_ln13_fu_189_p1, "zext_ln13_fu_189_p1");
    sc_trace(mVcdFile, zext_ln62_fu_266_p1, "zext_ln62_fu_266_p1");
    sc_trace(mVcdFile, tmp_fu_271_p3, "tmp_fu_271_p3");
    sc_trace(mVcdFile, tmp_4_fu_286_p3, "tmp_4_fu_286_p3");
    sc_trace(mVcdFile, tmp_5_fu_294_p3, "tmp_5_fu_294_p3");
    sc_trace(mVcdFile, ap_CS_fsm_state6, "ap_CS_fsm_state6");
    sc_trace(mVcdFile, trunc_ln13_5_fu_214_p1, "trunc_ln13_5_fu_214_p1");
    sc_trace(mVcdFile, trunc_ln13_4_fu_210_p1, "trunc_ln13_4_fu_210_p1");
    sc_trace(mVcdFile, trunc_ln13_3_fu_206_p1, "trunc_ln13_3_fu_206_p1");
    sc_trace(mVcdFile, trunc_ln13_2_fu_202_p1, "trunc_ln13_2_fu_202_p1");
    sc_trace(mVcdFile, xor_ln57_1_fu_224_p2, "xor_ln57_1_fu_224_p2");
    sc_trace(mVcdFile, xor_ln57_fu_218_p2, "xor_ln57_fu_218_p2");
    sc_trace(mVcdFile, trunc_ln13_1_fu_198_p1, "trunc_ln13_1_fu_198_p1");
    sc_trace(mVcdFile, trunc_ln13_fu_194_p1, "trunc_ln13_fu_194_p1");
    sc_trace(mVcdFile, a_fu_230_p4, "a_fu_230_p4");
    sc_trace(mVcdFile, b_fu_240_p4, "b_fu_240_p4");
    sc_trace(mVcdFile, xor_ln62_fu_302_p2, "xor_ln62_fu_302_p2");
    sc_trace(mVcdFile, add_ln62_1_fu_307_p2, "add_ln62_1_fu_307_p2");
    sc_trace(mVcdFile, xor_ln19_fu_319_p2, "xor_ln19_fu_319_p2");
    sc_trace(mVcdFile, ap_return_0_preg, "ap_return_0_preg");
    sc_trace(mVcdFile, ap_return_1_preg, "ap_return_1_preg");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

Encrypt_SetKey::~Encrypt_SetKey() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

}

void Encrypt_SetKey::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_return_0_preg = ap_const_lv32_0;
    } else {
        if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
            ap_return_0_preg = xor_ln19_fu_319_p2.read();
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_return_1_preg = ap_const_lv32_0;
    } else {
        if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
            ap_return_1_preg = grp_fu_171_p2.read();
        }
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        i_0_reg_160 = i_reg_350.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        i_0_reg_160 = ap_const_lv5_0;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        p_b_read_assign_2_reg_150 = p_tmp_1_reg_370.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        p_b_read_assign_2_reg_150 = right_read.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        p_tmp_reg_140 = xor_ln14_fu_313_p2.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        p_tmp_reg_140 = left_read.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        add_ln62_reg_395 = add_ln62_fu_280_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        c_reg_375 = xor_ln57_fu_218_p2.read().range(15, 8);
        d_reg_380 = d_fu_260_p2.read();
        p_tmp_1_reg_370 = grp_fu_171_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        i_reg_350 = i_fu_183_p2.read();
    }
}

void Encrypt_SetKey::thread_P_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        if (esl_seteq<1,1,1>(icmp_ln12_fu_177_p2.read(), ap_const_lv1_1)) {
            P_address0 =  (sc_lv<5>) (ap_const_lv64_10);
        } else if (esl_seteq<1,1,1>(icmp_ln12_fu_177_p2.read(), ap_const_lv1_0)) {
            P_address0 =  (sc_lv<5>) (zext_ln13_fu_189_p1.read());
        } else {
            P_address0 = "XXXXX";
        }
    } else {
        P_address0 = "XXXXX";
    }
}

void Encrypt_SetKey::thread_P_address1() {
    P_address1 =  (sc_lv<5>) (ap_const_lv64_11);
}

void Encrypt_SetKey::thread_P_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          esl_seteq<1,1,1>(icmp_ln12_fu_177_p2.read(), ap_const_lv1_0)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          esl_seteq<1,1,1>(icmp_ln12_fu_177_p2.read(), ap_const_lv1_1)))) {
        P_ce0 = ap_const_logic_1;
    } else {
        P_ce0 = ap_const_logic_0;
    }
}

void Encrypt_SetKey::thread_P_ce1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        P_ce1 = ap_const_logic_1;
    } else {
        P_ce1 = ap_const_logic_0;
    }
}

void Encrypt_SetKey::thread_S_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        S_address0 =  (sc_lv<10>) (tmp_4_fu_286_p3.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        S_address0 =  (sc_lv<10>) (zext_ln62_fu_266_p1.read());
    } else {
        S_address0 =  (sc_lv<10>) ("XXXXXXXXXX");
    }
}

void Encrypt_SetKey::thread_S_address1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        S_address1 =  (sc_lv<10>) (tmp_5_fu_294_p3.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        S_address1 =  (sc_lv<10>) (tmp_fu_271_p3.read());
    } else {
        S_address1 =  (sc_lv<10>) ("XXXXXXXXXX");
    }
}

void Encrypt_SetKey::thread_S_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()))) {
        S_ce0 = ap_const_logic_1;
    } else {
        S_ce0 = ap_const_logic_0;
    }
}

void Encrypt_SetKey::thread_S_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()))) {
        S_ce1 = ap_const_logic_1;
    } else {
        S_ce1 = ap_const_logic_0;
    }
}

void Encrypt_SetKey::thread_a_fu_230_p4() {
    a_fu_230_p4 = grp_fu_171_p2.read().range(31, 24);
}

void Encrypt_SetKey::thread_add_ln62_1_fu_307_p2() {
    add_ln62_1_fu_307_p2 = (!S_q1.read().is_01() || !xor_ln62_fu_302_p2.read().is_01())? sc_lv<32>(): (sc_biguint<32>(S_q1.read()) + sc_biguint<32>(xor_ln62_fu_302_p2.read()));
}

void Encrypt_SetKey::thread_add_ln62_fu_280_p2() {
    add_ln62_fu_280_p2 = (!S_q0.read().is_01() || !S_q1.read().is_01())? sc_lv<32>(): (sc_biguint<32>(S_q0.read()) + sc_biguint<32>(S_q1.read()));
}

void Encrypt_SetKey::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void Encrypt_SetKey::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void Encrypt_SetKey::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void Encrypt_SetKey::thread_ap_CS_fsm_state4() {
    ap_CS_fsm_state4 = ap_CS_fsm.read()[3];
}

void Encrypt_SetKey::thread_ap_CS_fsm_state5() {
    ap_CS_fsm_state5 = ap_CS_fsm.read()[4];
}

void Encrypt_SetKey::thread_ap_CS_fsm_state6() {
    ap_CS_fsm_state6 = ap_CS_fsm.read()[5];
}

void Encrypt_SetKey::thread_ap_done() {
    if (((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read()))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void Encrypt_SetKey::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void Encrypt_SetKey::thread_ap_ready() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void Encrypt_SetKey::thread_ap_return_0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        ap_return_0 = xor_ln19_fu_319_p2.read();
    } else {
        ap_return_0 = ap_return_0_preg.read();
    }
}

void Encrypt_SetKey::thread_ap_return_1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        ap_return_1 = grp_fu_171_p2.read();
    } else {
        ap_return_1 = ap_return_1_preg.read();
    }
}

void Encrypt_SetKey::thread_b_fu_240_p4() {
    b_fu_240_p4 = xor_ln57_1_fu_224_p2.read().range(23, 16);
}

void Encrypt_SetKey::thread_d_fu_260_p2() {
    d_fu_260_p2 = (trunc_ln13_1_fu_198_p1.read() ^ trunc_ln13_fu_194_p1.read());
}

void Encrypt_SetKey::thread_grp_fu_171_p2() {
    grp_fu_171_p2 = (P_q0.read() ^ p_tmp_reg_140.read());
}

void Encrypt_SetKey::thread_i_fu_183_p2() {
    i_fu_183_p2 = (!i_0_reg_160.read().is_01() || !ap_const_lv5_1.is_01())? sc_lv<5>(): (sc_biguint<5>(i_0_reg_160.read()) + sc_biguint<5>(ap_const_lv5_1));
}

void Encrypt_SetKey::thread_icmp_ln12_fu_177_p2() {
    icmp_ln12_fu_177_p2 = (!i_0_reg_160.read().is_01() || !ap_const_lv5_10.is_01())? sc_lv<1>(): sc_lv<1>(i_0_reg_160.read() == ap_const_lv5_10);
}

void Encrypt_SetKey::thread_tmp_4_fu_286_p3() {
    tmp_4_fu_286_p3 = esl_concat<56,8>(ap_const_lv56_2, c_reg_375.read());
}

void Encrypt_SetKey::thread_tmp_5_fu_294_p3() {
    tmp_5_fu_294_p3 = esl_concat<56,8>(ap_const_lv56_3, d_reg_380.read());
}

void Encrypt_SetKey::thread_tmp_fu_271_p3() {
    tmp_fu_271_p3 = esl_concat<56,8>(ap_const_lv56_1, b_fu_240_p4.read());
}

void Encrypt_SetKey::thread_trunc_ln13_1_fu_198_p1() {
    trunc_ln13_1_fu_198_p1 = p_tmp_reg_140.read().range(8-1, 0);
}

void Encrypt_SetKey::thread_trunc_ln13_2_fu_202_p1() {
    trunc_ln13_2_fu_202_p1 = p_tmp_reg_140.read().range(24-1, 0);
}

void Encrypt_SetKey::thread_trunc_ln13_3_fu_206_p1() {
    trunc_ln13_3_fu_206_p1 = P_q0.read().range(24-1, 0);
}

void Encrypt_SetKey::thread_trunc_ln13_4_fu_210_p1() {
    trunc_ln13_4_fu_210_p1 = p_tmp_reg_140.read().range(16-1, 0);
}

void Encrypt_SetKey::thread_trunc_ln13_5_fu_214_p1() {
    trunc_ln13_5_fu_214_p1 = P_q0.read().range(16-1, 0);
}

void Encrypt_SetKey::thread_trunc_ln13_fu_194_p1() {
    trunc_ln13_fu_194_p1 = P_q0.read().range(8-1, 0);
}

void Encrypt_SetKey::thread_xor_ln14_fu_313_p2() {
    xor_ln14_fu_313_p2 = (p_b_read_assign_2_reg_150.read() ^ add_ln62_1_fu_307_p2.read());
}

void Encrypt_SetKey::thread_xor_ln19_fu_319_p2() {
    xor_ln19_fu_319_p2 = (P_q1.read() ^ p_b_read_assign_2_reg_150.read());
}

void Encrypt_SetKey::thread_xor_ln57_1_fu_224_p2() {
    xor_ln57_1_fu_224_p2 = (trunc_ln13_3_fu_206_p1.read() ^ trunc_ln13_2_fu_202_p1.read());
}

void Encrypt_SetKey::thread_xor_ln57_fu_218_p2() {
    xor_ln57_fu_218_p2 = (trunc_ln13_5_fu_214_p1.read() ^ trunc_ln13_4_fu_210_p1.read());
}

void Encrypt_SetKey::thread_xor_ln62_fu_302_p2() {
    xor_ln62_fu_302_p2 = (S_q0.read() ^ add_ln62_reg_395.read());
}

void Encrypt_SetKey::thread_zext_ln13_fu_189_p1() {
    zext_ln13_fu_189_p1 = esl_zext<64,5>(i_0_reg_160.read());
}

void Encrypt_SetKey::thread_zext_ln62_fu_266_p1() {
    zext_ln62_fu_266_p1 = esl_zext<64,8>(a_fu_230_p4.read());
}

void Encrypt_SetKey::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(icmp_ln12_fu_177_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state6;
            } else {
                ap_NS_fsm = ap_ST_fsm_state3;
            }
            break;
        case 4 : 
            ap_NS_fsm = ap_ST_fsm_state4;
            break;
        case 8 : 
            ap_NS_fsm = ap_ST_fsm_state5;
            break;
        case 16 : 
            ap_NS_fsm = ap_ST_fsm_state2;
            break;
        case 32 : 
            ap_NS_fsm = ap_ST_fsm_state1;
            break;
        default : 
            ap_NS_fsm =  (sc_lv<6>) ("XXXXXX");
            break;
    }
}

}


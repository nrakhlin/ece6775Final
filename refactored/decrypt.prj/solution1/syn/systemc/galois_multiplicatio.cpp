// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "galois_multiplicatio.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic galois_multiplicatio::ap_const_logic_1 = sc_dt::Log_1;
const bool galois_multiplicatio::ap_const_boolean_1 = true;
const sc_lv<8> galois_multiplicatio::ap_const_lv8_0 = "00000000";
const sc_lv<8> galois_multiplicatio::ap_const_lv8_1 = "1";
const sc_lv<32> galois_multiplicatio::ap_const_lv32_7 = "111";
const sc_lv<8> galois_multiplicatio::ap_const_lv8_1B = "11011";
const sc_lv<32> galois_multiplicatio::ap_const_lv32_1 = "1";
const sc_lv<32> galois_multiplicatio::ap_const_lv32_2 = "10";
const sc_lv<32> galois_multiplicatio::ap_const_lv32_3 = "11";
const sc_logic galois_multiplicatio::ap_const_logic_0 = sc_dt::Log_0;

galois_multiplicatio::galois_multiplicatio(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_ready);

    SC_METHOD(thread_ap_return);
    sensitive << ( select_ln245_3_fu_174_p3 );
    sensitive << ( xor_ln245_1_fu_188_p2 );

    SC_METHOD(thread_select_ln245_1_fu_86_p3);
    sensitive << ( tmp_1_fu_78_p3 );
    sensitive << ( select_ln249_fu_70_p3 );

    SC_METHOD(thread_select_ln245_2_fu_130_p3);
    sensitive << ( tmp_3_fu_122_p3 );
    sensitive << ( select_ln249_1_fu_114_p3 );

    SC_METHOD(thread_select_ln245_3_fu_174_p3);
    sensitive << ( tmp_5_fu_166_p3 );
    sensitive << ( select_ln249_2_fu_158_p3 );

    SC_METHOD(thread_select_ln245_fu_42_p3);
    sensitive << ( a );
    sensitive << ( trunc_ln245_fu_38_p1 );

    SC_METHOD(thread_select_ln249_1_fu_114_p3);
    sensitive << ( shl_ln248_1_fu_94_p2 );
    sensitive << ( tmp_2_fu_100_p3 );
    sensitive << ( xor_ln250_1_fu_108_p2 );

    SC_METHOD(thread_select_ln249_2_fu_158_p3);
    sensitive << ( shl_ln248_2_fu_138_p2 );
    sensitive << ( tmp_4_fu_144_p3 );
    sensitive << ( xor_ln250_2_fu_152_p2 );

    SC_METHOD(thread_select_ln249_fu_70_p3);
    sensitive << ( shl_ln248_fu_50_p2 );
    sensitive << ( tmp_fu_56_p3 );
    sensitive << ( xor_ln250_fu_64_p2 );

    SC_METHOD(thread_shl_ln248_1_fu_94_p2);
    sensitive << ( select_ln249_fu_70_p3 );

    SC_METHOD(thread_shl_ln248_2_fu_138_p2);
    sensitive << ( select_ln249_1_fu_114_p3 );

    SC_METHOD(thread_shl_ln248_fu_50_p2);
    sensitive << ( a );

    SC_METHOD(thread_tmp_1_fu_78_p3);
    sensitive << ( b );

    SC_METHOD(thread_tmp_2_fu_100_p3);
    sensitive << ( select_ln249_fu_70_p3 );

    SC_METHOD(thread_tmp_3_fu_122_p3);
    sensitive << ( b );

    SC_METHOD(thread_tmp_4_fu_144_p3);
    sensitive << ( select_ln249_1_fu_114_p3 );

    SC_METHOD(thread_tmp_5_fu_166_p3);
    sensitive << ( b );

    SC_METHOD(thread_tmp_fu_56_p3);
    sensitive << ( a );

    SC_METHOD(thread_trunc_ln245_fu_38_p1);
    sensitive << ( b );

    SC_METHOD(thread_xor_ln245_1_fu_188_p2);
    sensitive << ( xor_ln245_fu_182_p2 );
    sensitive << ( select_ln245_1_fu_86_p3 );

    SC_METHOD(thread_xor_ln245_fu_182_p2);
    sensitive << ( select_ln245_fu_42_p3 );
    sensitive << ( select_ln245_2_fu_130_p3 );

    SC_METHOD(thread_xor_ln250_1_fu_108_p2);
    sensitive << ( shl_ln248_1_fu_94_p2 );

    SC_METHOD(thread_xor_ln250_2_fu_152_p2);
    sensitive << ( shl_ln248_2_fu_138_p2 );

    SC_METHOD(thread_xor_ln250_fu_64_p2);
    sensitive << ( shl_ln248_fu_50_p2 );

    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "galois_multiplicatio_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, a, "(port)a");
    sc_trace(mVcdFile, b, "(port)b");
    sc_trace(mVcdFile, ap_return, "(port)ap_return");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, trunc_ln245_fu_38_p1, "trunc_ln245_fu_38_p1");
    sc_trace(mVcdFile, shl_ln248_fu_50_p2, "shl_ln248_fu_50_p2");
    sc_trace(mVcdFile, tmp_fu_56_p3, "tmp_fu_56_p3");
    sc_trace(mVcdFile, xor_ln250_fu_64_p2, "xor_ln250_fu_64_p2");
    sc_trace(mVcdFile, tmp_1_fu_78_p3, "tmp_1_fu_78_p3");
    sc_trace(mVcdFile, select_ln249_fu_70_p3, "select_ln249_fu_70_p3");
    sc_trace(mVcdFile, shl_ln248_1_fu_94_p2, "shl_ln248_1_fu_94_p2");
    sc_trace(mVcdFile, tmp_2_fu_100_p3, "tmp_2_fu_100_p3");
    sc_trace(mVcdFile, xor_ln250_1_fu_108_p2, "xor_ln250_1_fu_108_p2");
    sc_trace(mVcdFile, tmp_3_fu_122_p3, "tmp_3_fu_122_p3");
    sc_trace(mVcdFile, select_ln249_1_fu_114_p3, "select_ln249_1_fu_114_p3");
    sc_trace(mVcdFile, shl_ln248_2_fu_138_p2, "shl_ln248_2_fu_138_p2");
    sc_trace(mVcdFile, tmp_4_fu_144_p3, "tmp_4_fu_144_p3");
    sc_trace(mVcdFile, xor_ln250_2_fu_152_p2, "xor_ln250_2_fu_152_p2");
    sc_trace(mVcdFile, tmp_5_fu_166_p3, "tmp_5_fu_166_p3");
    sc_trace(mVcdFile, select_ln249_2_fu_158_p3, "select_ln249_2_fu_158_p3");
    sc_trace(mVcdFile, select_ln245_fu_42_p3, "select_ln245_fu_42_p3");
    sc_trace(mVcdFile, select_ln245_2_fu_130_p3, "select_ln245_2_fu_130_p3");
    sc_trace(mVcdFile, xor_ln245_fu_182_p2, "xor_ln245_fu_182_p2");
    sc_trace(mVcdFile, select_ln245_1_fu_86_p3, "select_ln245_1_fu_86_p3");
    sc_trace(mVcdFile, select_ln245_3_fu_174_p3, "select_ln245_3_fu_174_p3");
    sc_trace(mVcdFile, xor_ln245_1_fu_188_p2, "xor_ln245_1_fu_188_p2");
#endif

    }
}

galois_multiplicatio::~galois_multiplicatio() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

}

void galois_multiplicatio::thread_ap_ready() {
    ap_ready = ap_const_logic_1;
}

void galois_multiplicatio::thread_ap_return() {
    ap_return = (select_ln245_3_fu_174_p3.read() ^ xor_ln245_1_fu_188_p2.read());
}

void galois_multiplicatio::thread_select_ln245_1_fu_86_p3() {
    select_ln245_1_fu_86_p3 = (!tmp_1_fu_78_p3.read()[0].is_01())? sc_lv<8>(): ((tmp_1_fu_78_p3.read()[0].to_bool())? select_ln249_fu_70_p3.read(): ap_const_lv8_0);
}

void galois_multiplicatio::thread_select_ln245_2_fu_130_p3() {
    select_ln245_2_fu_130_p3 = (!tmp_3_fu_122_p3.read()[0].is_01())? sc_lv<8>(): ((tmp_3_fu_122_p3.read()[0].to_bool())? select_ln249_1_fu_114_p3.read(): ap_const_lv8_0);
}

void galois_multiplicatio::thread_select_ln245_3_fu_174_p3() {
    select_ln245_3_fu_174_p3 = (!tmp_5_fu_166_p3.read()[0].is_01())? sc_lv<8>(): ((tmp_5_fu_166_p3.read()[0].to_bool())? select_ln249_2_fu_158_p3.read(): ap_const_lv8_0);
}

void galois_multiplicatio::thread_select_ln245_fu_42_p3() {
    select_ln245_fu_42_p3 = (!trunc_ln245_fu_38_p1.read()[0].is_01())? sc_lv<8>(): ((trunc_ln245_fu_38_p1.read()[0].to_bool())? a.read(): ap_const_lv8_0);
}

void galois_multiplicatio::thread_select_ln249_1_fu_114_p3() {
    select_ln249_1_fu_114_p3 = (!tmp_2_fu_100_p3.read()[0].is_01())? sc_lv<8>(): ((tmp_2_fu_100_p3.read()[0].to_bool())? xor_ln250_1_fu_108_p2.read(): shl_ln248_1_fu_94_p2.read());
}

void galois_multiplicatio::thread_select_ln249_2_fu_158_p3() {
    select_ln249_2_fu_158_p3 = (!tmp_4_fu_144_p3.read()[0].is_01())? sc_lv<8>(): ((tmp_4_fu_144_p3.read()[0].to_bool())? xor_ln250_2_fu_152_p2.read(): shl_ln248_2_fu_138_p2.read());
}

void galois_multiplicatio::thread_select_ln249_fu_70_p3() {
    select_ln249_fu_70_p3 = (!tmp_fu_56_p3.read()[0].is_01())? sc_lv<8>(): ((tmp_fu_56_p3.read()[0].to_bool())? xor_ln250_fu_64_p2.read(): shl_ln248_fu_50_p2.read());
}

void galois_multiplicatio::thread_shl_ln248_1_fu_94_p2() {
    shl_ln248_1_fu_94_p2 = (!ap_const_lv8_1.is_01())? sc_lv<8>(): select_ln249_fu_70_p3.read() << (unsigned short)ap_const_lv8_1.to_uint();
}

void galois_multiplicatio::thread_shl_ln248_2_fu_138_p2() {
    shl_ln248_2_fu_138_p2 = (!ap_const_lv8_1.is_01())? sc_lv<8>(): select_ln249_1_fu_114_p3.read() << (unsigned short)ap_const_lv8_1.to_uint();
}

void galois_multiplicatio::thread_shl_ln248_fu_50_p2() {
    shl_ln248_fu_50_p2 = (!ap_const_lv8_1.is_01())? sc_lv<8>(): a.read() << (unsigned short)ap_const_lv8_1.to_uint();
}

void galois_multiplicatio::thread_tmp_1_fu_78_p3() {
    tmp_1_fu_78_p3 = b.read().range(1, 1);
}

void galois_multiplicatio::thread_tmp_2_fu_100_p3() {
    tmp_2_fu_100_p3 = select_ln249_fu_70_p3.read().range(7, 7);
}

void galois_multiplicatio::thread_tmp_3_fu_122_p3() {
    tmp_3_fu_122_p3 = b.read().range(2, 2);
}

void galois_multiplicatio::thread_tmp_4_fu_144_p3() {
    tmp_4_fu_144_p3 = select_ln249_1_fu_114_p3.read().range(7, 7);
}

void galois_multiplicatio::thread_tmp_5_fu_166_p3() {
    tmp_5_fu_166_p3 = b.read().range(3, 3);
}

void galois_multiplicatio::thread_tmp_fu_56_p3() {
    tmp_fu_56_p3 = a.read().range(7, 7);
}

void galois_multiplicatio::thread_trunc_ln245_fu_38_p1() {
    trunc_ln245_fu_38_p1 = b.read().range(1-1, 0);
}

void galois_multiplicatio::thread_xor_ln245_1_fu_188_p2() {
    xor_ln245_1_fu_188_p2 = (xor_ln245_fu_182_p2.read() ^ select_ln245_1_fu_86_p3.read());
}

void galois_multiplicatio::thread_xor_ln245_fu_182_p2() {
    xor_ln245_fu_182_p2 = (select_ln245_fu_42_p3.read() ^ select_ln245_2_fu_130_p3.read());
}

void galois_multiplicatio::thread_xor_ln250_1_fu_108_p2() {
    xor_ln250_1_fu_108_p2 = (shl_ln248_1_fu_94_p2.read() ^ ap_const_lv8_1B);
}

void galois_multiplicatio::thread_xor_ln250_2_fu_152_p2() {
    xor_ln250_2_fu_152_p2 = (shl_ln248_2_fu_138_p2.read() ^ ap_const_lv8_1B);
}

void galois_multiplicatio::thread_xor_ln250_fu_64_p2() {
    xor_ln250_fu_64_p2 = (shl_ln248_fu_50_p2.read() ^ ap_const_lv8_1B);
}

}


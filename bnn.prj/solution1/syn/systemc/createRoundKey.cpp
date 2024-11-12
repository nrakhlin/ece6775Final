// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "createRoundKey.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic createRoundKey::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic createRoundKey::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<4> createRoundKey::ap_ST_fsm_state1 = "1";
const sc_lv<4> createRoundKey::ap_ST_fsm_state2 = "10";
const sc_lv<4> createRoundKey::ap_ST_fsm_state3 = "100";
const sc_lv<4> createRoundKey::ap_ST_fsm_state4 = "1000";
const sc_lv<32> createRoundKey::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> createRoundKey::ap_const_lv32_1 = "1";
const sc_lv<1> createRoundKey::ap_const_lv1_0 = "0";
const sc_lv<32> createRoundKey::ap_const_lv32_2 = "10";
const sc_lv<3> createRoundKey::ap_const_lv3_0 = "000";
const sc_lv<1> createRoundKey::ap_const_lv1_1 = "1";
const sc_lv<32> createRoundKey::ap_const_lv32_3 = "11";
const sc_lv<3> createRoundKey::ap_const_lv3_4 = "100";
const sc_lv<3> createRoundKey::ap_const_lv3_1 = "1";
const sc_lv<2> createRoundKey::ap_const_lv2_0 = "00";
const bool createRoundKey::ap_const_boolean_1 = true;

createRoundKey::createRoundKey(sc_module_name name) : sc_module(name), mVcdFile(0) {
    empty_U = new createRoundKey_embkb("empty_U");
    empty_U->clk(ap_clk);
    empty_U->reset(ap_rst);
    empty_U->address0(empty_address0);
    empty_U->ce0(empty_ce0);
    empty_U->q0(empty_q0);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_add_ln391_1_fu_158_p2);
    sensitive << ( zext_ln387_reg_172 );
    sensitive << ( shl_ln391_1_fu_150_p3 );

    SC_METHOD(thread_add_ln391_2_fu_136_p2);
    sensitive << ( trunc_ln391_reg_167 );
    sensitive << ( zext_ln391_fu_132_p1 );

    SC_METHOD(thread_add_ln391_fu_127_p2);
    sensitive << ( shl_ln_reg_185 );
    sensitive << ( zext_ln390_fu_111_p1 );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state3);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state4);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln387_fu_87_p2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln387_fu_87_p2 );

    SC_METHOD(thread_empty_address0);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( zext_ln391_2_fu_141_p1 );

    SC_METHOD(thread_empty_ce0);
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_i_fu_93_p2);
    sensitive << ( i_0_reg_57 );

    SC_METHOD(thread_icmp_ln387_fu_87_p2);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( i_0_reg_57 );

    SC_METHOD(thread_icmp_ln390_fu_115_p2);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( j_0_reg_68 );

    SC_METHOD(thread_j_fu_121_p2);
    sensitive << ( j_0_reg_68 );

    SC_METHOD(thread_roundKey_address0);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( zext_ln391_1_fu_163_p1 );

    SC_METHOD(thread_roundKey_ce0);
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_roundKey_d0);
    sensitive << ( empty_q0 );
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_roundKey_we0);
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_shl_ln391_1_fu_150_p3);
    sensitive << ( trunc_ln391_2_fu_146_p1 );

    SC_METHOD(thread_shl_ln_fu_103_p3);
    sensitive << ( trunc_ln391_1_fu_99_p1 );

    SC_METHOD(thread_trunc_ln391_1_fu_99_p1);
    sensitive << ( i_0_reg_57 );

    SC_METHOD(thread_trunc_ln391_2_fu_146_p1);
    sensitive << ( j_0_reg_68 );

    SC_METHOD(thread_trunc_ln391_fu_79_p1);
    sensitive << ( expandedKey_offset );

    SC_METHOD(thread_zext_ln387_fu_83_p1);
    sensitive << ( i_0_reg_57 );

    SC_METHOD(thread_zext_ln390_fu_111_p1);
    sensitive << ( j_0_reg_68 );

    SC_METHOD(thread_zext_ln391_1_fu_163_p1);
    sensitive << ( add_ln391_1_reg_203 );

    SC_METHOD(thread_zext_ln391_2_fu_141_p1);
    sensitive << ( add_ln391_2_fu_136_p2 );

    SC_METHOD(thread_zext_ln391_fu_132_p1);
    sensitive << ( add_ln391_fu_127_p2 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln387_fu_87_p2 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( icmp_ln390_fu_115_p2 );

    ap_CS_fsm = "0001";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "createRoundKey_sc_trace_" << apTFileNum ++;
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
    sc_trace(mVcdFile, expandedKey_offset, "(port)expandedKey_offset");
    sc_trace(mVcdFile, roundKey_address0, "(port)roundKey_address0");
    sc_trace(mVcdFile, roundKey_ce0, "(port)roundKey_ce0");
    sc_trace(mVcdFile, roundKey_we0, "(port)roundKey_we0");
    sc_trace(mVcdFile, roundKey_d0, "(port)roundKey_d0");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, empty_address0, "empty_address0");
    sc_trace(mVcdFile, empty_ce0, "empty_ce0");
    sc_trace(mVcdFile, empty_q0, "empty_q0");
    sc_trace(mVcdFile, trunc_ln391_fu_79_p1, "trunc_ln391_fu_79_p1");
    sc_trace(mVcdFile, trunc_ln391_reg_167, "trunc_ln391_reg_167");
    sc_trace(mVcdFile, zext_ln387_fu_83_p1, "zext_ln387_fu_83_p1");
    sc_trace(mVcdFile, zext_ln387_reg_172, "zext_ln387_reg_172");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, i_fu_93_p2, "i_fu_93_p2");
    sc_trace(mVcdFile, i_reg_180, "i_reg_180");
    sc_trace(mVcdFile, shl_ln_fu_103_p3, "shl_ln_fu_103_p3");
    sc_trace(mVcdFile, shl_ln_reg_185, "shl_ln_reg_185");
    sc_trace(mVcdFile, icmp_ln387_fu_87_p2, "icmp_ln387_fu_87_p2");
    sc_trace(mVcdFile, j_fu_121_p2, "j_fu_121_p2");
    sc_trace(mVcdFile, j_reg_193, "j_reg_193");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, icmp_ln390_fu_115_p2, "icmp_ln390_fu_115_p2");
    sc_trace(mVcdFile, add_ln391_1_fu_158_p2, "add_ln391_1_fu_158_p2");
    sc_trace(mVcdFile, add_ln391_1_reg_203, "add_ln391_1_reg_203");
    sc_trace(mVcdFile, i_0_reg_57, "i_0_reg_57");
    sc_trace(mVcdFile, j_0_reg_68, "j_0_reg_68");
    sc_trace(mVcdFile, ap_CS_fsm_state4, "ap_CS_fsm_state4");
    sc_trace(mVcdFile, zext_ln391_2_fu_141_p1, "zext_ln391_2_fu_141_p1");
    sc_trace(mVcdFile, zext_ln391_1_fu_163_p1, "zext_ln391_1_fu_163_p1");
    sc_trace(mVcdFile, trunc_ln391_1_fu_99_p1, "trunc_ln391_1_fu_99_p1");
    sc_trace(mVcdFile, zext_ln390_fu_111_p1, "zext_ln390_fu_111_p1");
    sc_trace(mVcdFile, add_ln391_fu_127_p2, "add_ln391_fu_127_p2");
    sc_trace(mVcdFile, zext_ln391_fu_132_p1, "zext_ln391_fu_132_p1");
    sc_trace(mVcdFile, add_ln391_2_fu_136_p2, "add_ln391_2_fu_136_p2");
    sc_trace(mVcdFile, trunc_ln391_2_fu_146_p1, "trunc_ln391_2_fu_146_p1");
    sc_trace(mVcdFile, shl_ln391_1_fu_150_p3, "shl_ln391_1_fu_150_p3");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

createRoundKey::~createRoundKey() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    delete empty_U;
}

void createRoundKey::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
         esl_seteq<1,1,1>(icmp_ln390_fu_115_p2.read(), ap_const_lv1_1))) {
        i_0_reg_57 = i_reg_180.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        i_0_reg_57 = ap_const_lv3_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(icmp_ln387_fu_87_p2.read(), ap_const_lv1_0))) {
        j_0_reg_68 = ap_const_lv3_0;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        j_0_reg_68 = j_reg_193.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln390_fu_115_p2.read()))) {
        add_ln391_1_reg_203 = add_ln391_1_fu_158_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        i_reg_180 = i_fu_93_p2.read();
        zext_ln387_reg_172 = zext_ln387_fu_83_p1.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        j_reg_193 = j_fu_121_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(icmp_ln387_fu_87_p2.read(), ap_const_lv1_0))) {
        shl_ln_reg_185 = shl_ln_fu_103_p3.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        trunc_ln391_reg_167 = trunc_ln391_fu_79_p1.read();
    }
}

void createRoundKey::thread_add_ln391_1_fu_158_p2() {
    add_ln391_1_fu_158_p2 = (!shl_ln391_1_fu_150_p3.read().is_01() || !zext_ln387_reg_172.read().is_01())? sc_lv<4>(): (sc_biguint<4>(shl_ln391_1_fu_150_p3.read()) + sc_biguint<4>(zext_ln387_reg_172.read()));
}

void createRoundKey::thread_add_ln391_2_fu_136_p2() {
    add_ln391_2_fu_136_p2 = (!trunc_ln391_reg_167.read().is_01() || !zext_ln391_fu_132_p1.read().is_01())? sc_lv<8>(): (sc_biguint<8>(trunc_ln391_reg_167.read()) + sc_biguint<8>(zext_ln391_fu_132_p1.read()));
}

void createRoundKey::thread_add_ln391_fu_127_p2() {
    add_ln391_fu_127_p2 = (!zext_ln390_fu_111_p1.read().is_01() || !shl_ln_reg_185.read().is_01())? sc_lv<4>(): (sc_biguint<4>(zext_ln390_fu_111_p1.read()) + sc_biguint<4>(shl_ln_reg_185.read()));
}

void createRoundKey::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void createRoundKey::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void createRoundKey::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void createRoundKey::thread_ap_CS_fsm_state4() {
    ap_CS_fsm_state4 = ap_CS_fsm.read()[3];
}

void createRoundKey::thread_ap_done() {
    if (((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          esl_seteq<1,1,1>(icmp_ln387_fu_87_p2.read(), ap_const_lv1_1)))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void createRoundKey::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void createRoundKey::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(icmp_ln387_fu_87_p2.read(), ap_const_lv1_1))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void createRoundKey::thread_empty_address0() {
    empty_address0 =  (sc_lv<8>) (zext_ln391_2_fu_141_p1.read());
}

void createRoundKey::thread_empty_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        empty_ce0 = ap_const_logic_1;
    } else {
        empty_ce0 = ap_const_logic_0;
    }
}

void createRoundKey::thread_i_fu_93_p2() {
    i_fu_93_p2 = (!i_0_reg_57.read().is_01() || !ap_const_lv3_1.is_01())? sc_lv<3>(): (sc_biguint<3>(i_0_reg_57.read()) + sc_biguint<3>(ap_const_lv3_1));
}

void createRoundKey::thread_icmp_ln387_fu_87_p2() {
    icmp_ln387_fu_87_p2 = (!i_0_reg_57.read().is_01() || !ap_const_lv3_4.is_01())? sc_lv<1>(): sc_lv<1>(i_0_reg_57.read() == ap_const_lv3_4);
}

void createRoundKey::thread_icmp_ln390_fu_115_p2() {
    icmp_ln390_fu_115_p2 = (!j_0_reg_68.read().is_01() || !ap_const_lv3_4.is_01())? sc_lv<1>(): sc_lv<1>(j_0_reg_68.read() == ap_const_lv3_4);
}

void createRoundKey::thread_j_fu_121_p2() {
    j_fu_121_p2 = (!j_0_reg_68.read().is_01() || !ap_const_lv3_1.is_01())? sc_lv<3>(): (sc_biguint<3>(j_0_reg_68.read()) + sc_biguint<3>(ap_const_lv3_1));
}

void createRoundKey::thread_roundKey_address0() {
    roundKey_address0 =  (sc_lv<4>) (zext_ln391_1_fu_163_p1.read());
}

void createRoundKey::thread_roundKey_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        roundKey_ce0 = ap_const_logic_1;
    } else {
        roundKey_ce0 = ap_const_logic_0;
    }
}

void createRoundKey::thread_roundKey_d0() {
    roundKey_d0 = empty_q0.read();
}

void createRoundKey::thread_roundKey_we0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        roundKey_we0 = ap_const_logic_1;
    } else {
        roundKey_we0 = ap_const_logic_0;
    }
}

void createRoundKey::thread_shl_ln391_1_fu_150_p3() {
    shl_ln391_1_fu_150_p3 = esl_concat<2,2>(trunc_ln391_2_fu_146_p1.read(), ap_const_lv2_0);
}

void createRoundKey::thread_shl_ln_fu_103_p3() {
    shl_ln_fu_103_p3 = esl_concat<2,2>(trunc_ln391_1_fu_99_p1.read(), ap_const_lv2_0);
}

void createRoundKey::thread_trunc_ln391_1_fu_99_p1() {
    trunc_ln391_1_fu_99_p1 = i_0_reg_57.read().range(2-1, 0);
}

void createRoundKey::thread_trunc_ln391_2_fu_146_p1() {
    trunc_ln391_2_fu_146_p1 = j_0_reg_68.read().range(2-1, 0);
}

void createRoundKey::thread_trunc_ln391_fu_79_p1() {
    trunc_ln391_fu_79_p1 = expandedKey_offset.read().range(8-1, 0);
}

void createRoundKey::thread_zext_ln387_fu_83_p1() {
    zext_ln387_fu_83_p1 = esl_zext<4,3>(i_0_reg_57.read());
}

void createRoundKey::thread_zext_ln390_fu_111_p1() {
    zext_ln390_fu_111_p1 = esl_zext<4,3>(j_0_reg_68.read());
}

void createRoundKey::thread_zext_ln391_1_fu_163_p1() {
    zext_ln391_1_fu_163_p1 = esl_zext<64,4>(add_ln391_1_reg_203.read());
}

void createRoundKey::thread_zext_ln391_2_fu_141_p1() {
    zext_ln391_2_fu_141_p1 = esl_zext<64,8>(add_ln391_2_fu_136_p2.read());
}

void createRoundKey::thread_zext_ln391_fu_132_p1() {
    zext_ln391_fu_132_p1 = esl_zext<8,4>(add_ln391_fu_127_p2.read());
}

void createRoundKey::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(icmp_ln387_fu_87_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else {
                ap_NS_fsm = ap_ST_fsm_state3;
            }
            break;
        case 4 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && esl_seteq<1,1,1>(icmp_ln390_fu_115_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state4;
            }
            break;
        case 8 : 
            ap_NS_fsm = ap_ST_fsm_state3;
            break;
        default : 
            ap_NS_fsm = "XXXX";
            break;
    }
}

}


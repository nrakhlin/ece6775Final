// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _Blowfish_Encrypt_Decrypt_SetKey_HH_
#define _Blowfish_Encrypt_Decrypt_SetKey_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "SetKey.h"
#include "Decrypt.h"
#include "Encrypt.h"

namespace ap_rtl {

struct Blowfish_Encrypt_Decrypt_SetKey : public sc_module {
    // Port declarations 57
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<5> > Blowfish_pary_s_address0;
    sc_out< sc_logic > Blowfish_pary_s_ce0;
    sc_out< sc_logic > Blowfish_pary_s_we0;
    sc_out< sc_lv<32> > Blowfish_pary_s_d0;
    sc_in< sc_lv<32> > Blowfish_pary_s_q0;
    sc_out< sc_lv<5> > Blowfish_pary_s_address1;
    sc_out< sc_logic > Blowfish_pary_s_ce1;
    sc_out< sc_logic > Blowfish_pary_s_we1;
    sc_out< sc_lv<32> > Blowfish_pary_s_d1;
    sc_in< sc_lv<32> > Blowfish_pary_s_q1;
    sc_out< sc_lv<10> > Blowfish_sbox_s_address0;
    sc_out< sc_logic > Blowfish_sbox_s_ce0;
    sc_out< sc_logic > Blowfish_sbox_s_we0;
    sc_out< sc_lv<32> > Blowfish_sbox_s_d0;
    sc_in< sc_lv<32> > Blowfish_sbox_s_q0;
    sc_out< sc_lv<10> > Blowfish_sbox_s_address1;
    sc_out< sc_logic > Blowfish_sbox_s_ce1;
    sc_out< sc_logic > Blowfish_sbox_s_we1;
    sc_out< sc_lv<32> > Blowfish_sbox_s_d1;
    sc_in< sc_lv<32> > Blowfish_sbox_s_q1;
    sc_in< sc_logic > set_key;
    sc_out< sc_lv<6> > key_address0;
    sc_out< sc_logic > key_ce0;
    sc_in< sc_lv<8> > key_q0;
    sc_out< sc_lv<6> > key_address1;
    sc_out< sc_logic > key_ce1;
    sc_in< sc_lv<8> > key_q1;
    sc_in< sc_lv<32> > key_byte_length;
    sc_out< sc_lv<3> > decrypted_address0;
    sc_out< sc_logic > decrypted_ce0;
    sc_out< sc_logic > decrypted_we0;
    sc_out< sc_lv<8> > decrypted_d0;
    sc_in< sc_lv<8> > decrypted_q0;
    sc_out< sc_lv<3> > decrypted_address1;
    sc_out< sc_logic > decrypted_ce1;
    sc_out< sc_logic > decrypted_we1;
    sc_out< sc_lv<8> > decrypted_d1;
    sc_in< sc_lv<8> > decrypted_q1;
    sc_out< sc_lv<3> > encrypted_address0;
    sc_out< sc_logic > encrypted_ce0;
    sc_out< sc_logic > encrypted_we0;
    sc_out< sc_lv<8> > encrypted_d0;
    sc_in< sc_lv<8> > encrypted_q0;
    sc_out< sc_lv<3> > encrypted_address1;
    sc_out< sc_logic > encrypted_ce1;
    sc_out< sc_logic > encrypted_we1;
    sc_out< sc_lv<8> > encrypted_d1;
    sc_in< sc_lv<8> > encrypted_q1;
    sc_out< sc_lv<3> > plaintext_address0;
    sc_out< sc_logic > plaintext_ce0;
    sc_in< sc_lv<8> > plaintext_q0;


    // Module declarations
    Blowfish_Encrypt_Decrypt_SetKey(sc_module_name name);
    SC_HAS_PROCESS(Blowfish_Encrypt_Decrypt_SetKey);

    ~Blowfish_Encrypt_Decrypt_SetKey();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    SetKey* grp_SetKey_fu_48;
    Decrypt* grp_Decrypt_fu_64;
    Encrypt* grp_Encrypt_fu_76;
    sc_signal< sc_lv<6> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > grp_SetKey_fu_48_ap_start;
    sc_signal< sc_logic > grp_SetKey_fu_48_ap_done;
    sc_signal< sc_logic > grp_SetKey_fu_48_ap_idle;
    sc_signal< sc_logic > grp_SetKey_fu_48_ap_ready;
    sc_signal< sc_lv<5> > grp_SetKey_fu_48_Blowfish_pary_s_address0;
    sc_signal< sc_logic > grp_SetKey_fu_48_Blowfish_pary_s_ce0;
    sc_signal< sc_logic > grp_SetKey_fu_48_Blowfish_pary_s_we0;
    sc_signal< sc_lv<32> > grp_SetKey_fu_48_Blowfish_pary_s_d0;
    sc_signal< sc_lv<5> > grp_SetKey_fu_48_Blowfish_pary_s_address1;
    sc_signal< sc_logic > grp_SetKey_fu_48_Blowfish_pary_s_ce1;
    sc_signal< sc_logic > grp_SetKey_fu_48_Blowfish_pary_s_we1;
    sc_signal< sc_lv<32> > grp_SetKey_fu_48_Blowfish_pary_s_d1;
    sc_signal< sc_lv<10> > grp_SetKey_fu_48_Blowfish_sbox_s_address0;
    sc_signal< sc_logic > grp_SetKey_fu_48_Blowfish_sbox_s_ce0;
    sc_signal< sc_logic > grp_SetKey_fu_48_Blowfish_sbox_s_we0;
    sc_signal< sc_lv<32> > grp_SetKey_fu_48_Blowfish_sbox_s_d0;
    sc_signal< sc_lv<10> > grp_SetKey_fu_48_Blowfish_sbox_s_address1;
    sc_signal< sc_logic > grp_SetKey_fu_48_Blowfish_sbox_s_ce1;
    sc_signal< sc_logic > grp_SetKey_fu_48_Blowfish_sbox_s_we1;
    sc_signal< sc_lv<32> > grp_SetKey_fu_48_Blowfish_sbox_s_d1;
    sc_signal< sc_lv<6> > grp_SetKey_fu_48_key_address0;
    sc_signal< sc_logic > grp_SetKey_fu_48_key_ce0;
    sc_signal< sc_lv<6> > grp_SetKey_fu_48_key_address1;
    sc_signal< sc_logic > grp_SetKey_fu_48_key_ce1;
    sc_signal< sc_logic > grp_Decrypt_fu_64_ap_start;
    sc_signal< sc_logic > grp_Decrypt_fu_64_ap_done;
    sc_signal< sc_logic > grp_Decrypt_fu_64_ap_idle;
    sc_signal< sc_logic > grp_Decrypt_fu_64_ap_ready;
    sc_signal< sc_lv<5> > grp_Decrypt_fu_64_Blowfish_pary_s_address0;
    sc_signal< sc_logic > grp_Decrypt_fu_64_Blowfish_pary_s_ce0;
    sc_signal< sc_lv<10> > grp_Decrypt_fu_64_Blowfish_sbox_s_address0;
    sc_signal< sc_logic > grp_Decrypt_fu_64_Blowfish_sbox_s_ce0;
    sc_signal< sc_lv<10> > grp_Decrypt_fu_64_Blowfish_sbox_s_address1;
    sc_signal< sc_logic > grp_Decrypt_fu_64_Blowfish_sbox_s_ce1;
    sc_signal< sc_lv<3> > grp_Decrypt_fu_64_dst_address0;
    sc_signal< sc_logic > grp_Decrypt_fu_64_dst_ce0;
    sc_signal< sc_logic > grp_Decrypt_fu_64_dst_we0;
    sc_signal< sc_lv<8> > grp_Decrypt_fu_64_dst_d0;
    sc_signal< sc_lv<3> > grp_Decrypt_fu_64_dst_address1;
    sc_signal< sc_logic > grp_Decrypt_fu_64_dst_ce1;
    sc_signal< sc_logic > grp_Decrypt_fu_64_dst_we1;
    sc_signal< sc_lv<8> > grp_Decrypt_fu_64_dst_d1;
    sc_signal< sc_lv<3> > grp_Decrypt_fu_64_src_address0;
    sc_signal< sc_logic > grp_Decrypt_fu_64_src_ce0;
    sc_signal< sc_logic > grp_Encrypt_fu_76_ap_start;
    sc_signal< sc_logic > grp_Encrypt_fu_76_ap_done;
    sc_signal< sc_logic > grp_Encrypt_fu_76_ap_idle;
    sc_signal< sc_logic > grp_Encrypt_fu_76_ap_ready;
    sc_signal< sc_lv<5> > grp_Encrypt_fu_76_Blowfish_pary_s_address0;
    sc_signal< sc_logic > grp_Encrypt_fu_76_Blowfish_pary_s_ce0;
    sc_signal< sc_lv<10> > grp_Encrypt_fu_76_Blowfish_sbox_s_address0;
    sc_signal< sc_logic > grp_Encrypt_fu_76_Blowfish_sbox_s_ce0;
    sc_signal< sc_lv<10> > grp_Encrypt_fu_76_Blowfish_sbox_s_address1;
    sc_signal< sc_logic > grp_Encrypt_fu_76_Blowfish_sbox_s_ce1;
    sc_signal< sc_lv<3> > grp_Encrypt_fu_76_dst_address0;
    sc_signal< sc_logic > grp_Encrypt_fu_76_dst_ce0;
    sc_signal< sc_logic > grp_Encrypt_fu_76_dst_we0;
    sc_signal< sc_lv<8> > grp_Encrypt_fu_76_dst_d0;
    sc_signal< sc_lv<3> > grp_Encrypt_fu_76_dst_address1;
    sc_signal< sc_logic > grp_Encrypt_fu_76_dst_ce1;
    sc_signal< sc_logic > grp_Encrypt_fu_76_dst_we1;
    sc_signal< sc_lv<8> > grp_Encrypt_fu_76_dst_d1;
    sc_signal< sc_lv<3> > grp_Encrypt_fu_76_src_address0;
    sc_signal< sc_logic > grp_Encrypt_fu_76_src_ce0;
    sc_signal< sc_logic > grp_SetKey_fu_48_ap_start_reg;
    sc_signal< sc_lv<1> > set_key_read_read_fu_42_p2;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_logic > grp_Decrypt_fu_64_ap_start_reg;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_logic > grp_Encrypt_fu_76_ap_start_reg;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<6> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<6> ap_ST_fsm_state1;
    static const sc_lv<6> ap_ST_fsm_state2;
    static const sc_lv<6> ap_ST_fsm_state3;
    static const sc_lv<6> ap_ST_fsm_state4;
    static const sc_lv<6> ap_ST_fsm_state5;
    static const sc_lv<6> ap_ST_fsm_state6;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<1> ap_const_lv1_0;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_Blowfish_pary_s_address0();
    void thread_Blowfish_pary_s_address1();
    void thread_Blowfish_pary_s_ce0();
    void thread_Blowfish_pary_s_ce1();
    void thread_Blowfish_pary_s_d0();
    void thread_Blowfish_pary_s_d1();
    void thread_Blowfish_pary_s_we0();
    void thread_Blowfish_pary_s_we1();
    void thread_Blowfish_sbox_s_address0();
    void thread_Blowfish_sbox_s_address1();
    void thread_Blowfish_sbox_s_ce0();
    void thread_Blowfish_sbox_s_ce1();
    void thread_Blowfish_sbox_s_d0();
    void thread_Blowfish_sbox_s_d1();
    void thread_Blowfish_sbox_s_we0();
    void thread_Blowfish_sbox_s_we1();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_decrypted_address0();
    void thread_decrypted_address1();
    void thread_decrypted_ce0();
    void thread_decrypted_ce1();
    void thread_decrypted_d0();
    void thread_decrypted_d1();
    void thread_decrypted_we0();
    void thread_decrypted_we1();
    void thread_encrypted_address0();
    void thread_encrypted_address1();
    void thread_encrypted_ce0();
    void thread_encrypted_ce1();
    void thread_encrypted_d0();
    void thread_encrypted_d1();
    void thread_encrypted_we0();
    void thread_encrypted_we1();
    void thread_grp_Decrypt_fu_64_ap_start();
    void thread_grp_Encrypt_fu_76_ap_start();
    void thread_grp_SetKey_fu_48_ap_start();
    void thread_key_address0();
    void thread_key_address1();
    void thread_key_ce0();
    void thread_key_ce1();
    void thread_plaintext_address0();
    void thread_plaintext_ce0();
    void thread_set_key_read_read_fu_42_p2();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif

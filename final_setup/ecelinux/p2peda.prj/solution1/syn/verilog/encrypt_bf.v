// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module encrypt_bf (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        plaintext_V,
        P_0,
        P_1,
        P_2,
        P_3,
        P_4,
        P_5,
        P_6,
        P_7,
        P_8,
        P_9,
        P_10,
        P_11,
        P_12,
        P_13,
        P_14,
        P_15,
        P_16,
        P_17,
        S_0_address0,
        S_0_ce0,
        S_0_q0,
        S_1_address0,
        S_1_ce0,
        S_1_q0,
        S_2_address0,
        S_2_ce0,
        S_2_q0,
        S_3_address0,
        S_3_ce0,
        S_3_q0,
        ap_return
);

parameter    ap_ST_fsm_state1 = 12'd1;
parameter    ap_ST_fsm_state2 = 12'd2;
parameter    ap_ST_fsm_state3 = 12'd4;
parameter    ap_ST_fsm_state4 = 12'd8;
parameter    ap_ST_fsm_state5 = 12'd16;
parameter    ap_ST_fsm_state6 = 12'd32;
parameter    ap_ST_fsm_state7 = 12'd64;
parameter    ap_ST_fsm_state8 = 12'd128;
parameter    ap_ST_fsm_state9 = 12'd256;
parameter    ap_ST_fsm_state10 = 12'd512;
parameter    ap_ST_fsm_state11 = 12'd1024;
parameter    ap_ST_fsm_state12 = 12'd2048;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [127:0] plaintext_V;
input  [31:0] P_0;
input  [31:0] P_1;
input  [31:0] P_2;
input  [31:0] P_3;
input  [31:0] P_4;
input  [31:0] P_5;
input  [31:0] P_6;
input  [31:0] P_7;
input  [31:0] P_8;
input  [31:0] P_9;
input  [31:0] P_10;
input  [31:0] P_11;
input  [31:0] P_12;
input  [31:0] P_13;
input  [31:0] P_14;
input  [31:0] P_15;
input  [31:0] P_16;
input  [31:0] P_17;
output  [7:0] S_0_address0;
output   S_0_ce0;
input  [31:0] S_0_q0;
output  [7:0] S_1_address0;
output   S_1_ce0;
input  [31:0] S_1_q0;
output  [7:0] S_2_address0;
output   S_2_ce0;
input  [31:0] S_2_q0;
output  [7:0] S_3_address0;
output   S_3_ce0;
input  [31:0] S_3_q0;
output  [127:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg S_0_ce0;
reg S_1_ce0;
reg S_2_ce0;
reg S_3_ce0;
reg[127:0] ap_return;

(* fsm_encoding = "none" *) reg   [11:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [31:0] reg_359;
wire    ap_CS_fsm_state4;
wire   [0:0] icmp_ln279_fu_597_p2;
wire    ap_CS_fsm_state7;
reg   [31:0] reg_364;
reg   [31:0] reg_369;
reg   [31:0] reg_374;
reg   [31:0] reg_379;
reg   [31:0] reg_384;
reg   [31:0] reg_389;
reg   [31:0] reg_394;
reg   [31:0] reg_399;
reg   [31:0] reg_404;
reg   [31:0] reg_409;
reg   [31:0] reg_414;
reg   [31:0] reg_419;
reg   [31:0] reg_424;
reg   [31:0] reg_429;
reg   [31:0] reg_434;
reg   [31:0] reg_439;
reg   [31:0] reg_444;
wire   [63:0] lower_64_V_fu_449_p1;
reg   [63:0] lower_64_V_reg_1086;
reg   [63:0] upper_64_V_reg_1091;
wire   [3:0] i_fu_469_p2;
reg   [3:0] i_reg_1099;
wire    ap_CS_fsm_state2;
wire   [6:0] sub_ln681_2_fu_557_p2;
reg   [6:0] sub_ln681_2_reg_1104;
wire   [0:0] icmp_ln271_fu_463_p2;
wire   [63:0] lshr_ln681_fu_567_p2;
reg   [63:0] lshr_ln681_reg_1109;
wire   [3:0] i_1_fu_603_p2;
reg   [3:0] i_1_reg_1117;
wire   [6:0] sub_ln681_5_fu_691_p2;
reg   [6:0] sub_ln681_5_reg_1122;
wire   [63:0] lshr_ln681_2_fu_701_p2;
reg   [63:0] lshr_ln681_2_reg_1127;
wire   [3:0] i_2_fu_737_p2;
reg   [3:0] i_2_reg_1135;
wire    ap_CS_fsm_state9;
wire   [2:0] trunc_ln293_fu_743_p1;
reg   [2:0] trunc_ln293_reg_1140;
wire   [0:0] icmp_ln292_fu_731_p2;
wire   [127:0] p_Result_4_fu_891_p2;
wire    ap_CS_fsm_state10;
wire   [3:0] i_3_fu_903_p2;
reg   [3:0] i_3_reg_1158;
wire    ap_CS_fsm_state11;
wire   [2:0] trunc_ln298_fu_909_p1;
reg   [2:0] trunc_ln298_reg_1163;
wire   [0:0] icmp_ln297_fu_897_p2;
wire   [127:0] p_Result_5_fu_1074_p2;
wire    ap_CS_fsm_state12;
reg   [2:0] plaintext1_address0;
reg    plaintext1_ce0;
reg    plaintext1_we0;
wire   [7:0] plaintext1_d0;
wire   [7:0] plaintext1_q0;
reg    plaintext1_ce1;
wire   [7:0] plaintext1_q1;
reg   [2:0] plaintext2_address0;
reg    plaintext2_ce0;
reg    plaintext2_we0;
wire   [7:0] plaintext2_d0;
wire   [7:0] plaintext2_q0;
reg    plaintext2_ce1;
wire   [7:0] plaintext2_q1;
reg   [2:0] ciphertext1_address0;
reg    ciphertext1_ce0;
reg    ciphertext1_we0;
wire   [7:0] ciphertext1_q0;
reg    ciphertext1_ce1;
reg    ciphertext1_we1;
reg   [2:0] ciphertext2_address0;
reg    ciphertext2_ce0;
reg    ciphertext2_we0;
wire   [7:0] ciphertext2_q0;
reg    ciphertext2_ce1;
reg    ciphertext2_we1;
wire    grp_Blowfish_Encrypt_fu_237_ap_start;
wire    grp_Blowfish_Encrypt_fu_237_ap_done;
wire    grp_Blowfish_Encrypt_fu_237_ap_idle;
wire    grp_Blowfish_Encrypt_fu_237_ap_ready;
wire   [2:0] grp_Blowfish_Encrypt_fu_237_plaintext_address0;
wire    grp_Blowfish_Encrypt_fu_237_plaintext_ce0;
reg   [7:0] grp_Blowfish_Encrypt_fu_237_plaintext_q0;
wire   [2:0] grp_Blowfish_Encrypt_fu_237_plaintext_address1;
wire    grp_Blowfish_Encrypt_fu_237_plaintext_ce1;
reg   [7:0] grp_Blowfish_Encrypt_fu_237_plaintext_q1;
wire   [2:0] grp_Blowfish_Encrypt_fu_237_ciphertext_address0;
wire    grp_Blowfish_Encrypt_fu_237_ciphertext_ce0;
wire    grp_Blowfish_Encrypt_fu_237_ciphertext_we0;
wire   [7:0] grp_Blowfish_Encrypt_fu_237_ciphertext_d0;
wire   [2:0] grp_Blowfish_Encrypt_fu_237_ciphertext_address1;
wire    grp_Blowfish_Encrypt_fu_237_ciphertext_ce1;
wire    grp_Blowfish_Encrypt_fu_237_ciphertext_we1;
wire   [7:0] grp_Blowfish_Encrypt_fu_237_ciphertext_d1;
wire   [7:0] grp_Blowfish_Encrypt_fu_237_S_0_address0;
wire    grp_Blowfish_Encrypt_fu_237_S_0_ce0;
wire   [7:0] grp_Blowfish_Encrypt_fu_237_S_1_address0;
wire    grp_Blowfish_Encrypt_fu_237_S_1_ce0;
wire   [7:0] grp_Blowfish_Encrypt_fu_237_S_2_address0;
wire    grp_Blowfish_Encrypt_fu_237_S_2_ce0;
wire   [7:0] grp_Blowfish_Encrypt_fu_237_S_3_address0;
wire    grp_Blowfish_Encrypt_fu_237_S_3_ce0;
reg   [3:0] i_0_i_reg_168;
wire    ap_CS_fsm_state3;
reg   [3:0] i1_0_i_reg_180;
wire    ap_CS_fsm_state5;
reg   [127:0] p_Val2_2_reg_192;
wire    ap_CS_fsm_state8;
reg   [3:0] i_0_i25_reg_204;
reg   [127:0] p_Val2_3_reg_215;
reg   [3:0] i1_0_i31_reg_226;
reg    grp_Blowfish_Encrypt_fu_237_ap_start_reg;
wire    ap_CS_fsm_state6;
wire   [63:0] zext_ln275_fu_592_p1;
wire   [63:0] zext_ln283_fu_726_p1;
wire   [63:0] zext_ln293_fu_747_p1;
wire   [63:0] zext_ln298_fu_913_p1;
wire   [2:0] trunc_ln275_fu_475_p1;
wire   [5:0] Lo_assign_fu_479_p3;
wire   [5:0] or_ln275_fu_487_p2;
wire   [6:0] zext_ln681_fu_499_p1;
wire   [6:0] zext_ln681_1_fu_503_p1;
wire   [0:0] icmp_ln681_fu_493_p2;
wire   [6:0] sub_ln681_fu_516_p2;
wire   [6:0] sub_ln681_1_fu_528_p2;
reg   [63:0] tmp_fu_507_p4;
wire   [6:0] xor_ln681_fu_522_p2;
wire   [6:0] select_ln681_fu_534_p3;
wire   [6:0] select_ln681_2_fu_549_p3;
wire   [63:0] select_ln681_1_fu_542_p3;
wire   [63:0] zext_ln681_2_fu_563_p1;
wire   [63:0] zext_ln681_3_fu_573_p1;
wire   [63:0] lshr_ln681_1_fu_576_p2;
wire   [63:0] p_Result_s_fu_582_p2;
wire   [2:0] trunc_ln283_fu_609_p1;
wire   [5:0] Lo_assign_1_fu_613_p3;
wire   [5:0] or_ln283_fu_621_p2;
wire   [6:0] zext_ln681_4_fu_633_p1;
wire   [6:0] zext_ln681_5_fu_637_p1;
wire   [0:0] icmp_ln681_1_fu_627_p2;
wire   [6:0] sub_ln681_3_fu_650_p2;
wire   [6:0] sub_ln681_4_fu_662_p2;
reg   [63:0] tmp_6_fu_641_p4;
wire   [6:0] xor_ln681_1_fu_656_p2;
wire   [6:0] select_ln681_3_fu_668_p3;
wire   [6:0] select_ln681_5_fu_683_p3;
wire   [63:0] select_ln681_4_fu_676_p3;
wire   [63:0] zext_ln681_6_fu_697_p1;
wire   [63:0] zext_ln681_7_fu_707_p1;
wire   [63:0] lshr_ln681_3_fu_710_p2;
wire   [63:0] p_Result_1_fu_716_p2;
wire   [5:0] Lo_assign_2_fu_752_p3;
wire   [5:0] or_ln293_fu_759_p2;
wire   [7:0] zext_ln388_fu_775_p1;
wire   [0:0] icmp_ln388_fu_769_p2;
wire   [7:0] zext_ln388_1_fu_779_p1;
wire   [7:0] xor_ln388_fu_783_p2;
wire   [7:0] select_ln388_fu_789_p3;
wire   [7:0] select_ln388_2_fu_805_p3;
wire   [7:0] select_ln388_1_fu_797_p3;
wire   [7:0] xor_ln388_1_fu_813_p2;
wire   [127:0] tmp_V_fu_765_p1;
wire   [127:0] zext_ln388_2_fu_819_p1;
wire   [127:0] shl_ln388_fu_831_p2;
reg   [127:0] tmp_7_fu_837_p4;
wire   [127:0] zext_ln388_3_fu_823_p1;
wire   [127:0] zext_ln388_4_fu_827_p1;
wire   [127:0] shl_ln388_1_fu_855_p2;
wire   [127:0] lshr_ln388_fu_861_p2;
wire   [127:0] and_ln388_fu_867_p2;
wire   [127:0] xor_ln388_2_fu_873_p2;
wire   [127:0] select_ln388_3_fu_847_p3;
wire   [127:0] and_ln388_1_fu_879_p2;
wire   [127:0] and_ln388_2_fu_885_p2;
wire   [5:0] shl_ln_fu_918_p3;
wire   [5:0] or_ln298_fu_925_p2;
wire   [6:0] Lo_assign_3_fu_939_p4;
wire   [6:0] Hi_assign_3_fu_931_p3;
wire   [7:0] zext_ln388_5_fu_958_p1;
wire   [0:0] icmp_ln388_1_fu_952_p2;
wire   [7:0] zext_ln388_6_fu_962_p1;
wire   [7:0] xor_ln388_3_fu_966_p2;
wire   [7:0] select_ln388_4_fu_972_p3;
wire   [7:0] select_ln388_6_fu_988_p3;
wire   [7:0] select_ln388_5_fu_980_p3;
wire   [7:0] xor_ln388_4_fu_996_p2;
wire   [127:0] tmp_V_1_fu_948_p1;
wire   [127:0] zext_ln388_7_fu_1002_p1;
wire   [127:0] shl_ln388_2_fu_1014_p2;
reg   [127:0] tmp_8_fu_1020_p4;
wire   [127:0] zext_ln388_8_fu_1006_p1;
wire   [127:0] zext_ln388_9_fu_1010_p1;
wire   [127:0] shl_ln388_3_fu_1038_p2;
wire   [127:0] lshr_ln388_1_fu_1044_p2;
wire   [127:0] and_ln388_3_fu_1050_p2;
wire   [127:0] xor_ln388_5_fu_1056_p2;
wire   [127:0] select_ln388_7_fu_1030_p3;
wire   [127:0] and_ln388_4_fu_1062_p2;
wire   [127:0] and_ln388_5_fu_1068_p2;
reg   [127:0] ap_return_preg;
reg   [11:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 12'd1;
#0 grp_Blowfish_Encrypt_fu_237_ap_start_reg = 1'b0;
#0 ap_return_preg = 128'd0;
end

decrypt_bf_ciphercud #(
    .DataWidth( 8 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
plaintext1_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(plaintext1_address0),
    .ce0(plaintext1_ce0),
    .we0(plaintext1_we0),
    .d0(plaintext1_d0),
    .q0(plaintext1_q0),
    .address1(grp_Blowfish_Encrypt_fu_237_plaintext_address1),
    .ce1(plaintext1_ce1),
    .q1(plaintext1_q1)
);

decrypt_bf_ciphercud #(
    .DataWidth( 8 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
plaintext2_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(plaintext2_address0),
    .ce0(plaintext2_ce0),
    .we0(plaintext2_we0),
    .d0(plaintext2_d0),
    .q0(plaintext2_q0),
    .address1(grp_Blowfish_Encrypt_fu_237_plaintext_address1),
    .ce1(plaintext2_ce1),
    .q1(plaintext2_q1)
);

decrypt_bf_decrypeOg #(
    .DataWidth( 8 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
ciphertext1_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(ciphertext1_address0),
    .ce0(ciphertext1_ce0),
    .we0(ciphertext1_we0),
    .d0(grp_Blowfish_Encrypt_fu_237_ciphertext_d0),
    .q0(ciphertext1_q0),
    .address1(grp_Blowfish_Encrypt_fu_237_ciphertext_address1),
    .ce1(ciphertext1_ce1),
    .we1(ciphertext1_we1),
    .d1(grp_Blowfish_Encrypt_fu_237_ciphertext_d1)
);

decrypt_bf_decrypeOg #(
    .DataWidth( 8 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
ciphertext2_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(ciphertext2_address0),
    .ce0(ciphertext2_ce0),
    .we0(ciphertext2_we0),
    .d0(grp_Blowfish_Encrypt_fu_237_ciphertext_d0),
    .q0(ciphertext2_q0),
    .address1(grp_Blowfish_Encrypt_fu_237_ciphertext_address1),
    .ce1(ciphertext2_ce1),
    .we1(ciphertext2_we1),
    .d1(grp_Blowfish_Encrypt_fu_237_ciphertext_d1)
);

Blowfish_Encrypt grp_Blowfish_Encrypt_fu_237(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_Blowfish_Encrypt_fu_237_ap_start),
    .ap_done(grp_Blowfish_Encrypt_fu_237_ap_done),
    .ap_idle(grp_Blowfish_Encrypt_fu_237_ap_idle),
    .ap_ready(grp_Blowfish_Encrypt_fu_237_ap_ready),
    .plaintext_address0(grp_Blowfish_Encrypt_fu_237_plaintext_address0),
    .plaintext_ce0(grp_Blowfish_Encrypt_fu_237_plaintext_ce0),
    .plaintext_q0(grp_Blowfish_Encrypt_fu_237_plaintext_q0),
    .plaintext_address1(grp_Blowfish_Encrypt_fu_237_plaintext_address1),
    .plaintext_ce1(grp_Blowfish_Encrypt_fu_237_plaintext_ce1),
    .plaintext_q1(grp_Blowfish_Encrypt_fu_237_plaintext_q1),
    .ciphertext_address0(grp_Blowfish_Encrypt_fu_237_ciphertext_address0),
    .ciphertext_ce0(grp_Blowfish_Encrypt_fu_237_ciphertext_ce0),
    .ciphertext_we0(grp_Blowfish_Encrypt_fu_237_ciphertext_we0),
    .ciphertext_d0(grp_Blowfish_Encrypt_fu_237_ciphertext_d0),
    .ciphertext_address1(grp_Blowfish_Encrypt_fu_237_ciphertext_address1),
    .ciphertext_ce1(grp_Blowfish_Encrypt_fu_237_ciphertext_ce1),
    .ciphertext_we1(grp_Blowfish_Encrypt_fu_237_ciphertext_we1),
    .ciphertext_d1(grp_Blowfish_Encrypt_fu_237_ciphertext_d1),
    .P_0_read(reg_359),
    .P_1_read(reg_364),
    .P_2_read(reg_369),
    .P_3_read(reg_374),
    .P_4_read(reg_379),
    .P_5_read(reg_384),
    .P_6_read(reg_389),
    .P_7_read(reg_394),
    .P_8_read(reg_399),
    .P_9_read(reg_404),
    .P_10_read(reg_409),
    .P_11_read(reg_414),
    .P_12_read(reg_419),
    .P_13_read(reg_424),
    .P_14_read(reg_429),
    .P_15_read(reg_434),
    .P_16_read(reg_439),
    .P_17_read(reg_444),
    .S_0_address0(grp_Blowfish_Encrypt_fu_237_S_0_address0),
    .S_0_ce0(grp_Blowfish_Encrypt_fu_237_S_0_ce0),
    .S_0_q0(S_0_q0),
    .S_1_address0(grp_Blowfish_Encrypt_fu_237_S_1_address0),
    .S_1_ce0(grp_Blowfish_Encrypt_fu_237_S_1_ce0),
    .S_1_q0(S_1_q0),
    .S_2_address0(grp_Blowfish_Encrypt_fu_237_S_2_address0),
    .S_2_ce0(grp_Blowfish_Encrypt_fu_237_S_2_ce0),
    .S_2_q0(S_2_q0),
    .S_3_address0(grp_Blowfish_Encrypt_fu_237_S_3_address0),
    .S_3_ce0(grp_Blowfish_Encrypt_fu_237_S_3_ce0),
    .S_3_q0(S_3_q0)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_preg <= 128'd0;
    end else begin
        if (((icmp_ln297_fu_897_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state11))) begin
            ap_return_preg <= p_Val2_3_reg_215;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_Blowfish_Encrypt_fu_237_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state7) | ((icmp_ln279_fu_597_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4)))) begin
            grp_Blowfish_Encrypt_fu_237_ap_start_reg <= 1'b1;
        end else if ((grp_Blowfish_Encrypt_fu_237_ap_ready == 1'b1)) begin
            grp_Blowfish_Encrypt_fu_237_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln292_fu_731_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state9))) begin
        i1_0_i31_reg_226 <= 4'd0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        i1_0_i31_reg_226 <= i_3_reg_1158;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln271_fu_463_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        i1_0_i_reg_180 <= 4'd0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        i1_0_i_reg_180 <= i_1_reg_1117;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        i_0_i25_reg_204 <= i_2_reg_1135;
    end else if (((grp_Blowfish_Encrypt_fu_237_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
        i_0_i25_reg_204 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        i_0_i_reg_168 <= i_reg_1099;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_0_i_reg_168 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        p_Val2_2_reg_192 <= p_Result_4_fu_891_p2;
    end else if (((grp_Blowfish_Encrypt_fu_237_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
        p_Val2_2_reg_192 <= 128'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln292_fu_731_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state9))) begin
        p_Val2_3_reg_215 <= p_Val2_2_reg_192;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        p_Val2_3_reg_215 <= p_Result_5_fu_1074_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        i_1_reg_1117 <= i_1_fu_603_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        i_2_reg_1135 <= i_2_fu_737_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        i_3_reg_1158 <= i_3_fu_903_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_reg_1099 <= i_fu_469_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        lower_64_V_reg_1086 <= lower_64_V_fu_449_p1;
        upper_64_V_reg_1091 <= {{plaintext_V[127:64]}};
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln279_fu_597_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        lshr_ln681_2_reg_1127 <= lshr_ln681_2_fu_701_p2;
        sub_ln681_5_reg_1122[6 : 1] <= sub_ln681_5_fu_691_p2[6 : 1];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln271_fu_463_p2 == 1'd0))) begin
        lshr_ln681_reg_1109 <= lshr_ln681_fu_567_p2;
        sub_ln681_2_reg_1104[6 : 1] <= sub_ln681_2_fu_557_p2[6 : 1];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state7) | ((icmp_ln279_fu_597_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4)))) begin
        reg_359 <= P_0;
        reg_364 <= P_1;
        reg_369 <= P_2;
        reg_374 <= P_3;
        reg_379 <= P_4;
        reg_384 <= P_5;
        reg_389 <= P_6;
        reg_394 <= P_7;
        reg_399 <= P_8;
        reg_404 <= P_9;
        reg_409 <= P_10;
        reg_414 <= P_11;
        reg_419 <= P_12;
        reg_424 <= P_13;
        reg_429 <= P_14;
        reg_434 <= P_15;
        reg_439 <= P_16;
        reg_444 <= P_17;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state9) & (icmp_ln292_fu_731_p2 == 1'd0))) begin
        trunc_ln293_reg_1140 <= trunc_ln293_fu_743_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state11) & (icmp_ln297_fu_897_p2 == 1'd0))) begin
        trunc_ln298_reg_1163 <= trunc_ln298_fu_909_p1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state8))) begin
        S_0_ce0 = grp_Blowfish_Encrypt_fu_237_S_0_ce0;
    end else begin
        S_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state8))) begin
        S_1_ce0 = grp_Blowfish_Encrypt_fu_237_S_1_ce0;
    end else begin
        S_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state8))) begin
        S_2_ce0 = grp_Blowfish_Encrypt_fu_237_S_2_ce0;
    end else begin
        S_2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state8))) begin
        S_3_ce0 = grp_Blowfish_Encrypt_fu_237_S_3_ce0;
    end else begin
        S_3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | ((icmp_ln297_fu_897_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state11)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln297_fu_897_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state11))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln297_fu_897_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state11))) begin
        ap_return = p_Val2_3_reg_215;
    end else begin
        ap_return = ap_return_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        ciphertext1_address0 = zext_ln293_fu_747_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        ciphertext1_address0 = grp_Blowfish_Encrypt_fu_237_ciphertext_address0;
    end else begin
        ciphertext1_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        ciphertext1_ce0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        ciphertext1_ce0 = grp_Blowfish_Encrypt_fu_237_ciphertext_ce0;
    end else begin
        ciphertext1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        ciphertext1_ce1 = grp_Blowfish_Encrypt_fu_237_ciphertext_ce1;
    end else begin
        ciphertext1_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        ciphertext1_we0 = grp_Blowfish_Encrypt_fu_237_ciphertext_we0;
    end else begin
        ciphertext1_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        ciphertext1_we1 = grp_Blowfish_Encrypt_fu_237_ciphertext_we1;
    end else begin
        ciphertext1_we1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        ciphertext2_address0 = zext_ln298_fu_913_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        ciphertext2_address0 = grp_Blowfish_Encrypt_fu_237_ciphertext_address0;
    end else begin
        ciphertext2_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        ciphertext2_ce0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        ciphertext2_ce0 = grp_Blowfish_Encrypt_fu_237_ciphertext_ce0;
    end else begin
        ciphertext2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        ciphertext2_ce1 = grp_Blowfish_Encrypt_fu_237_ciphertext_ce1;
    end else begin
        ciphertext2_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        ciphertext2_we0 = grp_Blowfish_Encrypt_fu_237_ciphertext_we0;
    end else begin
        ciphertext2_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        ciphertext2_we1 = grp_Blowfish_Encrypt_fu_237_ciphertext_we1;
    end else begin
        ciphertext2_we1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_Blowfish_Encrypt_fu_237_plaintext_q0 = plaintext2_q0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_Blowfish_Encrypt_fu_237_plaintext_q0 = plaintext1_q0;
    end else begin
        grp_Blowfish_Encrypt_fu_237_plaintext_q0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_Blowfish_Encrypt_fu_237_plaintext_q1 = plaintext2_q1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_Blowfish_Encrypt_fu_237_plaintext_q1 = plaintext1_q1;
    end else begin
        grp_Blowfish_Encrypt_fu_237_plaintext_q1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        plaintext1_address0 = zext_ln275_fu_592_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        plaintext1_address0 = grp_Blowfish_Encrypt_fu_237_plaintext_address0;
    end else begin
        plaintext1_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        plaintext1_ce0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        plaintext1_ce0 = grp_Blowfish_Encrypt_fu_237_plaintext_ce0;
    end else begin
        plaintext1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        plaintext1_ce1 = grp_Blowfish_Encrypt_fu_237_plaintext_ce1;
    end else begin
        plaintext1_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        plaintext1_we0 = 1'b1;
    end else begin
        plaintext1_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        plaintext2_address0 = zext_ln283_fu_726_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        plaintext2_address0 = grp_Blowfish_Encrypt_fu_237_plaintext_address0;
    end else begin
        plaintext2_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        plaintext2_ce0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        plaintext2_ce0 = grp_Blowfish_Encrypt_fu_237_plaintext_ce0;
    end else begin
        plaintext2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        plaintext2_ce1 = grp_Blowfish_Encrypt_fu_237_plaintext_ce1;
    end else begin
        plaintext2_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        plaintext2_we0 = 1'b1;
    end else begin
        plaintext2_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((icmp_ln271_fu_463_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        ap_ST_fsm_state4 : begin
            if (((icmp_ln279_fu_597_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state6 : begin
            if (((grp_Blowfish_Encrypt_fu_237_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            if (((grp_Blowfish_Encrypt_fu_237_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state9 : begin
            if (((icmp_ln292_fu_731_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state9))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state11 : begin
            if (((icmp_ln297_fu_897_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state11))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign Hi_assign_3_fu_931_p3 = {{1'd1}, {or_ln298_fu_925_p2}};

assign Lo_assign_1_fu_613_p3 = {{trunc_ln283_fu_609_p1}, {3'd0}};

assign Lo_assign_2_fu_752_p3 = {{trunc_ln293_reg_1140}, {3'd0}};

assign Lo_assign_3_fu_939_p4 = {{{{1'd1}, {trunc_ln298_reg_1163}}}, {3'd0}};

assign Lo_assign_fu_479_p3 = {{trunc_ln275_fu_475_p1}, {3'd0}};

assign S_0_address0 = grp_Blowfish_Encrypt_fu_237_S_0_address0;

assign S_1_address0 = grp_Blowfish_Encrypt_fu_237_S_1_address0;

assign S_2_address0 = grp_Blowfish_Encrypt_fu_237_S_2_address0;

assign S_3_address0 = grp_Blowfish_Encrypt_fu_237_S_3_address0;

assign and_ln388_1_fu_879_p2 = (xor_ln388_2_fu_873_p2 & p_Val2_2_reg_192);

assign and_ln388_2_fu_885_p2 = (select_ln388_3_fu_847_p3 & and_ln388_fu_867_p2);

assign and_ln388_3_fu_1050_p2 = (shl_ln388_3_fu_1038_p2 & lshr_ln388_1_fu_1044_p2);

assign and_ln388_4_fu_1062_p2 = (xor_ln388_5_fu_1056_p2 & p_Val2_3_reg_215);

assign and_ln388_5_fu_1068_p2 = (select_ln388_7_fu_1030_p3 & and_ln388_3_fu_1050_p2);

assign and_ln388_fu_867_p2 = (shl_ln388_1_fu_855_p2 & lshr_ln388_fu_861_p2);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

assign grp_Blowfish_Encrypt_fu_237_ap_start = grp_Blowfish_Encrypt_fu_237_ap_start_reg;

assign i_1_fu_603_p2 = (i1_0_i_reg_180 + 4'd1);

assign i_2_fu_737_p2 = (i_0_i25_reg_204 + 4'd1);

assign i_3_fu_903_p2 = (i1_0_i31_reg_226 + 4'd1);

assign i_fu_469_p2 = (i_0_i_reg_168 + 4'd1);

assign icmp_ln271_fu_463_p2 = ((i_0_i_reg_168 == 4'd8) ? 1'b1 : 1'b0);

assign icmp_ln279_fu_597_p2 = ((i1_0_i_reg_180 == 4'd8) ? 1'b1 : 1'b0);

assign icmp_ln292_fu_731_p2 = ((i_0_i25_reg_204 == 4'd8) ? 1'b1 : 1'b0);

assign icmp_ln297_fu_897_p2 = ((i1_0_i31_reg_226 == 4'd8) ? 1'b1 : 1'b0);

assign icmp_ln388_1_fu_952_p2 = ((Lo_assign_3_fu_939_p4 > Hi_assign_3_fu_931_p3) ? 1'b1 : 1'b0);

assign icmp_ln388_fu_769_p2 = ((Lo_assign_2_fu_752_p3 > or_ln293_fu_759_p2) ? 1'b1 : 1'b0);

assign icmp_ln681_1_fu_627_p2 = ((Lo_assign_1_fu_613_p3 > or_ln283_fu_621_p2) ? 1'b1 : 1'b0);

assign icmp_ln681_fu_493_p2 = ((Lo_assign_fu_479_p3 > or_ln275_fu_487_p2) ? 1'b1 : 1'b0);

assign lower_64_V_fu_449_p1 = plaintext_V[63:0];

assign lshr_ln388_1_fu_1044_p2 = 128'd340282366920938463463374607431768211455 >> zext_ln388_9_fu_1010_p1;

assign lshr_ln388_fu_861_p2 = 128'd340282366920938463463374607431768211455 >> zext_ln388_4_fu_827_p1;

assign lshr_ln681_1_fu_576_p2 = 64'd18446744073709551615 >> zext_ln681_3_fu_573_p1;

assign lshr_ln681_2_fu_701_p2 = select_ln681_4_fu_676_p3 >> zext_ln681_6_fu_697_p1;

assign lshr_ln681_3_fu_710_p2 = 64'd18446744073709551615 >> zext_ln681_7_fu_707_p1;

assign lshr_ln681_fu_567_p2 = select_ln681_1_fu_542_p3 >> zext_ln681_2_fu_563_p1;

assign or_ln275_fu_487_p2 = (6'd7 | Lo_assign_fu_479_p3);

assign or_ln283_fu_621_p2 = (6'd7 | Lo_assign_1_fu_613_p3);

assign or_ln293_fu_759_p2 = (6'd7 | Lo_assign_2_fu_752_p3);

assign or_ln298_fu_925_p2 = (shl_ln_fu_918_p3 | 6'd7);

assign p_Result_1_fu_716_p2 = (lshr_ln681_3_fu_710_p2 & lshr_ln681_2_reg_1127);

assign p_Result_4_fu_891_p2 = (and_ln388_2_fu_885_p2 | and_ln388_1_fu_879_p2);

assign p_Result_5_fu_1074_p2 = (and_ln388_5_fu_1068_p2 | and_ln388_4_fu_1062_p2);

assign p_Result_s_fu_582_p2 = (lshr_ln681_reg_1109 & lshr_ln681_1_fu_576_p2);

assign plaintext1_d0 = p_Result_s_fu_582_p2[7:0];

assign plaintext2_d0 = p_Result_1_fu_716_p2[7:0];

assign select_ln388_1_fu_797_p3 = ((icmp_ln388_fu_769_p2[0:0] === 1'b1) ? zext_ln388_1_fu_779_p1 : zext_ln388_fu_775_p1);

assign select_ln388_2_fu_805_p3 = ((icmp_ln388_fu_769_p2[0:0] === 1'b1) ? xor_ln388_fu_783_p2 : zext_ln388_fu_775_p1);

assign select_ln388_3_fu_847_p3 = ((icmp_ln388_fu_769_p2[0:0] === 1'b1) ? tmp_7_fu_837_p4 : shl_ln388_fu_831_p2);

assign select_ln388_4_fu_972_p3 = ((icmp_ln388_1_fu_952_p2[0:0] === 1'b1) ? zext_ln388_5_fu_958_p1 : zext_ln388_6_fu_962_p1);

assign select_ln388_5_fu_980_p3 = ((icmp_ln388_1_fu_952_p2[0:0] === 1'b1) ? zext_ln388_6_fu_962_p1 : zext_ln388_5_fu_958_p1);

assign select_ln388_6_fu_988_p3 = ((icmp_ln388_1_fu_952_p2[0:0] === 1'b1) ? xor_ln388_3_fu_966_p2 : zext_ln388_5_fu_958_p1);

assign select_ln388_7_fu_1030_p3 = ((icmp_ln388_1_fu_952_p2[0:0] === 1'b1) ? tmp_8_fu_1020_p4 : shl_ln388_2_fu_1014_p2);

assign select_ln388_fu_789_p3 = ((icmp_ln388_fu_769_p2[0:0] === 1'b1) ? zext_ln388_fu_775_p1 : zext_ln388_1_fu_779_p1);

assign select_ln681_1_fu_542_p3 = ((icmp_ln681_fu_493_p2[0:0] === 1'b1) ? tmp_fu_507_p4 : lower_64_V_reg_1086);

assign select_ln681_2_fu_549_p3 = ((icmp_ln681_fu_493_p2[0:0] === 1'b1) ? xor_ln681_fu_522_p2 : zext_ln681_fu_499_p1);

assign select_ln681_3_fu_668_p3 = ((icmp_ln681_1_fu_627_p2[0:0] === 1'b1) ? sub_ln681_3_fu_650_p2 : sub_ln681_4_fu_662_p2);

assign select_ln681_4_fu_676_p3 = ((icmp_ln681_1_fu_627_p2[0:0] === 1'b1) ? tmp_6_fu_641_p4 : upper_64_V_reg_1091);

assign select_ln681_5_fu_683_p3 = ((icmp_ln681_1_fu_627_p2[0:0] === 1'b1) ? xor_ln681_1_fu_656_p2 : zext_ln681_4_fu_633_p1);

assign select_ln681_fu_534_p3 = ((icmp_ln681_fu_493_p2[0:0] === 1'b1) ? sub_ln681_fu_516_p2 : sub_ln681_1_fu_528_p2);

assign shl_ln388_1_fu_855_p2 = 128'd340282366920938463463374607431768211455 << zext_ln388_3_fu_823_p1;

assign shl_ln388_2_fu_1014_p2 = tmp_V_1_fu_948_p1 << zext_ln388_7_fu_1002_p1;

assign shl_ln388_3_fu_1038_p2 = 128'd340282366920938463463374607431768211455 << zext_ln388_8_fu_1006_p1;

assign shl_ln388_fu_831_p2 = tmp_V_fu_765_p1 << zext_ln388_2_fu_819_p1;

assign shl_ln_fu_918_p3 = {{trunc_ln298_reg_1163}, {3'd0}};

assign sub_ln681_1_fu_528_p2 = (zext_ln681_1_fu_503_p1 - zext_ln681_fu_499_p1);

assign sub_ln681_2_fu_557_p2 = (7'd63 - select_ln681_fu_534_p3);

assign sub_ln681_3_fu_650_p2 = (zext_ln681_4_fu_633_p1 - zext_ln681_5_fu_637_p1);

assign sub_ln681_4_fu_662_p2 = (zext_ln681_5_fu_637_p1 - zext_ln681_4_fu_633_p1);

assign sub_ln681_5_fu_691_p2 = (7'd63 - select_ln681_3_fu_668_p3);

assign sub_ln681_fu_516_p2 = (zext_ln681_fu_499_p1 - zext_ln681_1_fu_503_p1);

integer ap_tvar_int_0;

always @ (plaintext_V) begin
    for (ap_tvar_int_0 = 64 - 1; ap_tvar_int_0 >= 0; ap_tvar_int_0 = ap_tvar_int_0 - 1) begin
        if (ap_tvar_int_0 > 127 - 64) begin
            tmp_6_fu_641_p4[ap_tvar_int_0] = 1'b0;
        end else begin
            tmp_6_fu_641_p4[ap_tvar_int_0] = plaintext_V[127 - ap_tvar_int_0];
        end
    end
end

integer ap_tvar_int_1;

always @ (shl_ln388_fu_831_p2) begin
    for (ap_tvar_int_1 = 128 - 1; ap_tvar_int_1 >= 0; ap_tvar_int_1 = ap_tvar_int_1 - 1) begin
        if (ap_tvar_int_1 > 127 - 0) begin
            tmp_7_fu_837_p4[ap_tvar_int_1] = 1'b0;
        end else begin
            tmp_7_fu_837_p4[ap_tvar_int_1] = shl_ln388_fu_831_p2[127 - ap_tvar_int_1];
        end
    end
end

integer ap_tvar_int_2;

always @ (shl_ln388_2_fu_1014_p2) begin
    for (ap_tvar_int_2 = 128 - 1; ap_tvar_int_2 >= 0; ap_tvar_int_2 = ap_tvar_int_2 - 1) begin
        if (ap_tvar_int_2 > 127 - 0) begin
            tmp_8_fu_1020_p4[ap_tvar_int_2] = 1'b0;
        end else begin
            tmp_8_fu_1020_p4[ap_tvar_int_2] = shl_ln388_2_fu_1014_p2[127 - ap_tvar_int_2];
        end
    end
end

assign tmp_V_1_fu_948_p1 = ciphertext2_q0;

assign tmp_V_fu_765_p1 = ciphertext1_q0;

integer ap_tvar_int_3;

always @ (plaintext_V) begin
    for (ap_tvar_int_3 = 64 - 1; ap_tvar_int_3 >= 0; ap_tvar_int_3 = ap_tvar_int_3 - 1) begin
        if (ap_tvar_int_3 > 63 - 0) begin
            tmp_fu_507_p4[ap_tvar_int_3] = 1'b0;
        end else begin
            tmp_fu_507_p4[ap_tvar_int_3] = plaintext_V[63 - ap_tvar_int_3];
        end
    end
end

assign trunc_ln275_fu_475_p1 = i_0_i_reg_168[2:0];

assign trunc_ln283_fu_609_p1 = i1_0_i_reg_180[2:0];

assign trunc_ln293_fu_743_p1 = i_0_i25_reg_204[2:0];

assign trunc_ln298_fu_909_p1 = i1_0_i31_reg_226[2:0];

assign xor_ln388_1_fu_813_p2 = (select_ln388_fu_789_p3 ^ 8'd127);

assign xor_ln388_2_fu_873_p2 = (128'd340282366920938463463374607431768211455 ^ and_ln388_fu_867_p2);

assign xor_ln388_3_fu_966_p2 = (zext_ln388_5_fu_958_p1 ^ 8'd127);

assign xor_ln388_4_fu_996_p2 = (select_ln388_4_fu_972_p3 ^ 8'd127);

assign xor_ln388_5_fu_1056_p2 = (128'd340282366920938463463374607431768211455 ^ and_ln388_3_fu_1050_p2);

assign xor_ln388_fu_783_p2 = (zext_ln388_fu_775_p1 ^ 8'd127);

assign xor_ln681_1_fu_656_p2 = (zext_ln681_4_fu_633_p1 ^ 7'd63);

assign xor_ln681_fu_522_p2 = (zext_ln681_fu_499_p1 ^ 7'd63);

assign zext_ln275_fu_592_p1 = i_0_i_reg_168;

assign zext_ln283_fu_726_p1 = i1_0_i_reg_180;

assign zext_ln293_fu_747_p1 = i_0_i25_reg_204;

assign zext_ln298_fu_913_p1 = i1_0_i31_reg_226;

assign zext_ln388_1_fu_779_p1 = or_ln293_fu_759_p2;

assign zext_ln388_2_fu_819_p1 = select_ln388_2_fu_805_p3;

assign zext_ln388_3_fu_823_p1 = select_ln388_1_fu_797_p3;

assign zext_ln388_4_fu_827_p1 = xor_ln388_1_fu_813_p2;

assign zext_ln388_5_fu_958_p1 = Lo_assign_3_fu_939_p4;

assign zext_ln388_6_fu_962_p1 = Hi_assign_3_fu_931_p3;

assign zext_ln388_7_fu_1002_p1 = select_ln388_6_fu_988_p3;

assign zext_ln388_8_fu_1006_p1 = select_ln388_5_fu_980_p3;

assign zext_ln388_9_fu_1010_p1 = xor_ln388_4_fu_996_p2;

assign zext_ln388_fu_775_p1 = Lo_assign_2_fu_752_p3;

assign zext_ln681_1_fu_503_p1 = or_ln275_fu_487_p2;

assign zext_ln681_2_fu_563_p1 = select_ln681_2_fu_549_p3;

assign zext_ln681_3_fu_573_p1 = sub_ln681_2_reg_1104;

assign zext_ln681_4_fu_633_p1 = Lo_assign_1_fu_613_p3;

assign zext_ln681_5_fu_637_p1 = or_ln283_fu_621_p2;

assign zext_ln681_6_fu_697_p1 = select_ln681_5_fu_683_p3;

assign zext_ln681_7_fu_707_p1 = sub_ln681_5_reg_1122;

assign zext_ln681_fu_499_p1 = Lo_assign_fu_479_p3;

always @ (posedge ap_clk) begin
    sub_ln681_2_reg_1104[0] <= 1'b0;
    sub_ln681_5_reg_1122[0] <= 1'b0;
end

endmodule //encrypt_bf

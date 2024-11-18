// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="Blowfish_SetKey_Encrypt,hls_ip_2019_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020-clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.591000,HLS_SYN_LAT=21578,HLS_SYN_TPT=none,HLS_SYN_MEM=2,HLS_SYN_DSP=0,HLS_SYN_FF=1819,HLS_SYN_LUT=2752,HLS_VERSION=2019_2}" *)

module Blowfish_SetKey_Encrypt (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        set_key,
        key_address0,
        key_ce0,
        key_q0,
        key_size,
        plaintext_address0,
        plaintext_ce0,
        plaintext_q0,
        plaintext_address1,
        plaintext_ce1,
        plaintext_q1,
        ciphertext_address0,
        ciphertext_ce0,
        ciphertext_we0,
        ciphertext_d0,
        ciphertext_address1,
        ciphertext_ce1,
        ciphertext_we1,
        ciphertext_d1,
        P_address0,
        P_ce0,
        P_we0,
        P_d0,
        P_q0,
        P_address1,
        P_ce1,
        P_we1,
        P_d1,
        P_q1,
        S_address0,
        S_ce0,
        S_we0,
        S_d0,
        S_q0,
        S_address1,
        S_ce1,
        S_we1,
        S_d1,
        S_q1
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_state3 = 4'd4;
parameter    ap_ST_fsm_state4 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input   set_key;
output  [5:0] key_address0;
output   key_ce0;
input  [7:0] key_q0;
input  [63:0] key_size;
output  [3:0] plaintext_address0;
output   plaintext_ce0;
input  [7:0] plaintext_q0;
output  [3:0] plaintext_address1;
output   plaintext_ce1;
input  [7:0] plaintext_q1;
output  [3:0] ciphertext_address0;
output   ciphertext_ce0;
output   ciphertext_we0;
output  [7:0] ciphertext_d0;
output  [3:0] ciphertext_address1;
output   ciphertext_ce1;
output   ciphertext_we1;
output  [7:0] ciphertext_d1;
output  [4:0] P_address0;
output   P_ce0;
output   P_we0;
output  [31:0] P_d0;
input  [31:0] P_q0;
output  [4:0] P_address1;
output   P_ce1;
output   P_we1;
output  [31:0] P_d1;
input  [31:0] P_q1;
output  [9:0] S_address0;
output   S_ce0;
output   S_we0;
output  [31:0] S_d0;
input  [31:0] S_q0;
output  [9:0] S_address1;
output   S_ce1;
output   S_we1;
output  [31:0] S_d1;
input  [31:0] S_q1;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[4:0] P_address0;
reg P_ce0;
reg P_we0;
reg P_ce1;
reg P_we1;
reg[9:0] S_address0;
reg S_ce0;
reg S_we0;
reg[9:0] S_address1;
reg S_ce1;
reg S_we1;

(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire    grp_Blowfish_SetKey_fu_44_ap_start;
wire    grp_Blowfish_SetKey_fu_44_ap_done;
wire    grp_Blowfish_SetKey_fu_44_ap_idle;
wire    grp_Blowfish_SetKey_fu_44_ap_ready;
wire   [5:0] grp_Blowfish_SetKey_fu_44_key_address0;
wire    grp_Blowfish_SetKey_fu_44_key_ce0;
wire   [4:0] grp_Blowfish_SetKey_fu_44_P_address0;
wire    grp_Blowfish_SetKey_fu_44_P_ce0;
wire    grp_Blowfish_SetKey_fu_44_P_we0;
wire   [31:0] grp_Blowfish_SetKey_fu_44_P_d0;
wire   [4:0] grp_Blowfish_SetKey_fu_44_P_address1;
wire    grp_Blowfish_SetKey_fu_44_P_ce1;
wire    grp_Blowfish_SetKey_fu_44_P_we1;
wire   [31:0] grp_Blowfish_SetKey_fu_44_P_d1;
wire   [9:0] grp_Blowfish_SetKey_fu_44_S_address0;
wire    grp_Blowfish_SetKey_fu_44_S_ce0;
wire    grp_Blowfish_SetKey_fu_44_S_we0;
wire   [31:0] grp_Blowfish_SetKey_fu_44_S_d0;
wire   [9:0] grp_Blowfish_SetKey_fu_44_S_address1;
wire    grp_Blowfish_SetKey_fu_44_S_ce1;
wire    grp_Blowfish_SetKey_fu_44_S_we1;
wire   [31:0] grp_Blowfish_SetKey_fu_44_S_d1;
wire    grp_Blowfish_Encrypt_fu_60_ap_start;
wire    grp_Blowfish_Encrypt_fu_60_ap_done;
wire    grp_Blowfish_Encrypt_fu_60_ap_idle;
wire    grp_Blowfish_Encrypt_fu_60_ap_ready;
wire   [3:0] grp_Blowfish_Encrypt_fu_60_plaintext_address0;
wire    grp_Blowfish_Encrypt_fu_60_plaintext_ce0;
wire   [3:0] grp_Blowfish_Encrypt_fu_60_plaintext_address1;
wire    grp_Blowfish_Encrypt_fu_60_plaintext_ce1;
wire   [3:0] grp_Blowfish_Encrypt_fu_60_ciphertext_address0;
wire    grp_Blowfish_Encrypt_fu_60_ciphertext_ce0;
wire    grp_Blowfish_Encrypt_fu_60_ciphertext_we0;
wire   [7:0] grp_Blowfish_Encrypt_fu_60_ciphertext_d0;
wire   [3:0] grp_Blowfish_Encrypt_fu_60_ciphertext_address1;
wire    grp_Blowfish_Encrypt_fu_60_ciphertext_ce1;
wire    grp_Blowfish_Encrypt_fu_60_ciphertext_we1;
wire   [7:0] grp_Blowfish_Encrypt_fu_60_ciphertext_d1;
wire   [4:0] grp_Blowfish_Encrypt_fu_60_P_address0;
wire    grp_Blowfish_Encrypt_fu_60_P_ce0;
wire   [9:0] grp_Blowfish_Encrypt_fu_60_S_address0;
wire    grp_Blowfish_Encrypt_fu_60_S_ce0;
wire   [9:0] grp_Blowfish_Encrypt_fu_60_S_address1;
wire    grp_Blowfish_Encrypt_fu_60_S_ce1;
reg    grp_Blowfish_SetKey_fu_44_ap_start_reg;
wire   [0:0] set_key_read_read_fu_38_p2;
wire    ap_CS_fsm_state2;
reg    grp_Blowfish_Encrypt_fu_60_ap_start_reg;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state4;
reg   [3:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 4'd1;
#0 grp_Blowfish_SetKey_fu_44_ap_start_reg = 1'b0;
#0 grp_Blowfish_Encrypt_fu_60_ap_start_reg = 1'b0;
end

Blowfish_SetKey grp_Blowfish_SetKey_fu_44(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_Blowfish_SetKey_fu_44_ap_start),
    .ap_done(grp_Blowfish_SetKey_fu_44_ap_done),
    .ap_idle(grp_Blowfish_SetKey_fu_44_ap_idle),
    .ap_ready(grp_Blowfish_SetKey_fu_44_ap_ready),
    .key_address0(grp_Blowfish_SetKey_fu_44_key_address0),
    .key_ce0(grp_Blowfish_SetKey_fu_44_key_ce0),
    .key_q0(key_q0),
    .key_size(key_size),
    .P_address0(grp_Blowfish_SetKey_fu_44_P_address0),
    .P_ce0(grp_Blowfish_SetKey_fu_44_P_ce0),
    .P_we0(grp_Blowfish_SetKey_fu_44_P_we0),
    .P_d0(grp_Blowfish_SetKey_fu_44_P_d0),
    .P_q0(P_q0),
    .P_address1(grp_Blowfish_SetKey_fu_44_P_address1),
    .P_ce1(grp_Blowfish_SetKey_fu_44_P_ce1),
    .P_we1(grp_Blowfish_SetKey_fu_44_P_we1),
    .P_d1(grp_Blowfish_SetKey_fu_44_P_d1),
    .P_q1(P_q1),
    .S_address0(grp_Blowfish_SetKey_fu_44_S_address0),
    .S_ce0(grp_Blowfish_SetKey_fu_44_S_ce0),
    .S_we0(grp_Blowfish_SetKey_fu_44_S_we0),
    .S_d0(grp_Blowfish_SetKey_fu_44_S_d0),
    .S_q0(S_q0),
    .S_address1(grp_Blowfish_SetKey_fu_44_S_address1),
    .S_ce1(grp_Blowfish_SetKey_fu_44_S_ce1),
    .S_we1(grp_Blowfish_SetKey_fu_44_S_we1),
    .S_d1(grp_Blowfish_SetKey_fu_44_S_d1),
    .S_q1(S_q1)
);

Blowfish_Encrypt grp_Blowfish_Encrypt_fu_60(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_Blowfish_Encrypt_fu_60_ap_start),
    .ap_done(grp_Blowfish_Encrypt_fu_60_ap_done),
    .ap_idle(grp_Blowfish_Encrypt_fu_60_ap_idle),
    .ap_ready(grp_Blowfish_Encrypt_fu_60_ap_ready),
    .plaintext_address0(grp_Blowfish_Encrypt_fu_60_plaintext_address0),
    .plaintext_ce0(grp_Blowfish_Encrypt_fu_60_plaintext_ce0),
    .plaintext_q0(plaintext_q0),
    .plaintext_address1(grp_Blowfish_Encrypt_fu_60_plaintext_address1),
    .plaintext_ce1(grp_Blowfish_Encrypt_fu_60_plaintext_ce1),
    .plaintext_q1(plaintext_q1),
    .ciphertext_address0(grp_Blowfish_Encrypt_fu_60_ciphertext_address0),
    .ciphertext_ce0(grp_Blowfish_Encrypt_fu_60_ciphertext_ce0),
    .ciphertext_we0(grp_Blowfish_Encrypt_fu_60_ciphertext_we0),
    .ciphertext_d0(grp_Blowfish_Encrypt_fu_60_ciphertext_d0),
    .ciphertext_address1(grp_Blowfish_Encrypt_fu_60_ciphertext_address1),
    .ciphertext_ce1(grp_Blowfish_Encrypt_fu_60_ciphertext_ce1),
    .ciphertext_we1(grp_Blowfish_Encrypt_fu_60_ciphertext_we1),
    .ciphertext_d1(grp_Blowfish_Encrypt_fu_60_ciphertext_d1),
    .P_address0(grp_Blowfish_Encrypt_fu_60_P_address0),
    .P_ce0(grp_Blowfish_Encrypt_fu_60_P_ce0),
    .P_q0(P_q0),
    .S_address0(grp_Blowfish_Encrypt_fu_60_S_address0),
    .S_ce0(grp_Blowfish_Encrypt_fu_60_S_ce0),
    .S_q0(S_q0),
    .S_address1(grp_Blowfish_Encrypt_fu_60_S_address1),
    .S_ce1(grp_Blowfish_Encrypt_fu_60_S_ce1),
    .S_q1(S_q1)
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
        grp_Blowfish_Encrypt_fu_60_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_Blowfish_Encrypt_fu_60_ap_start_reg <= 1'b1;
        end else if ((grp_Blowfish_Encrypt_fu_60_ap_ready == 1'b1)) begin
            grp_Blowfish_Encrypt_fu_60_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_Blowfish_SetKey_fu_44_ap_start_reg <= 1'b0;
    end else begin
        if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1) & (set_key_read_read_fu_38_p2 == 1'd1))) begin
            grp_Blowfish_SetKey_fu_44_ap_start_reg <= 1'b1;
        end else if ((grp_Blowfish_SetKey_fu_44_ap_ready == 1'b1)) begin
            grp_Blowfish_SetKey_fu_44_ap_start_reg <= 1'b0;
        end
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        P_address0 = grp_Blowfish_Encrypt_fu_60_P_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        P_address0 = grp_Blowfish_SetKey_fu_44_P_address0;
    end else begin
        P_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        P_ce0 = grp_Blowfish_Encrypt_fu_60_P_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        P_ce0 = grp_Blowfish_SetKey_fu_44_P_ce0;
    end else begin
        P_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        P_ce1 = grp_Blowfish_SetKey_fu_44_P_ce1;
    end else begin
        P_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        P_we0 = grp_Blowfish_SetKey_fu_44_P_we0;
    end else begin
        P_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        P_we1 = grp_Blowfish_SetKey_fu_44_P_we1;
    end else begin
        P_we1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        S_address0 = grp_Blowfish_Encrypt_fu_60_S_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        S_address0 = grp_Blowfish_SetKey_fu_44_S_address0;
    end else begin
        S_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        S_address1 = grp_Blowfish_Encrypt_fu_60_S_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        S_address1 = grp_Blowfish_SetKey_fu_44_S_address1;
    end else begin
        S_address1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        S_ce0 = grp_Blowfish_Encrypt_fu_60_S_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        S_ce0 = grp_Blowfish_SetKey_fu_44_S_ce0;
    end else begin
        S_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        S_ce1 = grp_Blowfish_Encrypt_fu_60_S_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        S_ce1 = grp_Blowfish_SetKey_fu_44_S_ce1;
    end else begin
        S_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        S_we0 = grp_Blowfish_SetKey_fu_44_S_we0;
    end else begin
        S_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        S_we1 = grp_Blowfish_SetKey_fu_44_S_we1;
    end else begin
        S_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) & (grp_Blowfish_Encrypt_fu_60_ap_done == 1'b1))) begin
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
    if (((1'b1 == ap_CS_fsm_state4) & (grp_Blowfish_Encrypt_fu_60_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1) & (set_key_read_read_fu_38_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1) & (set_key_read_read_fu_38_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((grp_Blowfish_SetKey_fu_44_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (grp_Blowfish_Encrypt_fu_60_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign P_address1 = grp_Blowfish_SetKey_fu_44_P_address1;

assign P_d0 = grp_Blowfish_SetKey_fu_44_P_d0;

assign P_d1 = grp_Blowfish_SetKey_fu_44_P_d1;

assign S_d0 = grp_Blowfish_SetKey_fu_44_S_d0;

assign S_d1 = grp_Blowfish_SetKey_fu_44_S_d1;

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ciphertext_address0 = grp_Blowfish_Encrypt_fu_60_ciphertext_address0;

assign ciphertext_address1 = grp_Blowfish_Encrypt_fu_60_ciphertext_address1;

assign ciphertext_ce0 = grp_Blowfish_Encrypt_fu_60_ciphertext_ce0;

assign ciphertext_ce1 = grp_Blowfish_Encrypt_fu_60_ciphertext_ce1;

assign ciphertext_d0 = grp_Blowfish_Encrypt_fu_60_ciphertext_d0;

assign ciphertext_d1 = grp_Blowfish_Encrypt_fu_60_ciphertext_d1;

assign ciphertext_we0 = grp_Blowfish_Encrypt_fu_60_ciphertext_we0;

assign ciphertext_we1 = grp_Blowfish_Encrypt_fu_60_ciphertext_we1;

assign grp_Blowfish_Encrypt_fu_60_ap_start = grp_Blowfish_Encrypt_fu_60_ap_start_reg;

assign grp_Blowfish_SetKey_fu_44_ap_start = grp_Blowfish_SetKey_fu_44_ap_start_reg;

assign key_address0 = grp_Blowfish_SetKey_fu_44_key_address0;

assign key_ce0 = grp_Blowfish_SetKey_fu_44_key_ce0;

assign plaintext_address0 = grp_Blowfish_Encrypt_fu_60_plaintext_address0;

assign plaintext_address1 = grp_Blowfish_Encrypt_fu_60_plaintext_address1;

assign plaintext_ce0 = grp_Blowfish_Encrypt_fu_60_plaintext_ce0;

assign plaintext_ce1 = grp_Blowfish_Encrypt_fu_60_plaintext_ce1;

assign set_key_read_read_fu_38_p2 = set_key;

endmodule //Blowfish_SetKey_Encrypt

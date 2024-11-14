// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="Blowfish_EncryptBlock,hls_ip_2019_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020-clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=6.799000,HLS_SYN_LAT=66,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=96,HLS_SYN_LUT=434,HLS_VERSION=2019_2}" *)

module Blowfish_EncryptBlock (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        Blowfish_pary_s_address0,
        Blowfish_pary_s_ce0,
        Blowfish_pary_s_q0,
        Blowfish_pary_s_address1,
        Blowfish_pary_s_ce1,
        Blowfish_pary_s_q1,
        Blowfish_sbox_s_address0,
        Blowfish_sbox_s_ce0,
        Blowfish_sbox_s_q0,
        Blowfish_sbox_s_address1,
        Blowfish_sbox_s_ce1,
        Blowfish_sbox_s_q1,
        left_r_i,
        left_r_o,
        left_r_o_ap_vld,
        right_r_i,
        right_r_o,
        right_r_o_ap_vld
);

parameter    ap_ST_fsm_state1 = 6'd1;
parameter    ap_ST_fsm_state2 = 6'd2;
parameter    ap_ST_fsm_state3 = 6'd4;
parameter    ap_ST_fsm_state4 = 6'd8;
parameter    ap_ST_fsm_state5 = 6'd16;
parameter    ap_ST_fsm_state6 = 6'd32;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [4:0] Blowfish_pary_s_address0;
output   Blowfish_pary_s_ce0;
input  [31:0] Blowfish_pary_s_q0;
output  [4:0] Blowfish_pary_s_address1;
output   Blowfish_pary_s_ce1;
input  [31:0] Blowfish_pary_s_q1;
output  [9:0] Blowfish_sbox_s_address0;
output   Blowfish_sbox_s_ce0;
input  [31:0] Blowfish_sbox_s_q0;
output  [9:0] Blowfish_sbox_s_address1;
output   Blowfish_sbox_s_ce1;
input  [31:0] Blowfish_sbox_s_q1;
input  [31:0] left_r_i;
output  [31:0] left_r_o;
output   left_r_o_ap_vld;
input  [31:0] right_r_i;
output  [31:0] right_r_o;
output   right_r_o_ap_vld;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[4:0] Blowfish_pary_s_address0;
reg Blowfish_pary_s_ce0;
reg Blowfish_pary_s_ce1;
reg[9:0] Blowfish_sbox_s_address0;
reg Blowfish_sbox_s_ce0;
reg[9:0] Blowfish_sbox_s_address1;
reg Blowfish_sbox_s_ce1;
reg[31:0] left_r_o;
reg left_r_o_ap_vld;
reg[31:0] right_r_o;
reg right_r_o_ap_vld;

(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [4:0] i_fu_181_p2;
reg   [4:0] i_reg_341;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln184_fu_175_p2;
wire   [31:0] temp_1_fu_216_p2;
reg   [31:0] temp_1_reg_361;
wire    ap_CS_fsm_state3;
reg   [7:0] c_reg_366;
wire   [7:0] d_fu_264_p2;
reg   [7:0] d_reg_371;
wire   [31:0] add_ln284_fu_284_p2;
reg   [31:0] add_ln284_reg_386;
wire    ap_CS_fsm_state4;
reg   [4:0] i_0_reg_164;
wire    ap_CS_fsm_state5;
wire   [63:0] zext_ln185_fu_187_p1;
wire   [63:0] zext_ln284_fu_270_p1;
wire   [63:0] tmp_fu_275_p3;
wire   [63:0] tmp_1_fu_290_p3;
wire   [63:0] tmp_2_fu_298_p3;
wire    ap_CS_fsm_state6;
wire   [31:0] xor_ln186_fu_317_p2;
wire   [31:0] xor_ln198_fu_331_p2;
wire   [31:0] xor_ln197_fu_324_p2;
wire   [15:0] trunc_ln185_5_fu_212_p1;
wire   [15:0] trunc_ln185_4_fu_208_p1;
wire   [23:0] trunc_ln185_3_fu_204_p1;
wire   [23:0] trunc_ln185_2_fu_200_p1;
wire   [23:0] xor_ln275_1_fu_228_p2;
wire   [15:0] xor_ln275_fu_222_p2;
wire   [7:0] trunc_ln185_1_fu_196_p1;
wire   [7:0] trunc_ln185_fu_192_p1;
wire   [7:0] a_fu_234_p4;
wire   [7:0] b_fu_244_p4;
wire   [31:0] xor_ln284_fu_306_p2;
wire   [31:0] add_ln284_1_fu_311_p2;
reg   [5:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 6'd1;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        i_0_reg_164 <= i_reg_341;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_0_reg_164 <= 5'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        add_ln284_reg_386 <= add_ln284_fu_284_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        c_reg_366 <= {{xor_ln275_fu_222_p2[15:8]}};
        d_reg_371 <= d_fu_264_p2;
        temp_1_reg_361 <= temp_1_fu_216_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_reg_341 <= i_fu_181_p2;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        if ((icmp_ln184_fu_175_p2 == 1'd1)) begin
            Blowfish_pary_s_address0 = 64'd16;
        end else if ((icmp_ln184_fu_175_p2 == 1'd0)) begin
            Blowfish_pary_s_address0 = zext_ln185_fu_187_p1;
        end else begin
            Blowfish_pary_s_address0 = 'bx;
        end
    end else begin
        Blowfish_pary_s_address0 = 'bx;
    end
end

always @ (*) begin
    if ((((icmp_ln184_fu_175_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((icmp_ln184_fu_175_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)))) begin
        Blowfish_pary_s_ce0 = 1'b1;
    end else begin
        Blowfish_pary_s_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        Blowfish_pary_s_ce1 = 1'b1;
    end else begin
        Blowfish_pary_s_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        Blowfish_sbox_s_address0 = tmp_1_fu_290_p3;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        Blowfish_sbox_s_address0 = zext_ln284_fu_270_p1;
    end else begin
        Blowfish_sbox_s_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        Blowfish_sbox_s_address1 = tmp_2_fu_298_p3;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        Blowfish_sbox_s_address1 = tmp_fu_275_p3;
    end else begin
        Blowfish_sbox_s_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        Blowfish_sbox_s_ce0 = 1'b1;
    end else begin
        Blowfish_sbox_s_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        Blowfish_sbox_s_ce1 = 1'b1;
    end else begin
        Blowfish_sbox_s_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
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
    if ((1'b1 == ap_CS_fsm_state6)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        left_r_o = xor_ln198_fu_331_p2;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        left_r_o = xor_ln186_fu_317_p2;
    end else begin
        left_r_o = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5))) begin
        left_r_o_ap_vld = 1'b1;
    end else begin
        left_r_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        right_r_o = xor_ln197_fu_324_p2;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        right_r_o = temp_1_reg_361;
    end else begin
        right_r_o = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5))) begin
        right_r_o_ap_vld = 1'b1;
    end else begin
        right_r_o_ap_vld = 1'b0;
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
            if (((icmp_ln184_fu_175_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign Blowfish_pary_s_address1 = 64'd17;

assign a_fu_234_p4 = {{temp_1_fu_216_p2[31:24]}};

assign add_ln284_1_fu_311_p2 = (Blowfish_sbox_s_q1 + xor_ln284_fu_306_p2);

assign add_ln284_fu_284_p2 = (Blowfish_sbox_s_q0 + Blowfish_sbox_s_q1);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign b_fu_244_p4 = {{xor_ln275_1_fu_228_p2[23:16]}};

assign d_fu_264_p2 = (trunc_ln185_fu_192_p1 ^ trunc_ln185_1_fu_196_p1);

assign i_fu_181_p2 = (i_0_reg_164 + 5'd1);

assign icmp_ln184_fu_175_p2 = ((i_0_reg_164 == 5'd16) ? 1'b1 : 1'b0);

assign temp_1_fu_216_p2 = (left_r_i ^ Blowfish_pary_s_q0);

assign tmp_1_fu_290_p3 = {{56'd2}, {c_reg_366}};

assign tmp_2_fu_298_p3 = {{56'd3}, {d_reg_371}};

assign tmp_fu_275_p3 = {{56'd1}, {b_fu_244_p4}};

assign trunc_ln185_1_fu_196_p1 = left_r_i[7:0];

assign trunc_ln185_2_fu_200_p1 = Blowfish_pary_s_q0[23:0];

assign trunc_ln185_3_fu_204_p1 = left_r_i[23:0];

assign trunc_ln185_4_fu_208_p1 = Blowfish_pary_s_q0[15:0];

assign trunc_ln185_5_fu_212_p1 = left_r_i[15:0];

assign trunc_ln185_fu_192_p1 = Blowfish_pary_s_q0[7:0];

assign xor_ln186_fu_317_p2 = (right_r_i ^ add_ln284_1_fu_311_p2);

assign xor_ln197_fu_324_p2 = (left_r_i ^ Blowfish_pary_s_q0);

assign xor_ln198_fu_331_p2 = (right_r_i ^ Blowfish_pary_s_q1);

assign xor_ln275_1_fu_228_p2 = (trunc_ln185_3_fu_204_p1 ^ trunc_ln185_2_fu_200_p1);

assign xor_ln275_fu_222_p2 = (trunc_ln185_5_fu_212_p1 ^ trunc_ln185_4_fu_208_p1);

assign xor_ln284_fu_306_p2 = (add_ln284_reg_386 ^ Blowfish_sbox_s_q0);

assign zext_ln185_fu_187_p1 = i_0_reg_164;

assign zext_ln284_fu_270_p1 = a_fu_234_p4;

endmodule //Blowfish_EncryptBlock

// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="decrypt_dut,hls_ip_2019_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020-clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=6.824000,HLS_SYN_LAT=319,HLS_SYN_TPT=none,HLS_SYN_MEM=8,HLS_SYN_DSP=0,HLS_SYN_FF=1336,HLS_SYN_LUT=8170,HLS_VERSION=2019_2}" *)

module decrypt_dut (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        input_0,
        input_1,
        input_2,
        input_3,
        input_4,
        input_5,
        input_6,
        input_7,
        input_8,
        input_9,
        input_10,
        input_11,
        input_12,
        input_13,
        input_14,
        input_15,
        output_0,
        output_0_ap_vld,
        output_1,
        output_1_ap_vld,
        output_2,
        output_2_ap_vld,
        output_3,
        output_3_ap_vld,
        output_4,
        output_4_ap_vld,
        output_5,
        output_5_ap_vld,
        output_6,
        output_6_ap_vld,
        output_7,
        output_7_ap_vld,
        output_8,
        output_8_ap_vld,
        output_9,
        output_9_ap_vld,
        output_10,
        output_10_ap_vld,
        output_11,
        output_11_ap_vld,
        output_12,
        output_12_ap_vld,
        output_13,
        output_13_ap_vld,
        output_14,
        output_14_ap_vld,
        output_15,
        output_15_ap_vld,
        key_0,
        key_1,
        key_2,
        key_3,
        key_4,
        key_5,
        key_6,
        key_7,
        key_8,
        key_9,
        key_10,
        key_11,
        key_12,
        key_13,
        key_14,
        key_15
);

parameter    ap_ST_fsm_state1 = 2'd1;
parameter    ap_ST_fsm_state2 = 2'd2;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [7:0] input_0;
input  [7:0] input_1;
input  [7:0] input_2;
input  [7:0] input_3;
input  [7:0] input_4;
input  [7:0] input_5;
input  [7:0] input_6;
input  [7:0] input_7;
input  [7:0] input_8;
input  [7:0] input_9;
input  [7:0] input_10;
input  [7:0] input_11;
input  [7:0] input_12;
input  [7:0] input_13;
input  [7:0] input_14;
input  [7:0] input_15;
output  [7:0] output_0;
output   output_0_ap_vld;
output  [7:0] output_1;
output   output_1_ap_vld;
output  [7:0] output_2;
output   output_2_ap_vld;
output  [7:0] output_3;
output   output_3_ap_vld;
output  [7:0] output_4;
output   output_4_ap_vld;
output  [7:0] output_5;
output   output_5_ap_vld;
output  [7:0] output_6;
output   output_6_ap_vld;
output  [7:0] output_7;
output   output_7_ap_vld;
output  [7:0] output_8;
output   output_8_ap_vld;
output  [7:0] output_9;
output   output_9_ap_vld;
output  [7:0] output_10;
output   output_10_ap_vld;
output  [7:0] output_11;
output   output_11_ap_vld;
output  [7:0] output_12;
output   output_12_ap_vld;
output  [7:0] output_13;
output   output_13_ap_vld;
output  [7:0] output_14;
output   output_14_ap_vld;
output  [7:0] output_15;
output   output_15_ap_vld;
input  [7:0] key_0;
input  [7:0] key_1;
input  [7:0] key_2;
input  [7:0] key_3;
input  [7:0] key_4;
input  [7:0] key_5;
input  [7:0] key_6;
input  [7:0] key_7;
input  [7:0] key_8;
input  [7:0] key_9;
input  [7:0] key_10;
input  [7:0] key_11;
input  [7:0] key_12;
input  [7:0] key_13;
input  [7:0] key_14;
input  [7:0] key_15;

reg ap_done;
reg ap_idle;
reg ap_ready;

(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire    grp_aes_decrypt_fu_304_ap_start;
wire    grp_aes_decrypt_fu_304_ap_done;
wire    grp_aes_decrypt_fu_304_ap_idle;
wire    grp_aes_decrypt_fu_304_ap_ready;
wire   [7:0] grp_aes_decrypt_fu_304_output_0;
wire    grp_aes_decrypt_fu_304_output_0_ap_vld;
wire   [7:0] grp_aes_decrypt_fu_304_output_1;
wire    grp_aes_decrypt_fu_304_output_1_ap_vld;
wire   [7:0] grp_aes_decrypt_fu_304_output_2;
wire    grp_aes_decrypt_fu_304_output_2_ap_vld;
wire   [7:0] grp_aes_decrypt_fu_304_output_3;
wire    grp_aes_decrypt_fu_304_output_3_ap_vld;
wire   [7:0] grp_aes_decrypt_fu_304_output_4;
wire    grp_aes_decrypt_fu_304_output_4_ap_vld;
wire   [7:0] grp_aes_decrypt_fu_304_output_5;
wire    grp_aes_decrypt_fu_304_output_5_ap_vld;
wire   [7:0] grp_aes_decrypt_fu_304_output_6;
wire    grp_aes_decrypt_fu_304_output_6_ap_vld;
wire   [7:0] grp_aes_decrypt_fu_304_output_7;
wire    grp_aes_decrypt_fu_304_output_7_ap_vld;
wire   [7:0] grp_aes_decrypt_fu_304_output_8;
wire    grp_aes_decrypt_fu_304_output_8_ap_vld;
wire   [7:0] grp_aes_decrypt_fu_304_output_9;
wire    grp_aes_decrypt_fu_304_output_9_ap_vld;
wire   [7:0] grp_aes_decrypt_fu_304_output_10;
wire    grp_aes_decrypt_fu_304_output_10_ap_vld;
wire   [7:0] grp_aes_decrypt_fu_304_output_11;
wire    grp_aes_decrypt_fu_304_output_11_ap_vld;
wire   [7:0] grp_aes_decrypt_fu_304_output_12;
wire    grp_aes_decrypt_fu_304_output_12_ap_vld;
wire   [7:0] grp_aes_decrypt_fu_304_output_13;
wire    grp_aes_decrypt_fu_304_output_13_ap_vld;
wire   [7:0] grp_aes_decrypt_fu_304_output_14;
wire    grp_aes_decrypt_fu_304_output_14_ap_vld;
wire   [7:0] grp_aes_decrypt_fu_304_output_15;
wire    grp_aes_decrypt_fu_304_output_15_ap_vld;
reg    grp_aes_decrypt_fu_304_ap_start_reg;
wire    ap_CS_fsm_state2;
reg   [1:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 2'd1;
#0 grp_aes_decrypt_fu_304_ap_start_reg = 1'b0;
end

aes_decrypt grp_aes_decrypt_fu_304(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_aes_decrypt_fu_304_ap_start),
    .ap_done(grp_aes_decrypt_fu_304_ap_done),
    .ap_idle(grp_aes_decrypt_fu_304_ap_idle),
    .ap_ready(grp_aes_decrypt_fu_304_ap_ready),
    .input_0_read(input_0),
    .input_1_read(input_1),
    .input_2_read(input_2),
    .input_3_read(input_3),
    .input_4_read(input_4),
    .input_5_read(input_5),
    .input_6_read(input_6),
    .input_7_read(input_7),
    .input_8_read(input_8),
    .input_9_read(input_9),
    .input_10_read(input_10),
    .input_11_read(input_11),
    .input_12_read(input_12),
    .input_13_read(input_13),
    .input_14_read(input_14),
    .input_15_read(input_15),
    .output_0(grp_aes_decrypt_fu_304_output_0),
    .output_0_ap_vld(grp_aes_decrypt_fu_304_output_0_ap_vld),
    .output_1(grp_aes_decrypt_fu_304_output_1),
    .output_1_ap_vld(grp_aes_decrypt_fu_304_output_1_ap_vld),
    .output_2(grp_aes_decrypt_fu_304_output_2),
    .output_2_ap_vld(grp_aes_decrypt_fu_304_output_2_ap_vld),
    .output_3(grp_aes_decrypt_fu_304_output_3),
    .output_3_ap_vld(grp_aes_decrypt_fu_304_output_3_ap_vld),
    .output_4(grp_aes_decrypt_fu_304_output_4),
    .output_4_ap_vld(grp_aes_decrypt_fu_304_output_4_ap_vld),
    .output_5(grp_aes_decrypt_fu_304_output_5),
    .output_5_ap_vld(grp_aes_decrypt_fu_304_output_5_ap_vld),
    .output_6(grp_aes_decrypt_fu_304_output_6),
    .output_6_ap_vld(grp_aes_decrypt_fu_304_output_6_ap_vld),
    .output_7(grp_aes_decrypt_fu_304_output_7),
    .output_7_ap_vld(grp_aes_decrypt_fu_304_output_7_ap_vld),
    .output_8(grp_aes_decrypt_fu_304_output_8),
    .output_8_ap_vld(grp_aes_decrypt_fu_304_output_8_ap_vld),
    .output_9(grp_aes_decrypt_fu_304_output_9),
    .output_9_ap_vld(grp_aes_decrypt_fu_304_output_9_ap_vld),
    .output_10(grp_aes_decrypt_fu_304_output_10),
    .output_10_ap_vld(grp_aes_decrypt_fu_304_output_10_ap_vld),
    .output_11(grp_aes_decrypt_fu_304_output_11),
    .output_11_ap_vld(grp_aes_decrypt_fu_304_output_11_ap_vld),
    .output_12(grp_aes_decrypt_fu_304_output_12),
    .output_12_ap_vld(grp_aes_decrypt_fu_304_output_12_ap_vld),
    .output_13(grp_aes_decrypt_fu_304_output_13),
    .output_13_ap_vld(grp_aes_decrypt_fu_304_output_13_ap_vld),
    .output_14(grp_aes_decrypt_fu_304_output_14),
    .output_14_ap_vld(grp_aes_decrypt_fu_304_output_14_ap_vld),
    .output_15(grp_aes_decrypt_fu_304_output_15),
    .output_15_ap_vld(grp_aes_decrypt_fu_304_output_15_ap_vld),
    .key_0_read(key_0),
    .key_1_read(key_1),
    .key_2_read(key_2),
    .key_3_read(key_3),
    .key_4_read(key_4),
    .key_5_read(key_5),
    .key_6_read(key_6),
    .key_7_read(key_7),
    .key_8_read(key_8),
    .key_9_read(key_9),
    .key_10_read(key_10),
    .key_11_read(key_11),
    .key_12_read(key_12),
    .key_13_read(key_13),
    .key_14_read(key_14),
    .key_15_read(key_15)
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
        grp_aes_decrypt_fu_304_ap_start_reg <= 1'b0;
    end else begin
        if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_aes_decrypt_fu_304_ap_start_reg <= 1'b1;
        end else if ((grp_aes_decrypt_fu_304_ap_ready == 1'b1)) begin
            grp_aes_decrypt_fu_304_ap_start_reg <= 1'b0;
        end
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (grp_aes_decrypt_fu_304_ap_done == 1'b1))) begin
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
    if (((1'b1 == ap_CS_fsm_state2) & (grp_aes_decrypt_fu_304_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (grp_aes_decrypt_fu_304_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign grp_aes_decrypt_fu_304_ap_start = grp_aes_decrypt_fu_304_ap_start_reg;

assign output_0 = grp_aes_decrypt_fu_304_output_0;

assign output_0_ap_vld = grp_aes_decrypt_fu_304_output_0_ap_vld;

assign output_1 = grp_aes_decrypt_fu_304_output_1;

assign output_10 = grp_aes_decrypt_fu_304_output_10;

assign output_10_ap_vld = grp_aes_decrypt_fu_304_output_10_ap_vld;

assign output_11 = grp_aes_decrypt_fu_304_output_11;

assign output_11_ap_vld = grp_aes_decrypt_fu_304_output_11_ap_vld;

assign output_12 = grp_aes_decrypt_fu_304_output_12;

assign output_12_ap_vld = grp_aes_decrypt_fu_304_output_12_ap_vld;

assign output_13 = grp_aes_decrypt_fu_304_output_13;

assign output_13_ap_vld = grp_aes_decrypt_fu_304_output_13_ap_vld;

assign output_14 = grp_aes_decrypt_fu_304_output_14;

assign output_14_ap_vld = grp_aes_decrypt_fu_304_output_14_ap_vld;

assign output_15 = grp_aes_decrypt_fu_304_output_15;

assign output_15_ap_vld = grp_aes_decrypt_fu_304_output_15_ap_vld;

assign output_1_ap_vld = grp_aes_decrypt_fu_304_output_1_ap_vld;

assign output_2 = grp_aes_decrypt_fu_304_output_2;

assign output_2_ap_vld = grp_aes_decrypt_fu_304_output_2_ap_vld;

assign output_3 = grp_aes_decrypt_fu_304_output_3;

assign output_3_ap_vld = grp_aes_decrypt_fu_304_output_3_ap_vld;

assign output_4 = grp_aes_decrypt_fu_304_output_4;

assign output_4_ap_vld = grp_aes_decrypt_fu_304_output_4_ap_vld;

assign output_5 = grp_aes_decrypt_fu_304_output_5;

assign output_5_ap_vld = grp_aes_decrypt_fu_304_output_5_ap_vld;

assign output_6 = grp_aes_decrypt_fu_304_output_6;

assign output_6_ap_vld = grp_aes_decrypt_fu_304_output_6_ap_vld;

assign output_7 = grp_aes_decrypt_fu_304_output_7;

assign output_7_ap_vld = grp_aes_decrypt_fu_304_output_7_ap_vld;

assign output_8 = grp_aes_decrypt_fu_304_output_8;

assign output_8_ap_vld = grp_aes_decrypt_fu_304_output_8_ap_vld;

assign output_9 = grp_aes_decrypt_fu_304_output_9;

assign output_9_ap_vld = grp_aes_decrypt_fu_304_output_9_ap_vld;

endmodule //decrypt_dut

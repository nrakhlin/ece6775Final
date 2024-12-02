// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="lfsr,hls_ip_2019_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xc7z020-clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=0.978000,HLS_SYN_LAT=0,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=0,HLS_SYN_LUT=6,HLS_VERSION=2019_2}" *)

module lfsr (
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        seed_V,
        ap_return
);


input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [23:0] seed_V;
output  [23:0] ap_return;

wire   [0:0] tmp_1_fu_38_p3;
wire   [0:0] tmp_fu_30_p3;
wire   [0:0] tmp_2_fu_46_p3;
wire   [0:0] tmp_3_fu_54_p3;
wire   [0:0] xor_ln301_1_fu_68_p2;
wire   [0:0] xor_ln301_fu_62_p2;
wire   [22:0] trunc_ln1356_fu_80_p1;
wire   [0:0] feedback_V_fu_74_p2;

assign ap_done = ap_start;

assign ap_idle = 1'b1;

assign ap_ready = ap_start;

assign ap_return = {{trunc_ln1356_fu_80_p1}, {feedback_V_fu_74_p2}};

assign feedback_V_fu_74_p2 = (xor_ln301_fu_62_p2 ^ xor_ln301_1_fu_68_p2);

assign tmp_1_fu_38_p3 = seed_V[32'd21];

assign tmp_2_fu_46_p3 = seed_V[32'd23];

assign tmp_3_fu_54_p3 = seed_V[32'd22];

assign tmp_fu_30_p3 = seed_V[32'd16];

assign trunc_ln1356_fu_80_p1 = seed_V[22:0];

assign xor_ln301_1_fu_68_p2 = (tmp_3_fu_54_p3 ^ tmp_2_fu_46_p3);

assign xor_ln301_fu_62_p2 = (tmp_fu_30_p3 ^ tmp_1_fu_38_p3);

endmodule //lfsr

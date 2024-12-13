// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module invMixColumn (
        ap_ready,
        column_0_read,
        column_1_read,
        column_2_read,
        column_3_read,
        ap_return_0,
        ap_return_1,
        ap_return_2,
        ap_return_3
);


output   ap_ready;
input  [7:0] column_0_read;
input  [7:0] column_1_read;
input  [7:0] column_2_read;
input  [7:0] column_3_read;
output  [7:0] ap_return_0;
output  [7:0] ap_return_1;
output  [7:0] ap_return_2;
output  [7:0] ap_return_3;

wire    tmp_galois_multiplicatio_fu_46_ap_ready;
wire   [7:0] tmp_galois_multiplicatio_fu_46_ap_return;
wire    tmp_s_galois_multiplicatio_fu_54_ap_ready;
wire   [7:0] tmp_s_galois_multiplicatio_fu_54_ap_return;
wire    tmp_11_galois_multiplicatio_fu_62_ap_ready;
wire   [7:0] tmp_11_galois_multiplicatio_fu_62_ap_return;
wire    tmp_12_galois_multiplicatio_fu_70_ap_ready;
wire   [7:0] tmp_12_galois_multiplicatio_fu_70_ap_return;
wire    tmp_13_galois_multiplicatio_fu_78_ap_ready;
wire   [7:0] tmp_13_galois_multiplicatio_fu_78_ap_return;
wire    tmp_14_galois_multiplicatio_fu_86_ap_ready;
wire   [7:0] tmp_14_galois_multiplicatio_fu_86_ap_return;
wire    tmp_15_galois_multiplicatio_fu_94_ap_ready;
wire   [7:0] tmp_15_galois_multiplicatio_fu_94_ap_return;
wire    tmp_16_galois_multiplicatio_fu_102_ap_ready;
wire   [7:0] tmp_16_galois_multiplicatio_fu_102_ap_return;
wire    tmp_17_galois_multiplicatio_fu_110_ap_ready;
wire   [7:0] tmp_17_galois_multiplicatio_fu_110_ap_return;
wire    tmp_18_galois_multiplicatio_fu_118_ap_ready;
wire   [7:0] tmp_18_galois_multiplicatio_fu_118_ap_return;
wire    tmp_19_galois_multiplicatio_fu_126_ap_ready;
wire   [7:0] tmp_19_galois_multiplicatio_fu_126_ap_return;
wire    tmp_20_galois_multiplicatio_fu_134_ap_ready;
wire   [7:0] tmp_20_galois_multiplicatio_fu_134_ap_return;
wire    tmp_21_galois_multiplicatio_fu_142_ap_ready;
wire   [7:0] tmp_21_galois_multiplicatio_fu_142_ap_return;
wire    tmp_22_galois_multiplicatio_fu_150_ap_ready;
wire   [7:0] tmp_22_galois_multiplicatio_fu_150_ap_return;
wire    tmp_23_galois_multiplicatio_fu_158_ap_ready;
wire   [7:0] tmp_23_galois_multiplicatio_fu_158_ap_return;
wire    tmp_24_galois_multiplicatio_fu_166_ap_ready;
wire   [7:0] tmp_24_galois_multiplicatio_fu_166_ap_return;
wire   [7:0] xor_ln401_2_fu_180_p2;
wire   [7:0] xor_ln401_1_fu_174_p2;
wire   [7:0] xor_ln405_2_fu_198_p2;
wire   [7:0] xor_ln405_1_fu_192_p2;
wire   [7:0] xor_ln409_2_fu_216_p2;
wire   [7:0] xor_ln409_1_fu_210_p2;
wire   [7:0] xor_ln413_2_fu_234_p2;
wire   [7:0] xor_ln413_1_fu_228_p2;
wire   [7:0] xor_ln401_fu_186_p2;
wire   [7:0] xor_ln405_fu_204_p2;
wire   [7:0] xor_ln409_fu_222_p2;
wire   [7:0] xor_ln413_fu_240_p2;

galois_multiplicatio tmp_galois_multiplicatio_fu_46(
    .ap_ready(tmp_galois_multiplicatio_fu_46_ap_ready),
    .a(column_0_read),
    .b(5'd14),
    .ap_return(tmp_galois_multiplicatio_fu_46_ap_return)
);

galois_multiplicatio tmp_s_galois_multiplicatio_fu_54(
    .ap_ready(tmp_s_galois_multiplicatio_fu_54_ap_ready),
    .a(column_3_read),
    .b(5'd9),
    .ap_return(tmp_s_galois_multiplicatio_fu_54_ap_return)
);

galois_multiplicatio tmp_11_galois_multiplicatio_fu_62(
    .ap_ready(tmp_11_galois_multiplicatio_fu_62_ap_ready),
    .a(column_2_read),
    .b(5'd13),
    .ap_return(tmp_11_galois_multiplicatio_fu_62_ap_return)
);

galois_multiplicatio tmp_12_galois_multiplicatio_fu_70(
    .ap_ready(tmp_12_galois_multiplicatio_fu_70_ap_ready),
    .a(column_1_read),
    .b(5'd11),
    .ap_return(tmp_12_galois_multiplicatio_fu_70_ap_return)
);

galois_multiplicatio tmp_13_galois_multiplicatio_fu_78(
    .ap_ready(tmp_13_galois_multiplicatio_fu_78_ap_ready),
    .a(column_1_read),
    .b(5'd14),
    .ap_return(tmp_13_galois_multiplicatio_fu_78_ap_return)
);

galois_multiplicatio tmp_14_galois_multiplicatio_fu_86(
    .ap_ready(tmp_14_galois_multiplicatio_fu_86_ap_ready),
    .a(column_0_read),
    .b(5'd9),
    .ap_return(tmp_14_galois_multiplicatio_fu_86_ap_return)
);

galois_multiplicatio tmp_15_galois_multiplicatio_fu_94(
    .ap_ready(tmp_15_galois_multiplicatio_fu_94_ap_ready),
    .a(column_3_read),
    .b(5'd13),
    .ap_return(tmp_15_galois_multiplicatio_fu_94_ap_return)
);

galois_multiplicatio tmp_16_galois_multiplicatio_fu_102(
    .ap_ready(tmp_16_galois_multiplicatio_fu_102_ap_ready),
    .a(column_2_read),
    .b(5'd11),
    .ap_return(tmp_16_galois_multiplicatio_fu_102_ap_return)
);

galois_multiplicatio tmp_17_galois_multiplicatio_fu_110(
    .ap_ready(tmp_17_galois_multiplicatio_fu_110_ap_ready),
    .a(column_2_read),
    .b(5'd14),
    .ap_return(tmp_17_galois_multiplicatio_fu_110_ap_return)
);

galois_multiplicatio tmp_18_galois_multiplicatio_fu_118(
    .ap_ready(tmp_18_galois_multiplicatio_fu_118_ap_ready),
    .a(column_1_read),
    .b(5'd9),
    .ap_return(tmp_18_galois_multiplicatio_fu_118_ap_return)
);

galois_multiplicatio tmp_19_galois_multiplicatio_fu_126(
    .ap_ready(tmp_19_galois_multiplicatio_fu_126_ap_ready),
    .a(column_0_read),
    .b(5'd13),
    .ap_return(tmp_19_galois_multiplicatio_fu_126_ap_return)
);

galois_multiplicatio tmp_20_galois_multiplicatio_fu_134(
    .ap_ready(tmp_20_galois_multiplicatio_fu_134_ap_ready),
    .a(column_3_read),
    .b(5'd11),
    .ap_return(tmp_20_galois_multiplicatio_fu_134_ap_return)
);

galois_multiplicatio tmp_21_galois_multiplicatio_fu_142(
    .ap_ready(tmp_21_galois_multiplicatio_fu_142_ap_ready),
    .a(column_3_read),
    .b(5'd14),
    .ap_return(tmp_21_galois_multiplicatio_fu_142_ap_return)
);

galois_multiplicatio tmp_22_galois_multiplicatio_fu_150(
    .ap_ready(tmp_22_galois_multiplicatio_fu_150_ap_ready),
    .a(column_2_read),
    .b(5'd9),
    .ap_return(tmp_22_galois_multiplicatio_fu_150_ap_return)
);

galois_multiplicatio tmp_23_galois_multiplicatio_fu_158(
    .ap_ready(tmp_23_galois_multiplicatio_fu_158_ap_ready),
    .a(column_1_read),
    .b(5'd13),
    .ap_return(tmp_23_galois_multiplicatio_fu_158_ap_return)
);

galois_multiplicatio tmp_24_galois_multiplicatio_fu_166(
    .ap_ready(tmp_24_galois_multiplicatio_fu_166_ap_ready),
    .a(column_0_read),
    .b(5'd11),
    .ap_return(tmp_24_galois_multiplicatio_fu_166_ap_return)
);

assign ap_ready = 1'b1;

assign ap_return_0 = xor_ln401_fu_186_p2;

assign ap_return_1 = xor_ln405_fu_204_p2;

assign ap_return_2 = xor_ln409_fu_222_p2;

assign ap_return_3 = xor_ln413_fu_240_p2;

assign xor_ln401_1_fu_174_p2 = (tmp_s_galois_multiplicatio_fu_54_ap_return ^ tmp_galois_multiplicatio_fu_46_ap_return);

assign xor_ln401_2_fu_180_p2 = (tmp_12_galois_multiplicatio_fu_70_ap_return ^ tmp_11_galois_multiplicatio_fu_62_ap_return);

assign xor_ln401_fu_186_p2 = (xor_ln401_2_fu_180_p2 ^ xor_ln401_1_fu_174_p2);

assign xor_ln405_1_fu_192_p2 = (tmp_14_galois_multiplicatio_fu_86_ap_return ^ tmp_13_galois_multiplicatio_fu_78_ap_return);

assign xor_ln405_2_fu_198_p2 = (tmp_16_galois_multiplicatio_fu_102_ap_return ^ tmp_15_galois_multiplicatio_fu_94_ap_return);

assign xor_ln405_fu_204_p2 = (xor_ln405_2_fu_198_p2 ^ xor_ln405_1_fu_192_p2);

assign xor_ln409_1_fu_210_p2 = (tmp_18_galois_multiplicatio_fu_118_ap_return ^ tmp_17_galois_multiplicatio_fu_110_ap_return);

assign xor_ln409_2_fu_216_p2 = (tmp_20_galois_multiplicatio_fu_134_ap_return ^ tmp_19_galois_multiplicatio_fu_126_ap_return);

assign xor_ln409_fu_222_p2 = (xor_ln409_2_fu_216_p2 ^ xor_ln409_1_fu_210_p2);

assign xor_ln413_1_fu_228_p2 = (tmp_22_galois_multiplicatio_fu_150_ap_return ^ tmp_21_galois_multiplicatio_fu_142_ap_return);

assign xor_ln413_2_fu_234_p2 = (tmp_24_galois_multiplicatio_fu_166_ap_return ^ tmp_23_galois_multiplicatio_fu_158_ap_return);

assign xor_ln413_fu_240_p2 = (xor_ln413_2_fu_234_p2 ^ xor_ln413_1_fu_228_p2);

endmodule //invMixColumn

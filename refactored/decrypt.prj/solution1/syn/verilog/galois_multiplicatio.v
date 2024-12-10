// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module galois_multiplicatio (
        ap_ready,
        a,
        b,
        ap_return
);


output   ap_ready;
input  [7:0] a;
input  [4:0] b;
output  [7:0] ap_return;

wire   [0:0] trunc_ln235_fu_38_p1;
wire   [7:0] shl_ln238_fu_50_p2;
wire   [0:0] tmp_fu_56_p3;
wire   [7:0] xor_ln240_fu_64_p2;
wire   [0:0] tmp_1_fu_78_p3;
wire   [7:0] select_ln239_fu_70_p3;
wire   [7:0] shl_ln238_1_fu_94_p2;
wire   [0:0] tmp_2_fu_100_p3;
wire   [7:0] xor_ln240_1_fu_108_p2;
wire   [0:0] tmp_3_fu_122_p3;
wire   [7:0] select_ln239_1_fu_114_p3;
wire   [7:0] shl_ln238_2_fu_138_p2;
wire   [0:0] tmp_4_fu_144_p3;
wire   [7:0] xor_ln240_2_fu_152_p2;
wire   [0:0] tmp_5_fu_166_p3;
wire   [7:0] select_ln239_2_fu_158_p3;
wire   [7:0] select_ln235_fu_42_p3;
wire   [7:0] select_ln235_2_fu_130_p3;
wire   [7:0] xor_ln235_fu_182_p2;
wire   [7:0] select_ln235_1_fu_86_p3;
wire   [7:0] select_ln235_3_fu_174_p3;
wire   [7:0] xor_ln235_1_fu_188_p2;

assign ap_ready = 1'b1;

assign ap_return = (xor_ln235_1_fu_188_p2 ^ select_ln235_3_fu_174_p3);

assign select_ln235_1_fu_86_p3 = ((tmp_1_fu_78_p3[0:0] === 1'b1) ? select_ln239_fu_70_p3 : 8'd0);

assign select_ln235_2_fu_130_p3 = ((tmp_3_fu_122_p3[0:0] === 1'b1) ? select_ln239_1_fu_114_p3 : 8'd0);

assign select_ln235_3_fu_174_p3 = ((tmp_5_fu_166_p3[0:0] === 1'b1) ? select_ln239_2_fu_158_p3 : 8'd0);

assign select_ln235_fu_42_p3 = ((trunc_ln235_fu_38_p1[0:0] === 1'b1) ? a : 8'd0);

assign select_ln239_1_fu_114_p3 = ((tmp_2_fu_100_p3[0:0] === 1'b1) ? xor_ln240_1_fu_108_p2 : shl_ln238_1_fu_94_p2);

assign select_ln239_2_fu_158_p3 = ((tmp_4_fu_144_p3[0:0] === 1'b1) ? xor_ln240_2_fu_152_p2 : shl_ln238_2_fu_138_p2);

assign select_ln239_fu_70_p3 = ((tmp_fu_56_p3[0:0] === 1'b1) ? xor_ln240_fu_64_p2 : shl_ln238_fu_50_p2);

assign shl_ln238_1_fu_94_p2 = select_ln239_fu_70_p3 << 8'd1;

assign shl_ln238_2_fu_138_p2 = select_ln239_1_fu_114_p3 << 8'd1;

assign shl_ln238_fu_50_p2 = a << 8'd1;

assign tmp_1_fu_78_p3 = b[32'd1];

assign tmp_2_fu_100_p3 = select_ln239_fu_70_p3[32'd7];

assign tmp_3_fu_122_p3 = b[32'd2];

assign tmp_4_fu_144_p3 = select_ln239_1_fu_114_p3[32'd7];

assign tmp_5_fu_166_p3 = b[32'd3];

assign tmp_fu_56_p3 = a[32'd7];

assign trunc_ln235_fu_38_p1 = b[0:0];

assign xor_ln235_1_fu_188_p2 = (xor_ln235_fu_182_p2 ^ select_ln235_1_fu_86_p3);

assign xor_ln235_fu_182_p2 = (select_ln235_fu_42_p3 ^ select_ln235_2_fu_130_p3);

assign xor_ln240_1_fu_108_p2 = (shl_ln238_1_fu_94_p2 ^ 8'd27);

assign xor_ln240_2_fu_152_p2 = (shl_ln238_2_fu_138_p2 ^ 8'd27);

assign xor_ln240_fu_64_p2 = (shl_ln238_fu_50_p2 ^ 8'd27);

endmodule //galois_multiplicatio

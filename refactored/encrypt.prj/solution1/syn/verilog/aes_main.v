// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module aes_main (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        state_address0,
        state_ce0,
        state_we0,
        state_d0,
        state_q0,
        expandedKey_address0,
        expandedKey_ce0,
        expandedKey_q0
);

parameter    ap_ST_fsm_state1 = 21'd1;
parameter    ap_ST_fsm_state2 = 21'd2;
parameter    ap_ST_fsm_state3 = 21'd4;
parameter    ap_ST_fsm_state4 = 21'd8;
parameter    ap_ST_fsm_state5 = 21'd16;
parameter    ap_ST_fsm_state6 = 21'd32;
parameter    ap_ST_fsm_state7 = 21'd64;
parameter    ap_ST_fsm_state8 = 21'd128;
parameter    ap_ST_fsm_state9 = 21'd256;
parameter    ap_ST_fsm_state10 = 21'd512;
parameter    ap_ST_fsm_state11 = 21'd1024;
parameter    ap_ST_fsm_state12 = 21'd2048;
parameter    ap_ST_fsm_state13 = 21'd4096;
parameter    ap_ST_fsm_state14 = 21'd8192;
parameter    ap_ST_fsm_state15 = 21'd16384;
parameter    ap_ST_fsm_state16 = 21'd32768;
parameter    ap_ST_fsm_state17 = 21'd65536;
parameter    ap_ST_fsm_state18 = 21'd131072;
parameter    ap_ST_fsm_state19 = 21'd262144;
parameter    ap_ST_fsm_state20 = 21'd524288;
parameter    ap_ST_fsm_state21 = 21'd1048576;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [3:0] state_address0;
output   state_ce0;
output   state_we0;
output  [7:0] state_d0;
input  [7:0] state_q0;
output  [7:0] expandedKey_address0;
output   expandedKey_ce0;
input  [7:0] expandedKey_q0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[3:0] state_address0;
reg state_ce0;
reg state_we0;
reg[7:0] state_d0;
reg expandedKey_ce0;

(* fsm_encoding = "none" *) reg   [20:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [7:0] sbox_address0;
reg    sbox_ce0;
wire   [7:0] sbox_q0;
wire   [4:0] i_6_fu_240_p2;
reg   [4:0] i_6_reg_360;
wire    ap_CS_fsm_state3;
reg   [3:0] state_addr_reg_365;
wire   [0:0] icmp_ln200_fu_234_p2;
wire   [9:0] zext_ln26_fu_266_p1;
reg   [9:0] zext_ln26_reg_378;
wire    ap_CS_fsm_state5;
wire   [0:0] icmp_ln24_fu_252_p2;
wire   [4:0] i_8_fu_277_p2;
reg   [4:0] i_8_reg_386;
wire    ap_CS_fsm_state7;
reg   [3:0] state_addr_6_reg_391;
wire   [0:0] icmp_ln170_1_fu_271_p2;
wire    ap_CS_fsm_state8;
wire   [4:0] i_10_fu_299_p2;
reg   [4:0] i_10_reg_404;
wire    ap_CS_fsm_state13;
reg   [3:0] state_addr_8_reg_409;
wire   [0:0] icmp_ln200_2_fu_293_p2;
wire   [3:0] i_fu_311_p2;
wire   [4:0] i_7_fu_323_p2;
reg   [4:0] i_7_reg_427;
wire    ap_CS_fsm_state16;
reg   [3:0] state_addr_5_reg_432;
wire   [0:0] icmp_ln170_fu_317_p2;
wire    ap_CS_fsm_state17;
wire   [4:0] i_9_fu_345_p2;
reg   [4:0] i_9_reg_445;
wire    ap_CS_fsm_state20;
reg   [3:0] state_addr_7_reg_450;
wire   [0:0] icmp_ln200_1_fu_339_p2;
reg   [3:0] roundKey_address0;
reg    roundKey_ce0;
reg    roundKey_we0;
wire   [7:0] roundKey_q0;
wire    grp_mixColumns_fu_204_ap_start;
wire    grp_mixColumns_fu_204_ap_done;
wire    grp_mixColumns_fu_204_ap_idle;
wire    grp_mixColumns_fu_204_ap_ready;
wire   [3:0] grp_mixColumns_fu_204_state_address0;
wire    grp_mixColumns_fu_204_state_ce0;
wire    grp_mixColumns_fu_204_state_we0;
wire   [7:0] grp_mixColumns_fu_204_state_d0;
wire    grp_shiftRows_fu_210_ap_start;
wire    grp_shiftRows_fu_210_ap_done;
wire    grp_shiftRows_fu_210_ap_idle;
wire    grp_shiftRows_fu_210_ap_ready;
wire   [3:0] grp_shiftRows_fu_210_state_address0;
wire    grp_shiftRows_fu_210_state_ce0;
wire    grp_shiftRows_fu_210_state_we0;
wire   [7:0] grp_shiftRows_fu_210_state_d0;
wire    grp_createRoundKey_fu_216_ap_start;
wire    grp_createRoundKey_fu_216_ap_done;
wire    grp_createRoundKey_fu_216_ap_idle;
wire    grp_createRoundKey_fu_216_ap_ready;
wire   [7:0] grp_createRoundKey_fu_216_expandedKey_address0;
wire    grp_createRoundKey_fu_216_expandedKey_ce0;
wire   [3:0] grp_createRoundKey_fu_216_roundKey_address0;
wire    grp_createRoundKey_fu_216_roundKey_ce0;
wire    grp_createRoundKey_fu_216_roundKey_we0;
wire   [7:0] grp_createRoundKey_fu_216_roundKey_d0;
reg   [9:0] grp_createRoundKey_fu_216_ptr;
reg   [4:0] i_0_i_reg_137;
wire    ap_CS_fsm_state2;
wire    ap_CS_fsm_state4;
reg   [3:0] i_0_reg_148;
reg   [4:0] i_0_i_i_reg_160;
wire    ap_CS_fsm_state6;
wire    ap_CS_fsm_state9;
reg   [4:0] i_0_i2_i_reg_171;
wire    ap_CS_fsm_state12;
wire    ap_CS_fsm_state14;
reg   [4:0] i_0_i2_reg_182;
wire    ap_CS_fsm_state15;
wire    ap_CS_fsm_state18;
reg   [4:0] i_0_i6_reg_193;
wire    ap_CS_fsm_state19;
wire    ap_CS_fsm_state21;
reg    grp_mixColumns_fu_204_ap_start_reg;
wire    ap_CS_fsm_state11;
reg    grp_shiftRows_fu_210_ap_start_reg;
wire    ap_CS_fsm_state10;
reg    grp_createRoundKey_fu_216_ap_start_reg;
wire   [63:0] zext_ln201_fu_246_p1;
wire   [63:0] zext_ln171_1_fu_283_p1;
wire   [63:0] zext_ln43_1_fu_288_p1;
wire   [63:0] zext_ln201_2_fu_305_p1;
wire   [63:0] zext_ln171_fu_329_p1;
wire   [63:0] zext_ln43_fu_334_p1;
wire   [63:0] zext_ln201_1_fu_351_p1;
wire   [7:0] grp_fu_227_p2;
wire   [7:0] shl_ln_fu_258_p3;
reg   [20:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 21'd1;
#0 grp_mixColumns_fu_204_ap_start_reg = 1'b0;
#0 grp_shiftRows_fu_210_ap_start_reg = 1'b0;
#0 grp_createRoundKey_fu_216_ap_start_reg = 1'b0;
end

core_sbox #(
    .DataWidth( 8 ),
    .AddressRange( 256 ),
    .AddressWidth( 8 ))
sbox_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(sbox_address0),
    .ce0(sbox_ce0),
    .q0(sbox_q0)
);

aes_main_roundKey #(
    .DataWidth( 8 ),
    .AddressRange( 16 ),
    .AddressWidth( 4 ))
roundKey_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(roundKey_address0),
    .ce0(roundKey_ce0),
    .we0(roundKey_we0),
    .d0(grp_createRoundKey_fu_216_roundKey_d0),
    .q0(roundKey_q0)
);

mixColumns grp_mixColumns_fu_204(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_mixColumns_fu_204_ap_start),
    .ap_done(grp_mixColumns_fu_204_ap_done),
    .ap_idle(grp_mixColumns_fu_204_ap_idle),
    .ap_ready(grp_mixColumns_fu_204_ap_ready),
    .state_address0(grp_mixColumns_fu_204_state_address0),
    .state_ce0(grp_mixColumns_fu_204_state_ce0),
    .state_we0(grp_mixColumns_fu_204_state_we0),
    .state_d0(grp_mixColumns_fu_204_state_d0),
    .state_q0(state_q0)
);

shiftRows grp_shiftRows_fu_210(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_shiftRows_fu_210_ap_start),
    .ap_done(grp_shiftRows_fu_210_ap_done),
    .ap_idle(grp_shiftRows_fu_210_ap_idle),
    .ap_ready(grp_shiftRows_fu_210_ap_ready),
    .state_address0(grp_shiftRows_fu_210_state_address0),
    .state_ce0(grp_shiftRows_fu_210_state_ce0),
    .state_we0(grp_shiftRows_fu_210_state_we0),
    .state_d0(grp_shiftRows_fu_210_state_d0),
    .state_q0(state_q0)
);

createRoundKey grp_createRoundKey_fu_216(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_createRoundKey_fu_216_ap_start),
    .ap_done(grp_createRoundKey_fu_216_ap_done),
    .ap_idle(grp_createRoundKey_fu_216_ap_idle),
    .ap_ready(grp_createRoundKey_fu_216_ap_ready),
    .expandedKey_address0(grp_createRoundKey_fu_216_expandedKey_address0),
    .expandedKey_ce0(grp_createRoundKey_fu_216_expandedKey_ce0),
    .expandedKey_q0(expandedKey_q0),
    .roundKey_address0(grp_createRoundKey_fu_216_roundKey_address0),
    .roundKey_ce0(grp_createRoundKey_fu_216_roundKey_ce0),
    .roundKey_we0(grp_createRoundKey_fu_216_roundKey_we0),
    .roundKey_d0(grp_createRoundKey_fu_216_roundKey_d0),
    .ptr(grp_createRoundKey_fu_216_ptr)
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
        grp_createRoundKey_fu_216_ap_start_reg <= 1'b0;
    end else begin
        if ((((icmp_ln24_fu_252_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5)) | ((icmp_ln24_fu_252_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5)) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
            grp_createRoundKey_fu_216_ap_start_reg <= 1'b1;
        end else if ((grp_createRoundKey_fu_216_ap_ready == 1'b1)) begin
            grp_createRoundKey_fu_216_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_mixColumns_fu_204_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state11)) begin
            grp_mixColumns_fu_204_ap_start_reg <= 1'b1;
        end else if ((grp_mixColumns_fu_204_ap_ready == 1'b1)) begin
            grp_mixColumns_fu_204_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_shiftRows_fu_210_ap_start_reg <= 1'b0;
    end else begin
        if ((((icmp_ln170_1_fu_271_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7)) | ((1'b1 == ap_CS_fsm_state16) & (icmp_ln170_fu_317_p2 == 1'd1)))) begin
            grp_shiftRows_fu_210_ap_start_reg <= 1'b1;
        end else if ((grp_shiftRows_fu_210_ap_ready == 1'b1)) begin
            grp_shiftRows_fu_210_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        i_0_i2_i_reg_171 <= i_10_reg_404;
    end else if (((1'b1 == ap_CS_fsm_state12) & (grp_mixColumns_fu_204_ap_done == 1'b1))) begin
        i_0_i2_i_reg_171 <= 5'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        i_0_i2_reg_182 <= i_7_reg_427;
    end else if (((1'b1 == ap_CS_fsm_state15) & (grp_createRoundKey_fu_216_ap_done == 1'b1))) begin
        i_0_i2_reg_182 <= 5'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        i_0_i6_reg_193 <= i_9_reg_445;
    end else if (((1'b1 == ap_CS_fsm_state19) & (grp_shiftRows_fu_210_ap_done == 1'b1))) begin
        i_0_i6_reg_193 <= 5'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        i_0_i_i_reg_160 <= i_8_reg_386;
    end else if (((1'b1 == ap_CS_fsm_state6) & (grp_createRoundKey_fu_216_ap_done == 1'b1))) begin
        i_0_i_i_reg_160 <= 5'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        i_0_i_reg_137 <= i_6_reg_360;
    end else if (((1'b1 == ap_CS_fsm_state2) & (grp_createRoundKey_fu_216_ap_done == 1'b1))) begin
        i_0_i_reg_137 <= 5'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln200_fu_234_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        i_0_reg_148 <= 4'd1;
    end else if (((1'b1 == ap_CS_fsm_state13) & (icmp_ln200_2_fu_293_p2 == 1'd1))) begin
        i_0_reg_148 <= i_fu_311_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        i_10_reg_404 <= i_10_fu_299_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        i_6_reg_360 <= i_6_fu_240_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        i_7_reg_427 <= i_7_fu_323_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        i_8_reg_386 <= i_8_fu_277_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        i_9_reg_445 <= i_9_fu_345_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln170_fu_317_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state16))) begin
        state_addr_5_reg_432 <= zext_ln171_fu_329_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln170_1_fu_271_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7))) begin
        state_addr_6_reg_391 <= zext_ln171_1_fu_283_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln200_1_fu_339_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state20))) begin
        state_addr_7_reg_450 <= zext_ln201_1_fu_351_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln200_2_fu_293_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state13))) begin
        state_addr_8_reg_409 <= zext_ln201_2_fu_305_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln200_fu_234_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        state_addr_reg_365 <= zext_ln201_fu_246_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln24_fu_252_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        zext_ln26_reg_378[7 : 4] <= zext_ln26_fu_266_p1[7 : 4];
    end
end

always @ (*) begin
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | ((1'b1 == ap_CS_fsm_state20) & (icmp_ln200_1_fu_339_p2 == 1'd1)))) begin
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
    if (((1'b1 == ap_CS_fsm_state20) & (icmp_ln200_1_fu_339_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state2))) begin
        expandedKey_ce0 = grp_createRoundKey_fu_216_expandedKey_ce0;
    end else begin
        expandedKey_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_createRoundKey_fu_216_ptr = 10'd160;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_createRoundKey_fu_216_ptr = zext_ln26_reg_378;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_createRoundKey_fu_216_ptr = 10'd0;
    end else begin
        grp_createRoundKey_fu_216_ptr = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        roundKey_address0 = zext_ln201_1_fu_351_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        roundKey_address0 = zext_ln201_2_fu_305_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        roundKey_address0 = zext_ln201_fu_246_p1;
    end else if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state2))) begin
        roundKey_address0 = grp_createRoundKey_fu_216_roundKey_address0;
    end else begin
        roundKey_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state13))) begin
        roundKey_ce0 = 1'b1;
    end else if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state2))) begin
        roundKey_ce0 = grp_createRoundKey_fu_216_roundKey_ce0;
    end else begin
        roundKey_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state2))) begin
        roundKey_we0 = grp_createRoundKey_fu_216_roundKey_we0;
    end else begin
        roundKey_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        sbox_address0 = zext_ln43_fu_334_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        sbox_address0 = zext_ln43_1_fu_288_p1;
    end else begin
        sbox_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state8))) begin
        sbox_ce0 = 1'b1;
    end else begin
        sbox_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        state_address0 = state_addr_7_reg_450;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        state_address0 = zext_ln201_1_fu_351_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        state_address0 = state_addr_5_reg_432;
    end else if (((icmp_ln170_fu_317_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state16))) begin
        state_address0 = zext_ln171_fu_329_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        state_address0 = state_addr_8_reg_409;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        state_address0 = zext_ln201_2_fu_305_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        state_address0 = state_addr_6_reg_391;
    end else if (((icmp_ln170_1_fu_271_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7))) begin
        state_address0 = zext_ln171_1_fu_283_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        state_address0 = state_addr_reg_365;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        state_address0 = zext_ln201_fu_246_p1;
    end else if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state19))) begin
        state_address0 = grp_shiftRows_fu_210_state_address0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        state_address0 = grp_mixColumns_fu_204_state_address0;
    end else begin
        state_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state13) | ((icmp_ln170_1_fu_271_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7)) | ((icmp_ln170_fu_317_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state16)))) begin
        state_ce0 = 1'b1;
    end else if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state19))) begin
        state_ce0 = grp_shiftRows_fu_210_state_ce0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        state_ce0 = grp_mixColumns_fu_204_state_ce0;
    end else begin
        state_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state9))) begin
        state_d0 = sbox_q0;
    end else if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state4))) begin
        state_d0 = grp_fu_227_p2;
    end else if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state19))) begin
        state_d0 = grp_shiftRows_fu_210_state_d0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        state_d0 = grp_mixColumns_fu_204_state_d0;
    end else begin
        state_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state4))) begin
        state_we0 = 1'b1;
    end else if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state19))) begin
        state_we0 = grp_shiftRows_fu_210_state_we0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        state_we0 = grp_mixColumns_fu_204_state_we0;
    end else begin
        state_we0 = 1'b0;
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
            if (((1'b1 == ap_CS_fsm_state2) & (grp_createRoundKey_fu_216_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln200_fu_234_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state5 : begin
            if (((icmp_ln24_fu_252_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state15;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (grp_createRoundKey_fu_216_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            if (((icmp_ln170_1_fu_271_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state10 : begin
            if (((1'b1 == ap_CS_fsm_state10) & (grp_shiftRows_fu_210_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            if (((1'b1 == ap_CS_fsm_state12) & (grp_mixColumns_fu_204_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end
        end
        ap_ST_fsm_state13 : begin
            if (((1'b1 == ap_CS_fsm_state13) & (icmp_ln200_2_fu_293_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state15 : begin
            if (((1'b1 == ap_CS_fsm_state15) & (grp_createRoundKey_fu_216_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state16;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state15;
            end
        end
        ap_ST_fsm_state16 : begin
            if (((1'b1 == ap_CS_fsm_state16) & (icmp_ln170_fu_317_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state19;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state17;
            end
        end
        ap_ST_fsm_state17 : begin
            ap_NS_fsm = ap_ST_fsm_state18;
        end
        ap_ST_fsm_state18 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state19 : begin
            if (((1'b1 == ap_CS_fsm_state19) & (grp_shiftRows_fu_210_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state20;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state19;
            end
        end
        ap_ST_fsm_state20 : begin
            if (((1'b1 == ap_CS_fsm_state20) & (icmp_ln200_1_fu_339_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state21;
            end
        end
        ap_ST_fsm_state21 : begin
            ap_NS_fsm = ap_ST_fsm_state20;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];

assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];

assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];

assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];

assign ap_CS_fsm_state17 = ap_CS_fsm[32'd16];

assign ap_CS_fsm_state18 = ap_CS_fsm[32'd17];

assign ap_CS_fsm_state19 = ap_CS_fsm[32'd18];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state20 = ap_CS_fsm[32'd19];

assign ap_CS_fsm_state21 = ap_CS_fsm[32'd20];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

assign expandedKey_address0 = grp_createRoundKey_fu_216_expandedKey_address0;

assign grp_createRoundKey_fu_216_ap_start = grp_createRoundKey_fu_216_ap_start_reg;

assign grp_fu_227_p2 = (state_q0 ^ roundKey_q0);

assign grp_mixColumns_fu_204_ap_start = grp_mixColumns_fu_204_ap_start_reg;

assign grp_shiftRows_fu_210_ap_start = grp_shiftRows_fu_210_ap_start_reg;

assign i_10_fu_299_p2 = (i_0_i2_i_reg_171 + 5'd1);

assign i_6_fu_240_p2 = (i_0_i_reg_137 + 5'd1);

assign i_7_fu_323_p2 = (i_0_i2_reg_182 + 5'd1);

assign i_8_fu_277_p2 = (i_0_i_i_reg_160 + 5'd1);

assign i_9_fu_345_p2 = (i_0_i6_reg_193 + 5'd1);

assign i_fu_311_p2 = (i_0_reg_148 + 4'd1);

assign icmp_ln170_1_fu_271_p2 = ((i_0_i_i_reg_160 == 5'd16) ? 1'b1 : 1'b0);

assign icmp_ln170_fu_317_p2 = ((i_0_i2_reg_182 == 5'd16) ? 1'b1 : 1'b0);

assign icmp_ln200_1_fu_339_p2 = ((i_0_i6_reg_193 == 5'd16) ? 1'b1 : 1'b0);

assign icmp_ln200_2_fu_293_p2 = ((i_0_i2_i_reg_171 == 5'd16) ? 1'b1 : 1'b0);

assign icmp_ln200_fu_234_p2 = ((i_0_i_reg_137 == 5'd16) ? 1'b1 : 1'b0);

assign icmp_ln24_fu_252_p2 = ((i_0_reg_148 == 4'd10) ? 1'b1 : 1'b0);

assign shl_ln_fu_258_p3 = {{i_0_reg_148}, {4'd0}};

assign zext_ln171_1_fu_283_p1 = i_0_i_i_reg_160;

assign zext_ln171_fu_329_p1 = i_0_i2_reg_182;

assign zext_ln201_1_fu_351_p1 = i_0_i6_reg_193;

assign zext_ln201_2_fu_305_p1 = i_0_i2_i_reg_171;

assign zext_ln201_fu_246_p1 = i_0_i_reg_137;

assign zext_ln26_fu_266_p1 = shl_ln_fu_258_p3;

assign zext_ln43_1_fu_288_p1 = state_q0;

assign zext_ln43_fu_334_p1 = state_q0;

always @ (posedge ap_clk) begin
    zext_ln26_reg_378[3:0] <= 4'b0000;
    zext_ln26_reg_378[9:8] <= 2'b00;
end

endmodule //aes_main

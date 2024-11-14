// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module aes_invMain (
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

parameter    ap_ST_fsm_state1 = 18'd1;
parameter    ap_ST_fsm_state2 = 18'd2;
parameter    ap_ST_fsm_state3 = 18'd4;
parameter    ap_ST_fsm_state4 = 18'd8;
parameter    ap_ST_fsm_state5 = 18'd16;
parameter    ap_ST_fsm_state6 = 18'd32;
parameter    ap_ST_fsm_state7 = 18'd64;
parameter    ap_ST_fsm_state8 = 18'd128;
parameter    ap_ST_fsm_state9 = 18'd256;
parameter    ap_ST_fsm_state10 = 18'd512;
parameter    ap_ST_fsm_state11 = 18'd1024;
parameter    ap_ST_fsm_state12 = 18'd2048;
parameter    ap_ST_fsm_state13 = 18'd4096;
parameter    ap_ST_fsm_state14 = 18'd8192;
parameter    ap_ST_fsm_state15 = 18'd16384;
parameter    ap_ST_fsm_state16 = 18'd32768;
parameter    ap_ST_fsm_state17 = 18'd65536;
parameter    ap_ST_fsm_state18 = 18'd131072;

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

(* fsm_encoding = "none" *) reg   [17:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [7:0] rsbox_address0;
reg    rsbox_ce0;
wire   [7:0] rsbox_q0;
wire   [4:0] i_7_fu_252_p2;
reg   [4:0] i_7_reg_373;
wire    ap_CS_fsm_state3;
reg   [3:0] state_addr_reg_378;
wire   [0:0] icmp_ln172_fu_246_p2;
wire   [8:0] zext_ln326_fu_278_p1;
reg   [8:0] zext_ln326_reg_391;
wire    ap_CS_fsm_state5;
wire   [0:0] icmp_ln324_fu_264_p2;
wire   [3:0] add_ln324_fu_283_p2;
reg   [3:0] add_ln324_reg_396;
wire    ap_CS_fsm_state9;
wire    grp_createRoundKey_fu_228_ap_ready;
wire    grp_createRoundKey_fu_228_ap_done;
wire   [2:0] k_fu_295_p2;
reg   [2:0] k_reg_414;
wire    ap_CS_fsm_state10;
reg   [7:0] tmp_reg_419;
wire    ap_CS_fsm_state11;
wire  signed [3:0] sext_ln232_fu_301_p1;
reg  signed [3:0] sext_ln232_reg_424;
wire    ap_CS_fsm_state12;
wire  signed [2:0] j_fu_311_p2;
reg  signed [2:0] j_reg_432;
wire   [0:0] icmp_ln232_fu_305_p2;
wire   [4:0] i_8_fu_336_p2;
reg   [4:0] i_8_reg_445;
wire    ap_CS_fsm_state14;
reg   [3:0] state_addr_9_reg_450;
wire   [0:0] icmp_ln213_fu_330_p2;
wire    ap_CS_fsm_state15;
wire   [4:0] i_9_fu_358_p2;
reg   [4:0] i_9_reg_463;
wire    ap_CS_fsm_state17;
reg   [3:0] state_addr_12_reg_468;
wire   [0:0] icmp_ln172_1_fu_352_p2;
reg   [3:0] roundKey_address0;
reg    roundKey_ce0;
reg    roundKey_we0;
wire   [7:0] roundKey_q0;
wire    grp_aes_invRound_fu_219_ap_start;
wire    grp_aes_invRound_fu_219_ap_done;
wire    grp_aes_invRound_fu_219_ap_idle;
wire    grp_aes_invRound_fu_219_ap_ready;
wire   [3:0] grp_aes_invRound_fu_219_state_address0;
wire    grp_aes_invRound_fu_219_state_ce0;
wire    grp_aes_invRound_fu_219_state_we0;
wire   [7:0] grp_aes_invRound_fu_219_state_d0;
wire   [3:0] grp_aes_invRound_fu_219_roundKey_address0;
wire    grp_aes_invRound_fu_219_roundKey_ce0;
wire    grp_createRoundKey_fu_228_ap_start;
wire    grp_createRoundKey_fu_228_ap_idle;
wire   [7:0] grp_createRoundKey_fu_228_expandedKey_address0;
wire    grp_createRoundKey_fu_228_expandedKey_ce0;
wire   [3:0] grp_createRoundKey_fu_228_roundKey_address0;
wire    grp_createRoundKey_fu_228_roundKey_ce0;
wire    grp_createRoundKey_fu_228_roundKey_we0;
wire   [7:0] grp_createRoundKey_fu_228_roundKey_d0;
reg   [8:0] grp_createRoundKey_fu_228_ptr;
reg   [4:0] i_0_i_reg_153;
wire    ap_CS_fsm_state2;
wire    ap_CS_fsm_state4;
reg   [3:0] i_reg_164;
wire    ap_CS_fsm_state8;
reg   [2:0] k_0_i_reg_175;
reg  signed [2:0] j_0_i_reg_186;
wire    ap_CS_fsm_state13;
reg   [4:0] i_0_i4_reg_197;
wire    ap_CS_fsm_state16;
wire   [0:0] icmp_ln229_fu_289_p2;
reg   [4:0] i_0_i8_reg_208;
wire    ap_CS_fsm_state18;
reg    grp_aes_invRound_fu_219_ap_start_reg;
wire    ap_CS_fsm_state7;
reg    grp_createRoundKey_fu_228_ap_start_reg;
wire    ap_CS_fsm_state6;
wire   [63:0] zext_ln173_fu_258_p1;
wire   [63:0] zext_ln233_fu_321_p1;
wire   [63:0] zext_ln233_2_fu_326_p1;
wire   [63:0] zext_ln214_fu_342_p1;
wire   [63:0] zext_ln69_fu_347_p1;
wire   [63:0] zext_ln173_1_fu_364_p1;
wire   [7:0] grp_fu_239_p2;
wire   [7:0] shl_ln_fu_270_p3;
wire  signed [3:0] sext_ln233_fu_317_p1;
reg   [17:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 18'd1;
#0 grp_aes_invRound_fu_219_ap_start_reg = 1'b0;
#0 grp_createRoundKey_fu_228_ap_start_reg = 1'b0;
end

aes_invRound_rsbox #(
    .DataWidth( 8 ),
    .AddressRange( 256 ),
    .AddressWidth( 8 ))
rsbox_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(rsbox_address0),
    .ce0(rsbox_ce0),
    .q0(rsbox_q0)
);

aes_invMain_rounddEe #(
    .DataWidth( 8 ),
    .AddressRange( 16 ),
    .AddressWidth( 4 ))
roundKey_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(roundKey_address0),
    .ce0(roundKey_ce0),
    .we0(roundKey_we0),
    .d0(grp_createRoundKey_fu_228_roundKey_d0),
    .q0(roundKey_q0)
);

aes_invRound grp_aes_invRound_fu_219(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_aes_invRound_fu_219_ap_start),
    .ap_done(grp_aes_invRound_fu_219_ap_done),
    .ap_idle(grp_aes_invRound_fu_219_ap_idle),
    .ap_ready(grp_aes_invRound_fu_219_ap_ready),
    .state_address0(grp_aes_invRound_fu_219_state_address0),
    .state_ce0(grp_aes_invRound_fu_219_state_ce0),
    .state_we0(grp_aes_invRound_fu_219_state_we0),
    .state_d0(grp_aes_invRound_fu_219_state_d0),
    .state_q0(state_q0),
    .roundKey_address0(grp_aes_invRound_fu_219_roundKey_address0),
    .roundKey_ce0(grp_aes_invRound_fu_219_roundKey_ce0),
    .roundKey_q0(roundKey_q0)
);

createRoundKey grp_createRoundKey_fu_228(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_createRoundKey_fu_228_ap_start),
    .ap_done(grp_createRoundKey_fu_228_ap_done),
    .ap_idle(grp_createRoundKey_fu_228_ap_idle),
    .ap_ready(grp_createRoundKey_fu_228_ap_ready),
    .expandedKey_address0(grp_createRoundKey_fu_228_expandedKey_address0),
    .expandedKey_ce0(grp_createRoundKey_fu_228_expandedKey_ce0),
    .expandedKey_q0(expandedKey_q0),
    .roundKey_address0(grp_createRoundKey_fu_228_roundKey_address0),
    .roundKey_ce0(grp_createRoundKey_fu_228_roundKey_ce0),
    .roundKey_we0(grp_createRoundKey_fu_228_roundKey_we0),
    .roundKey_d0(grp_createRoundKey_fu_228_roundKey_d0),
    .ptr(grp_createRoundKey_fu_228_ptr)
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
        grp_aes_invRound_fu_219_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state7)) begin
            grp_aes_invRound_fu_219_ap_start_reg <= 1'b1;
        end else if ((grp_aes_invRound_fu_219_ap_ready == 1'b1)) begin
            grp_aes_invRound_fu_219_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_createRoundKey_fu_228_ap_start_reg <= 1'b0;
    end else begin
        if ((((icmp_ln324_fu_264_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5)) | ((icmp_ln324_fu_264_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5)) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
            grp_createRoundKey_fu_228_ap_start_reg <= 1'b1;
        end else if ((grp_createRoundKey_fu_228_ap_ready == 1'b1)) begin
            grp_createRoundKey_fu_228_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state10) & (icmp_ln229_fu_289_p2 == 1'd1))) begin
        i_0_i4_reg_197 <= 5'd0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        i_0_i4_reg_197 <= i_8_reg_445;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state14) & (icmp_ln213_fu_330_p2 == 1'd1))) begin
        i_0_i8_reg_208 <= 5'd0;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        i_0_i8_reg_208 <= i_9_reg_463;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        i_0_i_reg_153 <= i_7_reg_373;
    end else if (((grp_createRoundKey_fu_228_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        i_0_i_reg_153 <= 5'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln172_fu_246_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        i_reg_164 <= 4'd9;
    end else if (((1'b1 == ap_CS_fsm_state8) & (grp_aes_invRound_fu_219_ap_done == 1'b1))) begin
        i_reg_164 <= add_ln324_reg_396;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        j_0_i_reg_186 <= j_reg_432;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        j_0_i_reg_186 <= 3'd7;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_createRoundKey_fu_228_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state9))) begin
        k_0_i_reg_175 <= 3'd0;
    end else if (((icmp_ln232_fu_305_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state12))) begin
        k_0_i_reg_175 <= k_reg_414;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln324_fu_264_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        add_ln324_reg_396 <= add_ln324_fu_283_p2;
        zext_ln326_reg_391[7 : 4] <= zext_ln326_fu_278_p1[7 : 4];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        i_7_reg_373 <= i_7_fu_252_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        i_8_reg_445 <= i_8_fu_336_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        i_9_reg_463 <= i_9_fu_358_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state12) & (icmp_ln232_fu_305_p2 == 1'd1))) begin
        j_reg_432 <= j_fu_311_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        k_reg_414 <= k_fu_295_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        sext_ln232_reg_424 <= sext_ln232_fu_301_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln172_1_fu_352_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state17))) begin
        state_addr_12_reg_468 <= zext_ln173_1_fu_364_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln213_fu_330_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state14))) begin
        state_addr_9_reg_450 <= zext_ln214_fu_342_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln172_fu_246_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        state_addr_reg_378 <= zext_ln173_fu_258_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        tmp_reg_419 <= state_q0;
    end
end

always @ (*) begin
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | ((1'b1 == ap_CS_fsm_state17) & (icmp_ln172_1_fu_352_p2 == 1'd1)))) begin
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
    if (((1'b1 == ap_CS_fsm_state17) & (icmp_ln172_1_fu_352_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state2))) begin
        expandedKey_ce0 = grp_createRoundKey_fu_228_expandedKey_ce0;
    end else begin
        expandedKey_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_createRoundKey_fu_228_ptr = 9'd0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_createRoundKey_fu_228_ptr = zext_ln326_reg_391;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_createRoundKey_fu_228_ptr = 9'd160;
    end else begin
        grp_createRoundKey_fu_228_ptr = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        roundKey_address0 = zext_ln173_1_fu_364_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        roundKey_address0 = zext_ln173_fu_258_p1;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state2))) begin
        roundKey_address0 = grp_createRoundKey_fu_228_roundKey_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        roundKey_address0 = grp_aes_invRound_fu_219_roundKey_address0;
    end else begin
        roundKey_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state17))) begin
        roundKey_ce0 = 1'b1;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state2))) begin
        roundKey_ce0 = grp_createRoundKey_fu_228_roundKey_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        roundKey_ce0 = grp_aes_invRound_fu_219_roundKey_ce0;
    end else begin
        roundKey_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state2))) begin
        roundKey_we0 = grp_createRoundKey_fu_228_roundKey_we0;
    end else begin
        roundKey_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        rsbox_address0 = zext_ln69_fu_347_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        rsbox_address0 = 8'd0;
    end else begin
        rsbox_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        rsbox_ce0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        rsbox_ce0 = 1'b0;
    end else begin
        rsbox_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        state_address0 = state_addr_12_reg_468;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        state_address0 = zext_ln173_1_fu_364_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        state_address0 = state_addr_9_reg_450;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        state_address0 = zext_ln214_fu_342_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        state_address0 = zext_ln233_2_fu_326_p1;
    end else if (((icmp_ln232_fu_305_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state12))) begin
        state_address0 = 64'd12;
    end else if (((1'b1 == ap_CS_fsm_state12) & (icmp_ln232_fu_305_p2 == 1'd1))) begin
        state_address0 = zext_ln233_fu_321_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        state_address0 = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        state_address0 = state_addr_reg_378;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        state_address0 = zext_ln173_fu_258_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        state_address0 = grp_aes_invRound_fu_219_state_address0;
    end else begin
        state_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10) | ((icmp_ln232_fu_305_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state12)) | ((1'b1 == ap_CS_fsm_state12) & (icmp_ln232_fu_305_p2 == 1'd1)))) begin
        state_ce0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        state_ce0 = grp_aes_invRound_fu_219_state_ce0;
    end else begin
        state_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        state_d0 = rsbox_q0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        state_d0 = state_q0;
    end else if (((icmp_ln232_fu_305_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state12))) begin
        state_d0 = tmp_reg_419;
    end else if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state4))) begin
        state_d0 = grp_fu_239_p2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        state_d0 = grp_aes_invRound_fu_219_state_d0;
    end else begin
        state_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state4) | ((icmp_ln232_fu_305_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state12)))) begin
        state_we0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        state_we0 = grp_aes_invRound_fu_219_state_we0;
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
            if (((grp_createRoundKey_fu_228_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln172_fu_246_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state5 : begin
            if (((icmp_ln324_fu_264_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state6 : begin
            if (((grp_createRoundKey_fu_228_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            if (((1'b1 == ap_CS_fsm_state8) & (grp_aes_invRound_fu_219_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state9 : begin
            if (((grp_createRoundKey_fu_228_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state9))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state10 : begin
            if (((1'b1 == ap_CS_fsm_state10) & (icmp_ln229_fu_289_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            if (((icmp_ln232_fu_305_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state12))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state14 : begin
            if (((1'b1 == ap_CS_fsm_state14) & (icmp_ln213_fu_330_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state17;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state15;
            end
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state17 : begin
            if (((1'b1 == ap_CS_fsm_state17) & (icmp_ln172_1_fu_352_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state18;
            end
        end
        ap_ST_fsm_state18 : begin
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln324_fu_283_p2 = ($signed(i_reg_164) + $signed(4'd15));

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

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

assign expandedKey_address0 = grp_createRoundKey_fu_228_expandedKey_address0;

assign grp_aes_invRound_fu_219_ap_start = grp_aes_invRound_fu_219_ap_start_reg;

assign grp_createRoundKey_fu_228_ap_start = grp_createRoundKey_fu_228_ap_start_reg;

assign grp_fu_239_p2 = (state_q0 ^ roundKey_q0);

assign i_7_fu_252_p2 = (i_0_i_reg_153 + 5'd1);

assign i_8_fu_336_p2 = (i_0_i4_reg_197 + 5'd1);

assign i_9_fu_358_p2 = (i_0_i8_reg_208 + 5'd1);

assign icmp_ln172_1_fu_352_p2 = ((i_0_i8_reg_208 == 5'd16) ? 1'b1 : 1'b0);

assign icmp_ln172_fu_246_p2 = ((i_0_i_reg_153 == 5'd16) ? 1'b1 : 1'b0);

assign icmp_ln213_fu_330_p2 = ((i_0_i4_reg_197 == 5'd16) ? 1'b1 : 1'b0);

assign icmp_ln229_fu_289_p2 = ((k_0_i_reg_175 == 3'd4) ? 1'b1 : 1'b0);

assign icmp_ln232_fu_305_p2 = ((j_0_i_reg_186 > 3'd4) ? 1'b1 : 1'b0);

assign icmp_ln324_fu_264_p2 = ((i_reg_164 == 4'd0) ? 1'b1 : 1'b0);

assign j_fu_311_p2 = ($signed(j_0_i_reg_186) + $signed(3'd7));

assign k_fu_295_p2 = (k_0_i_reg_175 + 3'd1);

assign sext_ln232_fu_301_p1 = j_0_i_reg_186;

assign sext_ln233_fu_317_p1 = j_fu_311_p2;

assign shl_ln_fu_270_p3 = {{i_reg_164}, {4'd0}};

assign zext_ln173_1_fu_364_p1 = i_0_i8_reg_208;

assign zext_ln173_fu_258_p1 = i_0_i_reg_153;

assign zext_ln214_fu_342_p1 = i_0_i4_reg_197;

assign zext_ln233_2_fu_326_p1 = $unsigned(sext_ln232_reg_424);

assign zext_ln233_fu_321_p1 = $unsigned(sext_ln233_fu_317_p1);

assign zext_ln326_fu_278_p1 = shl_ln_fu_270_p3;

assign zext_ln69_fu_347_p1 = state_q0;

always @ (posedge ap_clk) begin
    zext_ln326_reg_391[3:0] <= 4'b0000;
    zext_ln326_reg_391[8] <= 1'b0;
end

endmodule //aes_invMain

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
        state_address1,
        state_ce1,
        state_we1,
        state_d1,
        state_q1
);

parameter    ap_ST_fsm_state1 = 22'd1;
parameter    ap_ST_fsm_state2 = 22'd2;
parameter    ap_ST_fsm_state3 = 22'd4;
parameter    ap_ST_fsm_state4 = 22'd8;
parameter    ap_ST_fsm_state5 = 22'd16;
parameter    ap_ST_fsm_state6 = 22'd32;
parameter    ap_ST_fsm_state7 = 22'd64;
parameter    ap_ST_fsm_state8 = 22'd128;
parameter    ap_ST_fsm_state9 = 22'd256;
parameter    ap_ST_fsm_state10 = 22'd512;
parameter    ap_ST_fsm_state11 = 22'd1024;
parameter    ap_ST_fsm_state12 = 22'd2048;
parameter    ap_ST_fsm_state13 = 22'd4096;
parameter    ap_ST_fsm_state14 = 22'd8192;
parameter    ap_ST_fsm_state15 = 22'd16384;
parameter    ap_ST_fsm_state16 = 22'd32768;
parameter    ap_ST_fsm_state17 = 22'd65536;
parameter    ap_ST_fsm_state18 = 22'd131072;
parameter    ap_ST_fsm_state19 = 22'd262144;
parameter    ap_ST_fsm_state20 = 22'd524288;
parameter    ap_ST_fsm_state21 = 22'd1048576;
parameter    ap_ST_fsm_state22 = 22'd2097152;

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
output  [3:0] state_address1;
output   state_ce1;
output   state_we1;
output  [7:0] state_d1;
input  [7:0] state_q1;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[3:0] state_address0;
reg state_ce0;
reg state_we0;
reg[7:0] state_d0;
reg[3:0] state_address1;
reg state_ce1;
reg state_we1;
reg[7:0] state_d1;

(* fsm_encoding = "none" *) reg   [21:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [7:0] rsbox_address0;
reg    rsbox_ce0;
wire   [7:0] rsbox_q0;
reg   [7:0] reg_317;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state14;
reg   [7:0] reg_323;
wire    ap_CS_fsm_state10;
wire   [4:0] i_11_fu_335_p2;
reg   [4:0] i_11_reg_415;
wire    ap_CS_fsm_state3;
reg   [3:0] state_addr_reg_420;
wire   [0:0] icmp_ln225_fu_329_p2;
wire   [8:0] zext_ln36_fu_361_p1;
reg   [8:0] zext_ln36_reg_433;
wire    ap_CS_fsm_state5;
wire   [0:0] icmp_ln34_fu_347_p2;
wire   [3:0] add_ln34_fu_366_p2;
reg   [3:0] add_ln34_reg_438;
wire   [3:0] state_addr_17_reg_455;
reg   [7:0] state_load_16_reg_465;
wire    ap_CS_fsm_state11;
reg   [7:0] state_load_19_reg_492;
wire    ap_CS_fsm_state12;
reg   [7:0] state_load_20_reg_497;
reg   [7:0] tmp_17_reg_514;
wire    ap_CS_fsm_state13;
wire   [3:0] state_addr_26_reg_524;
wire   [4:0] i_12_fu_378_p2;
reg   [4:0] i_12_reg_532;
wire    ap_CS_fsm_state18;
reg   [3:0] state_addr_27_reg_537;
wire   [0:0] icmp_ln319_fu_372_p2;
wire    ap_CS_fsm_state19;
wire   [4:0] i_13_fu_400_p2;
reg   [4:0] i_13_reg_550;
wire    ap_CS_fsm_state21;
reg   [3:0] state_addr_28_reg_555;
wire   [0:0] icmp_ln225_1_fu_394_p2;
reg   [3:0] roundKey_address0;
reg    roundKey_ce0;
reg    roundKey_we0;
wire   [7:0] roundKey_q0;
wire    grp_aes_invRound_fu_289_ap_start;
wire    grp_aes_invRound_fu_289_ap_done;
wire    grp_aes_invRound_fu_289_ap_idle;
wire    grp_aes_invRound_fu_289_ap_ready;
wire   [3:0] grp_aes_invRound_fu_289_state_address0;
wire    grp_aes_invRound_fu_289_state_ce0;
wire    grp_aes_invRound_fu_289_state_we0;
wire   [7:0] grp_aes_invRound_fu_289_state_d0;
wire   [3:0] grp_aes_invRound_fu_289_state_address1;
wire    grp_aes_invRound_fu_289_state_ce1;
wire    grp_aes_invRound_fu_289_state_we1;
wire   [7:0] grp_aes_invRound_fu_289_state_d1;
wire   [3:0] grp_aes_invRound_fu_289_roundKey_address0;
wire    grp_aes_invRound_fu_289_roundKey_ce0;
wire    grp_createRoundKey_fu_298_ap_start;
wire    grp_createRoundKey_fu_298_ap_done;
wire    grp_createRoundKey_fu_298_ap_idle;
wire    grp_createRoundKey_fu_298_ap_ready;
wire   [3:0] grp_createRoundKey_fu_298_roundKey_address0;
wire    grp_createRoundKey_fu_298_roundKey_ce0;
wire    grp_createRoundKey_fu_298_roundKey_we0;
wire   [7:0] grp_createRoundKey_fu_298_roundKey_d0;
reg   [8:0] grp_createRoundKey_fu_298_ptr;
reg   [4:0] i_0_i_reg_245;
wire    ap_CS_fsm_state2;
wire    ap_CS_fsm_state4;
reg   [3:0] i_reg_256;
wire    ap_CS_fsm_state8;
reg   [4:0] i_0_i3_reg_267;
wire    ap_CS_fsm_state17;
wire    ap_CS_fsm_state20;
reg   [4:0] i_0_i7_reg_278;
wire    ap_CS_fsm_state22;
reg    grp_aes_invRound_fu_289_ap_start_reg;
wire    ap_CS_fsm_state7;
reg    grp_createRoundKey_fu_298_ap_start_reg;
wire    ap_CS_fsm_state16;
wire    ap_CS_fsm_state6;
wire   [63:0] zext_ln226_fu_341_p1;
wire   [63:0] zext_ln321_fu_384_p1;
wire   [63:0] zext_ln48_fu_389_p1;
wire   [63:0] zext_ln226_1_fu_406_p1;
wire   [7:0] grp_fu_309_p2;
wire    ap_CS_fsm_state15;
wire   [7:0] shl_ln_fu_353_p3;
reg   [21:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 22'd1;
#0 grp_aes_invRound_fu_289_ap_start_reg = 1'b0;
#0 grp_createRoundKey_fu_298_ap_start_reg = 1'b0;
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

aes_invMain_roundkbM #(
    .DataWidth( 8 ),
    .AddressRange( 16 ),
    .AddressWidth( 4 ))
roundKey_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(roundKey_address0),
    .ce0(roundKey_ce0),
    .we0(roundKey_we0),
    .d0(grp_createRoundKey_fu_298_roundKey_d0),
    .q0(roundKey_q0)
);

aes_invRound grp_aes_invRound_fu_289(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_aes_invRound_fu_289_ap_start),
    .ap_done(grp_aes_invRound_fu_289_ap_done),
    .ap_idle(grp_aes_invRound_fu_289_ap_idle),
    .ap_ready(grp_aes_invRound_fu_289_ap_ready),
    .state_address0(grp_aes_invRound_fu_289_state_address0),
    .state_ce0(grp_aes_invRound_fu_289_state_ce0),
    .state_we0(grp_aes_invRound_fu_289_state_we0),
    .state_d0(grp_aes_invRound_fu_289_state_d0),
    .state_q0(state_q0),
    .state_address1(grp_aes_invRound_fu_289_state_address1),
    .state_ce1(grp_aes_invRound_fu_289_state_ce1),
    .state_we1(grp_aes_invRound_fu_289_state_we1),
    .state_d1(grp_aes_invRound_fu_289_state_d1),
    .state_q1(state_q1),
    .roundKey_address0(grp_aes_invRound_fu_289_roundKey_address0),
    .roundKey_ce0(grp_aes_invRound_fu_289_roundKey_ce0),
    .roundKey_q0(roundKey_q0)
);

createRoundKey grp_createRoundKey_fu_298(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_createRoundKey_fu_298_ap_start),
    .ap_done(grp_createRoundKey_fu_298_ap_done),
    .ap_idle(grp_createRoundKey_fu_298_ap_idle),
    .ap_ready(grp_createRoundKey_fu_298_ap_ready),
    .roundKey_address0(grp_createRoundKey_fu_298_roundKey_address0),
    .roundKey_ce0(grp_createRoundKey_fu_298_roundKey_ce0),
    .roundKey_we0(grp_createRoundKey_fu_298_roundKey_we0),
    .roundKey_d0(grp_createRoundKey_fu_298_roundKey_d0),
    .ptr(grp_createRoundKey_fu_298_ptr)
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
        grp_aes_invRound_fu_289_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state7)) begin
            grp_aes_invRound_fu_289_ap_start_reg <= 1'b1;
        end else if ((grp_aes_invRound_fu_289_ap_ready == 1'b1)) begin
            grp_aes_invRound_fu_289_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_createRoundKey_fu_298_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state16) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)) | ((icmp_ln34_fu_347_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5)))) begin
            grp_createRoundKey_fu_298_ap_start_reg <= 1'b1;
        end else if ((grp_createRoundKey_fu_298_ap_ready == 1'b1)) begin
            grp_createRoundKey_fu_298_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        i_0_i3_reg_267 <= i_12_reg_532;
    end else if (((grp_createRoundKey_fu_298_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
        i_0_i3_reg_267 <= 5'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state18) & (icmp_ln319_fu_372_p2 == 1'd1))) begin
        i_0_i7_reg_278 <= 5'd0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        i_0_i7_reg_278 <= i_13_reg_550;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        i_0_i_reg_245 <= i_11_reg_415;
    end else if (((grp_createRoundKey_fu_298_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        i_0_i_reg_245 <= 5'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln225_fu_329_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        i_reg_256 <= 4'd9;
    end else if (((1'b1 == ap_CS_fsm_state8) & (grp_aes_invRound_fu_289_ap_done == 1'b1))) begin
        i_reg_256 <= add_ln34_reg_438;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        reg_323 <= state_q0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        reg_323 <= state_q1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln34_fu_347_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        add_ln34_reg_438 <= add_ln34_fu_366_p2;
        zext_ln36_reg_433[7 : 4] <= zext_ln36_fu_361_p1[7 : 4];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        i_11_reg_415 <= i_11_fu_335_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        i_12_reg_532 <= i_12_fu_378_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        i_13_reg_550 <= i_13_fu_400_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9))) begin
        reg_317 <= state_q1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln319_fu_372_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state18))) begin
        state_addr_27_reg_537 <= zext_ln321_fu_384_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln225_1_fu_394_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state21))) begin
        state_addr_28_reg_555 <= zext_ln226_1_fu_406_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln225_fu_329_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        state_addr_reg_420 <= zext_ln226_fu_341_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        state_load_16_reg_465 <= state_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        state_load_19_reg_492 <= state_q1;
        state_load_20_reg_497 <= state_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        tmp_17_reg_514 <= state_q1;
    end
end

always @ (*) begin
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | ((1'b1 == ap_CS_fsm_state21) & (icmp_ln225_1_fu_394_p2 == 1'd1)))) begin
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
    if (((1'b1 == ap_CS_fsm_state21) & (icmp_ln225_1_fu_394_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_createRoundKey_fu_298_ptr = 9'd0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_createRoundKey_fu_298_ptr = zext_ln36_reg_433;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_createRoundKey_fu_298_ptr = 9'd160;
    end else begin
        grp_createRoundKey_fu_298_ptr = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        roundKey_address0 = zext_ln226_1_fu_406_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        roundKey_address0 = zext_ln226_fu_341_p1;
    end else if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state2))) begin
        roundKey_address0 = grp_createRoundKey_fu_298_roundKey_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        roundKey_address0 = grp_aes_invRound_fu_289_roundKey_address0;
    end else begin
        roundKey_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state21))) begin
        roundKey_ce0 = 1'b1;
    end else if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state2))) begin
        roundKey_ce0 = grp_createRoundKey_fu_298_roundKey_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        roundKey_ce0 = grp_aes_invRound_fu_289_roundKey_ce0;
    end else begin
        roundKey_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state2))) begin
        roundKey_we0 = grp_createRoundKey_fu_298_roundKey_we0;
    end else begin
        roundKey_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        rsbox_address0 = zext_ln48_fu_389_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        rsbox_address0 = 8'd0;
    end else begin
        rsbox_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        rsbox_ce0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        rsbox_ce0 = 1'b0;
    end else begin
        rsbox_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        state_address0 = zext_ln226_1_fu_406_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        state_address0 = state_addr_26_reg_524;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        state_address0 = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        state_address0 = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        state_address0 = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        state_address0 = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        state_address0 = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        state_address0 = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        state_address0 = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        state_address0 = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        state_address0 = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        state_address0 = state_addr_reg_420;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        state_address0 = zext_ln226_fu_341_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        state_address0 = grp_aes_invRound_fu_289_state_address0;
    end else begin
        state_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        state_address1 = state_addr_28_reg_555;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        state_address1 = state_addr_27_reg_537;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        state_address1 = zext_ln321_fu_384_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        state_address1 = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        state_address1 = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        state_address1 = state_addr_17_reg_455;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        state_address1 = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        state_address1 = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        state_address1 = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        state_address1 = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        state_address1 = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        state_address1 = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        state_address1 = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        state_address1 = grp_aes_invRound_fu_289_state_address1;
    end else begin
        state_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state5) | ((grp_createRoundKey_fu_298_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        state_ce0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        state_ce0 = grp_aes_invRound_fu_289_state_ce0;
    end else begin
        state_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state5) | ((grp_createRoundKey_fu_298_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        state_ce1 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        state_ce1 = grp_aes_invRound_fu_289_state_ce1;
    end else begin
        state_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        state_d0 = reg_317;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        state_d0 = state_load_19_reg_492;
    end else if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state16))) begin
        state_d0 = reg_323;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state11))) begin
        state_d0 = state_q0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        state_d0 = grp_fu_309_p2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        state_d0 = grp_aes_invRound_fu_289_state_d0;
    end else begin
        state_d0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        state_d1 = grp_fu_309_p2;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        state_d1 = rsbox_q0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        state_d1 = tmp_17_reg_514;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        state_d1 = state_load_20_reg_497;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        state_d1 = state_load_16_reg_465;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        state_d1 = reg_317;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        state_d1 = state_q0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        state_d1 = state_q1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        state_d1 = grp_aes_invRound_fu_289_state_d1;
    end else begin
        state_d1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state11) | ((grp_createRoundKey_fu_298_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        state_we0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        state_we0 = grp_aes_invRound_fu_289_state_we0;
    end else begin
        state_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state11) | ((grp_createRoundKey_fu_298_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        state_we1 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        state_we1 = grp_aes_invRound_fu_289_state_we1;
    end else begin
        state_we1 = 1'b0;
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
            if (((grp_createRoundKey_fu_298_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln225_fu_329_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state5 : begin
            if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln34_fu_347_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state6 : begin
            if (((grp_createRoundKey_fu_298_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            if (((1'b1 == ap_CS_fsm_state8) & (grp_aes_invRound_fu_289_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        ap_ST_fsm_state17 : begin
            if (((grp_createRoundKey_fu_298_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
                ap_NS_fsm = ap_ST_fsm_state18;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state17;
            end
        end
        ap_ST_fsm_state18 : begin
            if (((1'b1 == ap_CS_fsm_state18) & (icmp_ln319_fu_372_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state21;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state19;
            end
        end
        ap_ST_fsm_state19 : begin
            ap_NS_fsm = ap_ST_fsm_state20;
        end
        ap_ST_fsm_state20 : begin
            ap_NS_fsm = ap_ST_fsm_state18;
        end
        ap_ST_fsm_state21 : begin
            if (((1'b1 == ap_CS_fsm_state21) & (icmp_ln225_1_fu_394_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state22;
            end
        end
        ap_ST_fsm_state22 : begin
            ap_NS_fsm = ap_ST_fsm_state21;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln34_fu_366_p2 = ($signed(i_reg_256) + $signed(4'd15));

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

assign ap_CS_fsm_state22 = ap_CS_fsm[32'd21];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

assign grp_aes_invRound_fu_289_ap_start = grp_aes_invRound_fu_289_ap_start_reg;

assign grp_createRoundKey_fu_298_ap_start = grp_createRoundKey_fu_298_ap_start_reg;

assign grp_fu_309_p2 = (state_q0 ^ roundKey_q0);

assign i_11_fu_335_p2 = (i_0_i_reg_245 + 5'd1);

assign i_12_fu_378_p2 = (i_0_i3_reg_267 + 5'd1);

assign i_13_fu_400_p2 = (i_0_i7_reg_278 + 5'd1);

assign icmp_ln225_1_fu_394_p2 = ((i_0_i7_reg_278 == 5'd16) ? 1'b1 : 1'b0);

assign icmp_ln225_fu_329_p2 = ((i_0_i_reg_245 == 5'd16) ? 1'b1 : 1'b0);

assign icmp_ln319_fu_372_p2 = ((i_0_i3_reg_267 == 5'd16) ? 1'b1 : 1'b0);

assign icmp_ln34_fu_347_p2 = ((i_reg_256 == 4'd0) ? 1'b1 : 1'b0);

assign shl_ln_fu_353_p3 = {{i_reg_256}, {4'd0}};

assign state_addr_17_reg_455 = 64'd5;

assign state_addr_26_reg_524 = 64'd12;

assign zext_ln226_1_fu_406_p1 = i_0_i7_reg_278;

assign zext_ln226_fu_341_p1 = i_0_i_reg_245;

assign zext_ln321_fu_384_p1 = i_0_i3_reg_267;

assign zext_ln36_fu_361_p1 = shl_ln_fu_353_p3;

assign zext_ln48_fu_389_p1 = state_q1;

always @ (posedge ap_clk) begin
    zext_ln36_reg_433[3:0] <= 4'b0000;
    zext_ln36_reg_433[8] <= 1'b0;
end

endmodule //aes_invMain

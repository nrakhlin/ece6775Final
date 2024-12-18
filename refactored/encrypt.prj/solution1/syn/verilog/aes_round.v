// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module aes_round (
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
        state_q1,
        roundKey_0_read,
        roundKey_1_read,
        roundKey_2_read,
        roundKey_3_read,
        roundKey_4_read,
        roundKey_5_read,
        roundKey_6_read,
        roundKey_7_read,
        roundKey_8_read,
        roundKey_9_read,
        roundKey_10_read,
        roundKey_11_read,
        roundKey_12_read,
        roundKey_13_read,
        roundKey_14_read,
        roundKey_15_read
);

parameter    ap_ST_fsm_state1 = 19'd1;
parameter    ap_ST_fsm_state2 = 19'd2;
parameter    ap_ST_fsm_state3 = 19'd4;
parameter    ap_ST_fsm_state4 = 19'd8;
parameter    ap_ST_fsm_state5 = 19'd16;
parameter    ap_ST_fsm_state6 = 19'd32;
parameter    ap_ST_fsm_state7 = 19'd64;
parameter    ap_ST_fsm_state8 = 19'd128;
parameter    ap_ST_fsm_state9 = 19'd256;
parameter    ap_ST_fsm_state10 = 19'd512;
parameter    ap_ST_fsm_state11 = 19'd1024;
parameter    ap_ST_fsm_state12 = 19'd2048;
parameter    ap_ST_fsm_state13 = 19'd4096;
parameter    ap_ST_fsm_state14 = 19'd8192;
parameter    ap_ST_fsm_state15 = 19'd16384;
parameter    ap_ST_fsm_state16 = 19'd32768;
parameter    ap_ST_fsm_state17 = 19'd65536;
parameter    ap_ST_fsm_state18 = 19'd131072;
parameter    ap_ST_fsm_state19 = 19'd262144;

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
input  [7:0] roundKey_0_read;
input  [7:0] roundKey_1_read;
input  [7:0] roundKey_2_read;
input  [7:0] roundKey_3_read;
input  [7:0] roundKey_4_read;
input  [7:0] roundKey_5_read;
input  [7:0] roundKey_6_read;
input  [7:0] roundKey_7_read;
input  [7:0] roundKey_8_read;
input  [7:0] roundKey_9_read;
input  [7:0] roundKey_10_read;
input  [7:0] roundKey_11_read;
input  [7:0] roundKey_12_read;
input  [7:0] roundKey_13_read;
input  [7:0] roundKey_14_read;
input  [7:0] roundKey_15_read;

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

(* fsm_encoding = "none" *) reg   [18:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [7:0] sbox_address0;
reg    sbox_ce0;
wire   [7:0] sbox_q0;
reg   [7:0] reg_464;
wire    ap_CS_fsm_state2;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state9;
reg   [7:0] reg_468;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state7;
reg   [7:0] reg_473;
wire    ap_CS_fsm_state11;
wire    ap_CS_fsm_state15;
reg   [7:0] reg_479;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state12;
wire    ap_CS_fsm_state16;
reg   [7:0] reg_485;
wire    ap_CS_fsm_state6;
reg   [7:0] reg_490;
reg   [7:0] reg_495;
wire    ap_CS_fsm_state13;
wire    ap_CS_fsm_state17;
wire   [3:0] state_addr_reg_744;
wire   [3:0] state_addr_15_reg_749;
wire   [3:0] state_addr_10_reg_760;
wire   [3:0] state_addr_3_reg_775;
wire   [3:0] state_addr_14_reg_780;
wire   [3:0] state_addr_2_reg_802;
wire   [3:0] state_addr_13_reg_812;
reg   [7:0] state_load_13_reg_827;
wire   [7:0] xor_ln236_fu_541_p2;
reg   [7:0] xor_ln236_reg_837;
wire   [7:0] xor_ln236_4_fu_547_p2;
reg   [7:0] xor_ln236_4_reg_842;
wire   [3:0] state_addr_1_reg_847;
reg   [7:0] state_load_12_reg_863;
wire   [3:0] state_addr_6_reg_868;
reg   [7:0] state_load_7_reg_873;
wire   [3:0] state_addr_11_reg_883;
reg   [7:0] state_load_11_reg_893;
wire    ap_CS_fsm_state10;
wire   [7:0] xor_ln236_7_fu_609_p2;
reg   [7:0] xor_ln236_7_reg_903;
wire   [7:0] xor_ln236_15_fu_622_p2;
reg   [7:0] xor_ln236_15_reg_908;
wire    ap_CS_fsm_state14;
wire   [7:0] xor_ln236_6_fu_670_p2;
reg   [7:0] xor_ln236_6_reg_933;
wire   [7:0] xor_ln236_14_fu_683_p2;
reg   [7:0] xor_ln236_14_reg_938;
wire   [7:0] xor_ln236_9_fu_732_p2;
reg   [7:0] xor_ln236_9_reg_958;
wire    ap_CS_fsm_state18;
wire   [7:0] xor_ln236_13_fu_738_p2;
reg   [7:0] xor_ln236_13_reg_963;
reg   [7:0] ap_port_reg_roundKey_0_read;
reg   [7:0] ap_port_reg_roundKey_1_read;
reg   [7:0] ap_port_reg_roundKey_2_read;
reg   [7:0] ap_port_reg_roundKey_3_read;
reg   [7:0] ap_port_reg_roundKey_4_read;
reg   [7:0] ap_port_reg_roundKey_5_read;
reg   [7:0] ap_port_reg_roundKey_6_read;
reg   [7:0] ap_port_reg_roundKey_7_read;
reg   [7:0] ap_port_reg_roundKey_8_read;
reg   [7:0] ap_port_reg_roundKey_9_read;
reg   [7:0] ap_port_reg_roundKey_10_read;
reg   [7:0] ap_port_reg_roundKey_11_read;
reg   [7:0] ap_port_reg_roundKey_12_read;
reg   [7:0] ap_port_reg_roundKey_13_read;
reg   [7:0] ap_port_reg_roundKey_14_read;
reg   [7:0] ap_port_reg_roundKey_15_read;
wire    grp_mixColumn_fu_454_ap_ready;
reg   [7:0] grp_mixColumn_fu_454_column_0_read;
reg   [7:0] grp_mixColumn_fu_454_column_1_read;
reg   [7:0] grp_mixColumn_fu_454_column_3_read;
wire   [7:0] grp_mixColumn_fu_454_ap_return_0;
wire   [7:0] grp_mixColumn_fu_454_ap_return_1;
wire   [7:0] grp_mixColumn_fu_454_ap_return_2;
wire   [7:0] grp_mixColumn_fu_454_ap_return_3;
wire   [63:0] zext_ln46_18_fu_500_p1;
wire   [63:0] zext_ln46_fu_505_p1;
wire   [63:0] zext_ln46_13_fu_510_p1;
wire   [63:0] zext_ln46_8_fu_515_p1;
wire   [63:0] zext_ln46_17_fu_520_p1;
wire   [63:0] zext_ln46_6_fu_567_p1;
wire   [63:0] zext_ln46_12_fu_572_p1;
wire   [63:0] zext_ln46_7_fu_577_p1;
wire   [63:0] zext_ln46_16_fu_582_p1;
wire   [63:0] zext_ln46_5_fu_628_p1;
wire   [63:0] zext_ln46_11_fu_633_p1;
wire   [63:0] zext_ln46_10_fu_638_p1;
wire   [63:0] zext_ln46_4_fu_642_p1;
wire   [63:0] zext_ln46_9_fu_689_p1;
wire   [63:0] zext_ln46_14_fu_694_p1;
wire   [63:0] zext_ln46_15_fu_698_p1;
wire   [7:0] xor_ln236_8_fu_553_p2;
wire   [7:0] xor_ln236_12_fu_560_p2;
wire   [7:0] xor_ln236_3_fu_602_p2;
wire   [7:0] xor_ln236_11_fu_615_p2;
wire   [7:0] xor_ln236_2_fu_663_p2;
wire   [7:0] xor_ln236_10_fu_676_p2;
wire   [7:0] xor_ln236_1_fu_718_p2;
wire   [7:0] xor_ln236_5_fu_725_p2;
wire    ap_CS_fsm_state19;
reg   [18:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 19'd1;
end

expandKey_sbox #(
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

mixColumn grp_mixColumn_fu_454(
    .ap_ready(grp_mixColumn_fu_454_ap_ready),
    .column_0_read(grp_mixColumn_fu_454_column_0_read),
    .column_1_read(grp_mixColumn_fu_454_column_1_read),
    .column_2_read(reg_495),
    .column_3_read(grp_mixColumn_fu_454_column_3_read),
    .ap_return_0(grp_mixColumn_fu_454_ap_return_0),
    .ap_return_1(grp_mixColumn_fu_454_ap_return_1),
    .ap_return_2(grp_mixColumn_fu_454_ap_return_2),
    .ap_return_3(grp_mixColumn_fu_454_ap_return_3)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state4))) begin
        reg_468 <= state_q0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        reg_468 <= state_q1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        reg_485 <= state_q0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        reg_485 <= state_q1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        reg_490 <= state_q0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        reg_490 <= state_q1;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_port_reg_roundKey_0_read <= roundKey_0_read;
        ap_port_reg_roundKey_10_read <= roundKey_10_read;
        ap_port_reg_roundKey_11_read <= roundKey_11_read;
        ap_port_reg_roundKey_12_read <= roundKey_12_read;
        ap_port_reg_roundKey_13_read <= roundKey_13_read;
        ap_port_reg_roundKey_14_read <= roundKey_14_read;
        ap_port_reg_roundKey_15_read <= roundKey_15_read;
        ap_port_reg_roundKey_1_read <= roundKey_1_read;
        ap_port_reg_roundKey_2_read <= roundKey_2_read;
        ap_port_reg_roundKey_3_read <= roundKey_3_read;
        ap_port_reg_roundKey_4_read <= roundKey_4_read;
        ap_port_reg_roundKey_5_read <= roundKey_5_read;
        ap_port_reg_roundKey_6_read <= roundKey_6_read;
        ap_port_reg_roundKey_7_read <= roundKey_7_read;
        ap_port_reg_roundKey_8_read <= roundKey_8_read;
        ap_port_reg_roundKey_9_read <= roundKey_9_read;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2))) begin
        reg_464 <= state_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state7))) begin
        reg_473 <= sbox_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state4))) begin
        reg_479 <= sbox_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state13))) begin
        reg_495 <= sbox_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        state_load_11_reg_893 <= state_q1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        state_load_12_reg_863 <= state_q1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        state_load_13_reg_827 <= state_q1;
        xor_ln236_4_reg_842 <= xor_ln236_4_fu_547_p2;
        xor_ln236_reg_837 <= xor_ln236_fu_541_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        state_load_7_reg_873 <= state_q1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        xor_ln236_13_reg_963 <= xor_ln236_13_fu_738_p2;
        xor_ln236_9_reg_958 <= xor_ln236_9_fu_732_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        xor_ln236_14_reg_938 <= xor_ln236_14_fu_683_p2;
        xor_ln236_6_reg_933 <= xor_ln236_6_fu_670_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        xor_ln236_15_reg_908 <= xor_ln236_15_fu_622_p2;
        xor_ln236_7_reg_903 <= xor_ln236_7_fu_609_p2;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state19) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if ((1'b1 == ap_CS_fsm_state19)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_mixColumn_fu_454_column_0_read = reg_473;
    end else if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state6))) begin
        grp_mixColumn_fu_454_column_0_read = reg_479;
    end else begin
        grp_mixColumn_fu_454_column_0_read = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_mixColumn_fu_454_column_1_read = reg_479;
    end else if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state6))) begin
        grp_mixColumn_fu_454_column_1_read = sbox_q0;
    end else begin
        grp_mixColumn_fu_454_column_1_read = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_mixColumn_fu_454_column_3_read = sbox_q0;
    end else if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state6))) begin
        grp_mixColumn_fu_454_column_3_read = reg_473;
    end else begin
        grp_mixColumn_fu_454_column_3_read = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        sbox_address0 = zext_ln46_15_fu_698_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        sbox_address0 = zext_ln46_14_fu_694_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        sbox_address0 = zext_ln46_9_fu_689_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        sbox_address0 = zext_ln46_4_fu_642_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        sbox_address0 = zext_ln46_10_fu_638_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        sbox_address0 = zext_ln46_11_fu_633_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        sbox_address0 = zext_ln46_5_fu_628_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        sbox_address0 = zext_ln46_16_fu_582_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        sbox_address0 = zext_ln46_7_fu_577_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        sbox_address0 = zext_ln46_12_fu_572_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        sbox_address0 = zext_ln46_6_fu_567_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        sbox_address0 = zext_ln46_17_fu_520_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        sbox_address0 = zext_ln46_8_fu_515_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sbox_address0 = zext_ln46_13_fu_510_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        sbox_address0 = zext_ln46_fu_505_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sbox_address0 = zext_ln46_18_fu_500_p1;
    end else begin
        sbox_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state4))) begin
        sbox_ce0 = 1'b1;
    end else begin
        sbox_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        state_address0 = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        state_address0 = state_addr_1_reg_847;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        state_address0 = state_addr_6_reg_868;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        state_address0 = state_addr_2_reg_802;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        state_address0 = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        state_address0 = state_addr_3_reg_775;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        state_address0 = state_addr_reg_744;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        state_address0 = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        state_address0 = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        state_address0 = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        state_address0 = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        state_address0 = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        state_address0 = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        state_address0 = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        state_address0 = 64'd0;
    end else begin
        state_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        state_address1 = state_addr_13_reg_812;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        state_address1 = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        state_address1 = state_addr_14_reg_780;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        state_address1 = state_addr_10_reg_760;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        state_address1 = state_addr_15_reg_749;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        state_address1 = state_addr_11_reg_883;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        state_address1 = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        state_address1 = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        state_address1 = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        state_address1 = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        state_address1 = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        state_address1 = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        state_address1 = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        state_address1 = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        state_address1 = 64'd15;
    end else begin
        state_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state4) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        state_ce0 = 1'b1;
    end else begin
        state_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state4) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        state_ce1 = 1'b1;
    end else begin
        state_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        state_d0 = xor_ln236_9_reg_958;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        state_d0 = xor_ln236_1_fu_718_p2;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        state_d0 = xor_ln236_6_reg_933;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        state_d0 = xor_ln236_2_fu_663_p2;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        state_d0 = xor_ln236_7_reg_903;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        state_d0 = xor_ln236_3_fu_602_p2;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        state_d0 = xor_ln236_reg_837;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        state_d0 = xor_ln236_8_fu_553_p2;
    end else begin
        state_d0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        state_d1 = xor_ln236_13_reg_963;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        state_d1 = xor_ln236_5_fu_725_p2;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        state_d1 = xor_ln236_14_reg_938;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        state_d1 = xor_ln236_10_fu_676_p2;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        state_d1 = xor_ln236_15_reg_908;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        state_d1 = xor_ln236_11_fu_615_p2;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        state_d1 = xor_ln236_4_reg_842;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        state_d1 = xor_ln236_12_fu_560_p2;
    end else begin
        state_d1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state11))) begin
        state_we0 = 1'b1;
    end else begin
        state_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state11))) begin
        state_we1 = 1'b1;
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
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
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
            ap_NS_fsm = ap_ST_fsm_state18;
        end
        ap_ST_fsm_state18 : begin
            ap_NS_fsm = ap_ST_fsm_state19;
        end
        ap_ST_fsm_state19 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
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

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

assign state_addr_10_reg_760 = 64'd10;

assign state_addr_11_reg_883 = 64'd11;

assign state_addr_13_reg_812 = 64'd13;

assign state_addr_14_reg_780 = 64'd14;

assign state_addr_15_reg_749 = 64'd15;

assign state_addr_1_reg_847 = 64'd1;

assign state_addr_2_reg_802 = 64'd2;

assign state_addr_3_reg_775 = 64'd3;

assign state_addr_6_reg_868 = 64'd6;

assign state_addr_reg_744 = 64'd0;

assign xor_ln236_10_fu_676_p2 = (grp_mixColumn_fu_454_ap_return_2 ^ ap_port_reg_roundKey_10_read);

assign xor_ln236_11_fu_615_p2 = (grp_mixColumn_fu_454_ap_return_2 ^ ap_port_reg_roundKey_11_read);

assign xor_ln236_12_fu_560_p2 = (grp_mixColumn_fu_454_ap_return_3 ^ ap_port_reg_roundKey_12_read);

assign xor_ln236_13_fu_738_p2 = (grp_mixColumn_fu_454_ap_return_3 ^ ap_port_reg_roundKey_13_read);

assign xor_ln236_14_fu_683_p2 = (grp_mixColumn_fu_454_ap_return_3 ^ ap_port_reg_roundKey_14_read);

assign xor_ln236_15_fu_622_p2 = (grp_mixColumn_fu_454_ap_return_3 ^ ap_port_reg_roundKey_15_read);

assign xor_ln236_1_fu_718_p2 = (grp_mixColumn_fu_454_ap_return_0 ^ ap_port_reg_roundKey_1_read);

assign xor_ln236_2_fu_663_p2 = (grp_mixColumn_fu_454_ap_return_0 ^ ap_port_reg_roundKey_2_read);

assign xor_ln236_3_fu_602_p2 = (grp_mixColumn_fu_454_ap_return_0 ^ ap_port_reg_roundKey_3_read);

assign xor_ln236_4_fu_547_p2 = (grp_mixColumn_fu_454_ap_return_1 ^ ap_port_reg_roundKey_4_read);

assign xor_ln236_5_fu_725_p2 = (grp_mixColumn_fu_454_ap_return_1 ^ ap_port_reg_roundKey_5_read);

assign xor_ln236_6_fu_670_p2 = (grp_mixColumn_fu_454_ap_return_1 ^ ap_port_reg_roundKey_6_read);

assign xor_ln236_7_fu_609_p2 = (grp_mixColumn_fu_454_ap_return_1 ^ ap_port_reg_roundKey_7_read);

assign xor_ln236_8_fu_553_p2 = (grp_mixColumn_fu_454_ap_return_2 ^ ap_port_reg_roundKey_8_read);

assign xor_ln236_9_fu_732_p2 = (grp_mixColumn_fu_454_ap_return_2 ^ ap_port_reg_roundKey_9_read);

assign xor_ln236_fu_541_p2 = (grp_mixColumn_fu_454_ap_return_0 ^ ap_port_reg_roundKey_0_read);

assign zext_ln46_10_fu_638_p1 = state_load_7_reg_873;

assign zext_ln46_11_fu_633_p1 = reg_468;

assign zext_ln46_12_fu_572_p1 = reg_490;

assign zext_ln46_13_fu_510_p1 = reg_468;

assign zext_ln46_14_fu_694_p1 = state_load_11_reg_893;

assign zext_ln46_15_fu_698_p1 = state_load_12_reg_863;

assign zext_ln46_16_fu_582_p1 = state_load_13_reg_827;

assign zext_ln46_17_fu_520_p1 = reg_485;

assign zext_ln46_18_fu_500_p1 = state_q1;

assign zext_ln46_4_fu_642_p1 = reg_490;

assign zext_ln46_5_fu_628_p1 = reg_485;

assign zext_ln46_6_fu_567_p1 = reg_468;

assign zext_ln46_7_fu_577_p1 = reg_464;

assign zext_ln46_8_fu_515_p1 = reg_464;

assign zext_ln46_9_fu_689_p1 = reg_464;

assign zext_ln46_fu_505_p1 = reg_464;

endmodule //aes_round

// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module aes_encrypt (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        input_0_read,
        input_1_read,
        input_2_read,
        input_3_read,
        input_4_read,
        input_5_read,
        input_6_read,
        input_7_read,
        input_8_read,
        input_9_read,
        input_10_read,
        input_11_read,
        input_12_read,
        input_13_read,
        input_14_read,
        input_15_read,
        output_r_address0,
        output_r_ce0,
        output_r_we0,
        output_r_d0,
        key_address0,
        key_ce0,
        key_q0
);

parameter    ap_ST_fsm_state1 = 9'd1;
parameter    ap_ST_fsm_state2 = 9'd2;
parameter    ap_ST_fsm_state3 = 9'd4;
parameter    ap_ST_fsm_state4 = 9'd8;
parameter    ap_ST_fsm_state5 = 9'd16;
parameter    ap_ST_fsm_state6 = 9'd32;
parameter    ap_ST_fsm_state7 = 9'd64;
parameter    ap_ST_fsm_state8 = 9'd128;
parameter    ap_ST_fsm_state9 = 9'd256;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [7:0] input_0_read;
input  [7:0] input_1_read;
input  [7:0] input_2_read;
input  [7:0] input_3_read;
input  [7:0] input_4_read;
input  [7:0] input_5_read;
input  [7:0] input_6_read;
input  [7:0] input_7_read;
input  [7:0] input_8_read;
input  [7:0] input_9_read;
input  [7:0] input_10_read;
input  [7:0] input_11_read;
input  [7:0] input_12_read;
input  [7:0] input_13_read;
input  [7:0] input_14_read;
input  [7:0] input_15_read;
output  [3:0] output_r_address0;
output   output_r_ce0;
output   output_r_we0;
output  [7:0] output_r_d0;
output  [3:0] key_address0;
output   key_ce0;
input  [7:0] key_q0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg output_r_ce0;
reg output_r_we0;

(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [3:0] zext_ln47_fu_266_p1;
reg   [3:0] zext_ln47_reg_515;
wire    ap_CS_fsm_state2;
wire   [2:0] i_fu_276_p2;
reg   [2:0] i_reg_523;
wire   [3:0] shl_ln_fu_286_p3;
reg   [3:0] shl_ln_reg_528;
wire   [0:0] icmp_ln47_fu_270_p2;
wire   [2:0] j_fu_304_p2;
wire    ap_CS_fsm_state3;
wire   [3:0] zext_ln63_fu_360_p1;
reg   [3:0] zext_ln63_reg_541;
wire    ap_CS_fsm_state7;
wire   [2:0] i_2_fu_370_p2;
reg   [2:0] i_2_reg_549;
wire   [3:0] shl_ln1_fu_380_p3;
reg   [3:0] shl_ln1_reg_554;
wire   [0:0] icmp_ln63_fu_364_p2;
wire   [2:0] j_2_fu_398_p2;
reg   [2:0] j_2_reg_562;
wire    ap_CS_fsm_state8;
wire   [0:0] icmp_ln66_fu_392_p2;
wire   [3:0] add_ln68_1_fu_426_p2;
reg   [3:0] add_ln68_1_reg_572;
reg   [3:0] block_address0;
reg    block_ce0;
reg    block_we0;
reg   [7:0] block_d0;
wire   [7:0] block_q0;
reg    block_ce1;
reg    block_we1;
wire   [7:0] block_q1;
reg   [7:0] expandedKey_address0;
reg    expandedKey_ce0;
reg    expandedKey_we0;
wire   [7:0] expandedKey_q0;
reg   [7:0] expandedKey_address1;
reg    expandedKey_ce1;
reg    expandedKey_we1;
wire   [7:0] expandedKey_q1;
wire    grp_aes_main_fu_247_ap_start;
wire    grp_aes_main_fu_247_ap_done;
wire    grp_aes_main_fu_247_ap_idle;
wire    grp_aes_main_fu_247_ap_ready;
wire   [3:0] grp_aes_main_fu_247_state_address0;
wire    grp_aes_main_fu_247_state_ce0;
wire    grp_aes_main_fu_247_state_we0;
wire   [7:0] grp_aes_main_fu_247_state_d0;
wire   [3:0] grp_aes_main_fu_247_state_address1;
wire    grp_aes_main_fu_247_state_ce1;
wire    grp_aes_main_fu_247_state_we1;
wire   [7:0] grp_aes_main_fu_247_state_d1;
wire   [7:0] grp_aes_main_fu_247_expandedKey_address0;
wire    grp_aes_main_fu_247_expandedKey_ce0;
wire   [7:0] grp_aes_main_fu_247_expandedKey_address1;
wire    grp_aes_main_fu_247_expandedKey_ce1;
wire    grp_expandKey_fu_255_ap_start;
wire    grp_expandKey_fu_255_ap_done;
wire    grp_expandKey_fu_255_ap_idle;
wire    grp_expandKey_fu_255_ap_ready;
wire   [7:0] grp_expandKey_fu_255_expandedKey_address0;
wire    grp_expandKey_fu_255_expandedKey_ce0;
wire    grp_expandKey_fu_255_expandedKey_we0;
wire   [7:0] grp_expandKey_fu_255_expandedKey_d0;
wire   [7:0] grp_expandKey_fu_255_expandedKey_address1;
wire    grp_expandKey_fu_255_expandedKey_ce1;
wire    grp_expandKey_fu_255_expandedKey_we1;
wire   [7:0] grp_expandKey_fu_255_expandedKey_d1;
wire   [3:0] grp_expandKey_fu_255_key_address0;
wire    grp_expandKey_fu_255_key_ce0;
reg   [2:0] i_0_reg_203;
wire   [0:0] icmp_ln50_fu_298_p2;
reg   [2:0] j_0_reg_214;
reg   [2:0] i_1_reg_225;
wire    ap_CS_fsm_state6;
reg   [2:0] j_1_reg_236;
wire    ap_CS_fsm_state9;
reg    grp_aes_main_fu_247_ap_start_reg;
wire    ap_CS_fsm_state5;
reg    grp_expandKey_fu_255_ap_start_reg;
wire    ap_CS_fsm_state4;
wire   [63:0] zext_ln52_fu_355_p1;
wire   [63:0] zext_ln68_fu_421_p1;
wire   [63:0] zext_ln68_1_fu_431_p1;
wire   [7:0] tmp_fu_315_p18;
wire   [1:0] trunc_ln52_fu_282_p1;
wire   [3:0] zext_ln50_fu_294_p1;
wire   [3:0] tmp_fu_315_p17;
wire   [1:0] trunc_ln52_1_fu_338_p1;
wire   [3:0] shl_ln52_1_fu_342_p3;
wire   [3:0] add_ln52_1_fu_350_p2;
wire   [1:0] trunc_ln68_fu_376_p1;
wire   [1:0] trunc_ln68_1_fu_404_p1;
wire   [3:0] shl_ln68_1_fu_408_p3;
wire   [3:0] add_ln68_fu_416_p2;
wire   [3:0] zext_ln66_fu_388_p1;
reg   [8:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 9'd1;
#0 grp_aes_main_fu_247_ap_start_reg = 1'b0;
#0 grp_expandKey_fu_255_ap_start_reg = 1'b0;
end

aes_encrypt_block #(
    .DataWidth( 8 ),
    .AddressRange( 16 ),
    .AddressWidth( 4 ))
block_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(block_address0),
    .ce0(block_ce0),
    .we0(block_we0),
    .d0(block_d0),
    .q0(block_q0),
    .address1(grp_aes_main_fu_247_state_address1),
    .ce1(block_ce1),
    .we1(block_we1),
    .d1(grp_aes_main_fu_247_state_d1),
    .q1(block_q1)
);

aes_encrypt_expanbkb #(
    .DataWidth( 8 ),
    .AddressRange( 176 ),
    .AddressWidth( 8 ))
expandedKey_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(expandedKey_address0),
    .ce0(expandedKey_ce0),
    .we0(expandedKey_we0),
    .d0(grp_expandKey_fu_255_expandedKey_d0),
    .q0(expandedKey_q0),
    .address1(expandedKey_address1),
    .ce1(expandedKey_ce1),
    .we1(expandedKey_we1),
    .d1(grp_expandKey_fu_255_expandedKey_d1),
    .q1(expandedKey_q1)
);

aes_main grp_aes_main_fu_247(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_aes_main_fu_247_ap_start),
    .ap_done(grp_aes_main_fu_247_ap_done),
    .ap_idle(grp_aes_main_fu_247_ap_idle),
    .ap_ready(grp_aes_main_fu_247_ap_ready),
    .state_address0(grp_aes_main_fu_247_state_address0),
    .state_ce0(grp_aes_main_fu_247_state_ce0),
    .state_we0(grp_aes_main_fu_247_state_we0),
    .state_d0(grp_aes_main_fu_247_state_d0),
    .state_q0(block_q0),
    .state_address1(grp_aes_main_fu_247_state_address1),
    .state_ce1(grp_aes_main_fu_247_state_ce1),
    .state_we1(grp_aes_main_fu_247_state_we1),
    .state_d1(grp_aes_main_fu_247_state_d1),
    .state_q1(block_q1),
    .expandedKey_address0(grp_aes_main_fu_247_expandedKey_address0),
    .expandedKey_ce0(grp_aes_main_fu_247_expandedKey_ce0),
    .expandedKey_q0(expandedKey_q0),
    .expandedKey_address1(grp_aes_main_fu_247_expandedKey_address1),
    .expandedKey_ce1(grp_aes_main_fu_247_expandedKey_ce1),
    .expandedKey_q1(expandedKey_q1)
);

expandKey grp_expandKey_fu_255(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_expandKey_fu_255_ap_start),
    .ap_done(grp_expandKey_fu_255_ap_done),
    .ap_idle(grp_expandKey_fu_255_ap_idle),
    .ap_ready(grp_expandKey_fu_255_ap_ready),
    .expandedKey_address0(grp_expandKey_fu_255_expandedKey_address0),
    .expandedKey_ce0(grp_expandKey_fu_255_expandedKey_ce0),
    .expandedKey_we0(grp_expandKey_fu_255_expandedKey_we0),
    .expandedKey_d0(grp_expandKey_fu_255_expandedKey_d0),
    .expandedKey_q0(expandedKey_q0),
    .expandedKey_address1(grp_expandKey_fu_255_expandedKey_address1),
    .expandedKey_ce1(grp_expandKey_fu_255_expandedKey_ce1),
    .expandedKey_we1(grp_expandKey_fu_255_expandedKey_we1),
    .expandedKey_d1(grp_expandKey_fu_255_expandedKey_d1),
    .expandedKey_q1(expandedKey_q1),
    .key_address0(grp_expandKey_fu_255_key_address0),
    .key_ce0(grp_expandKey_fu_255_key_ce0),
    .key_q0(key_q0)
);

encrypt_dut_mux_1cud #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 8 ),
    .din3_WIDTH( 8 ),
    .din4_WIDTH( 8 ),
    .din5_WIDTH( 8 ),
    .din6_WIDTH( 8 ),
    .din7_WIDTH( 8 ),
    .din8_WIDTH( 8 ),
    .din9_WIDTH( 8 ),
    .din10_WIDTH( 8 ),
    .din11_WIDTH( 8 ),
    .din12_WIDTH( 8 ),
    .din13_WIDTH( 8 ),
    .din14_WIDTH( 8 ),
    .din15_WIDTH( 8 ),
    .din16_WIDTH( 4 ),
    .dout_WIDTH( 8 ))
encrypt_dut_mux_1cud_U50(
    .din0(input_0_read),
    .din1(input_1_read),
    .din2(input_2_read),
    .din3(input_3_read),
    .din4(input_4_read),
    .din5(input_5_read),
    .din6(input_6_read),
    .din7(input_7_read),
    .din8(input_8_read),
    .din9(input_9_read),
    .din10(input_10_read),
    .din11(input_11_read),
    .din12(input_12_read),
    .din13(input_13_read),
    .din14(input_14_read),
    .din15(input_15_read),
    .din16(tmp_fu_315_p17),
    .dout(tmp_fu_315_p18)
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
        grp_aes_main_fu_247_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_aes_main_fu_247_ap_start_reg <= 1'b1;
        end else if ((grp_aes_main_fu_247_ap_ready == 1'b1)) begin
            grp_aes_main_fu_247_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_expandKey_fu_255_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln47_fu_270_p2 == 1'd1))) begin
            grp_expandKey_fu_255_ap_start_reg <= 1'b1;
        end else if ((grp_expandKey_fu_255_ap_ready == 1'b1)) begin
            grp_expandKey_fu_255_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln50_fu_298_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        i_0_reg_203 <= i_reg_523;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_0_reg_203 <= 3'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state8) & (icmp_ln66_fu_392_p2 == 1'd1))) begin
        i_1_reg_225 <= i_2_reg_549;
    end else if (((1'b1 == ap_CS_fsm_state6) & (grp_aes_main_fu_247_ap_done == 1'b1))) begin
        i_1_reg_225 <= 3'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln47_fu_270_p2 == 1'd0))) begin
        j_0_reg_214 <= 3'd0;
    end else if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln50_fu_298_p2 == 1'd0))) begin
        j_0_reg_214 <= j_fu_304_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state7) & (icmp_ln63_fu_364_p2 == 1'd0))) begin
        j_1_reg_236 <= 3'd0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        j_1_reg_236 <= j_2_reg_562;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state8) & (icmp_ln66_fu_392_p2 == 1'd0))) begin
        add_ln68_1_reg_572 <= add_ln68_1_fu_426_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        i_2_reg_549 <= i_2_fu_370_p2;
        zext_ln63_reg_541[2 : 0] <= zext_ln63_fu_360_p1[2 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_reg_523 <= i_fu_276_p2;
        zext_ln47_reg_515[2 : 0] <= zext_ln47_fu_266_p1[2 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        j_2_reg_562 <= j_2_fu_398_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state7) & (icmp_ln63_fu_364_p2 == 1'd0))) begin
        shl_ln1_reg_554[3 : 2] <= shl_ln1_fu_380_p3[3 : 2];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln47_fu_270_p2 == 1'd0))) begin
        shl_ln_reg_528[3 : 2] <= shl_ln_fu_286_p3[3 : 2];
    end
end

always @ (*) begin
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | ((1'b1 == ap_CS_fsm_state7) & (icmp_ln63_fu_364_p2 == 1'd1)))) begin
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
    if (((1'b1 == ap_CS_fsm_state7) & (icmp_ln63_fu_364_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        block_address0 = zext_ln68_fu_421_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        block_address0 = zext_ln52_fu_355_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        block_address0 = grp_aes_main_fu_247_state_address0;
    end else begin
        block_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state3))) begin
        block_ce0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        block_ce0 = grp_aes_main_fu_247_state_ce0;
    end else begin
        block_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        block_ce1 = grp_aes_main_fu_247_state_ce1;
    end else begin
        block_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        block_d0 = tmp_fu_315_p18;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        block_d0 = grp_aes_main_fu_247_state_d0;
    end else begin
        block_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln50_fu_298_p2 == 1'd0))) begin
        block_we0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        block_we0 = grp_aes_main_fu_247_state_we0;
    end else begin
        block_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        block_we1 = grp_aes_main_fu_247_state_we1;
    end else begin
        block_we1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        expandedKey_address0 = grp_expandKey_fu_255_expandedKey_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        expandedKey_address0 = grp_aes_main_fu_247_expandedKey_address0;
    end else begin
        expandedKey_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        expandedKey_address1 = grp_expandKey_fu_255_expandedKey_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        expandedKey_address1 = grp_aes_main_fu_247_expandedKey_address1;
    end else begin
        expandedKey_address1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        expandedKey_ce0 = grp_expandKey_fu_255_expandedKey_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        expandedKey_ce0 = grp_aes_main_fu_247_expandedKey_ce0;
    end else begin
        expandedKey_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        expandedKey_ce1 = grp_expandKey_fu_255_expandedKey_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        expandedKey_ce1 = grp_aes_main_fu_247_expandedKey_ce1;
    end else begin
        expandedKey_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        expandedKey_we0 = grp_expandKey_fu_255_expandedKey_we0;
    end else begin
        expandedKey_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        expandedKey_we1 = grp_expandKey_fu_255_expandedKey_we1;
    end else begin
        expandedKey_we1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        output_r_ce0 = 1'b1;
    end else begin
        output_r_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        output_r_we0 = 1'b1;
    end else begin
        output_r_we0 = 1'b0;
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
            if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln47_fu_270_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln50_fu_298_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (grp_expandKey_fu_255_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (grp_aes_main_fu_247_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            if (((1'b1 == ap_CS_fsm_state7) & (icmp_ln63_fu_364_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state8 : begin
            if (((1'b1 == ap_CS_fsm_state8) & (icmp_ln66_fu_392_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln52_1_fu_350_p2 = (zext_ln47_reg_515 + shl_ln52_1_fu_342_p3);

assign add_ln68_1_fu_426_p2 = (zext_ln66_fu_388_p1 + shl_ln1_reg_554);

assign add_ln68_fu_416_p2 = (shl_ln68_1_fu_408_p3 + zext_ln63_reg_541);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

assign grp_aes_main_fu_247_ap_start = grp_aes_main_fu_247_ap_start_reg;

assign grp_expandKey_fu_255_ap_start = grp_expandKey_fu_255_ap_start_reg;

assign i_2_fu_370_p2 = (i_1_reg_225 + 3'd1);

assign i_fu_276_p2 = (i_0_reg_203 + 3'd1);

assign icmp_ln47_fu_270_p2 = ((i_0_reg_203 == 3'd4) ? 1'b1 : 1'b0);

assign icmp_ln50_fu_298_p2 = ((j_0_reg_214 == 3'd4) ? 1'b1 : 1'b0);

assign icmp_ln63_fu_364_p2 = ((i_1_reg_225 == 3'd4) ? 1'b1 : 1'b0);

assign icmp_ln66_fu_392_p2 = ((j_1_reg_236 == 3'd4) ? 1'b1 : 1'b0);

assign j_2_fu_398_p2 = (j_1_reg_236 + 3'd1);

assign j_fu_304_p2 = (j_0_reg_214 + 3'd1);

assign key_address0 = grp_expandKey_fu_255_key_address0;

assign key_ce0 = grp_expandKey_fu_255_key_ce0;

assign output_r_address0 = zext_ln68_1_fu_431_p1;

assign output_r_d0 = block_q0;

assign shl_ln1_fu_380_p3 = {{trunc_ln68_fu_376_p1}, {2'd0}};

assign shl_ln52_1_fu_342_p3 = {{trunc_ln52_1_fu_338_p1}, {2'd0}};

assign shl_ln68_1_fu_408_p3 = {{trunc_ln68_1_fu_404_p1}, {2'd0}};

assign shl_ln_fu_286_p3 = {{trunc_ln52_fu_282_p1}, {2'd0}};

assign tmp_fu_315_p17 = (zext_ln50_fu_294_p1 + shl_ln_reg_528);

assign trunc_ln52_1_fu_338_p1 = j_0_reg_214[1:0];

assign trunc_ln52_fu_282_p1 = i_0_reg_203[1:0];

assign trunc_ln68_1_fu_404_p1 = j_1_reg_236[1:0];

assign trunc_ln68_fu_376_p1 = i_1_reg_225[1:0];

assign zext_ln47_fu_266_p1 = i_0_reg_203;

assign zext_ln50_fu_294_p1 = j_0_reg_214;

assign zext_ln52_fu_355_p1 = add_ln52_1_fu_350_p2;

assign zext_ln63_fu_360_p1 = i_1_reg_225;

assign zext_ln66_fu_388_p1 = j_1_reg_236;

assign zext_ln68_1_fu_431_p1 = add_ln68_1_reg_572;

assign zext_ln68_fu_421_p1 = add_ln68_fu_416_p2;

always @ (posedge ap_clk) begin
    zext_ln47_reg_515[3] <= 1'b0;
    shl_ln_reg_528[1:0] <= 2'b00;
    zext_ln63_reg_541[3] <= 1'b0;
    shl_ln1_reg_554[1:0] <= 2'b00;
end

endmodule //aes_encrypt

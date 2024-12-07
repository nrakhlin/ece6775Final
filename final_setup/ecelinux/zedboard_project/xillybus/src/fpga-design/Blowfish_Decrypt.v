// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module Blowfish_Decrypt (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        ciphertext_address0,
        ciphertext_ce0,
        ciphertext_q0,
        ciphertext_address1,
        ciphertext_ce1,
        ciphertext_q1,
        decryptedtext_address0,
        decryptedtext_ce0,
        decryptedtext_we0,
        decryptedtext_d0,
        decryptedtext_address1,
        decryptedtext_ce1,
        decryptedtext_we1,
        decryptedtext_d1
);

parameter    ap_ST_fsm_state1 = 12'd1;
parameter    ap_ST_fsm_state2 = 12'd2;
parameter    ap_ST_fsm_state3 = 12'd4;
parameter    ap_ST_fsm_state4 = 12'd8;
parameter    ap_ST_fsm_state5 = 12'd16;
parameter    ap_ST_fsm_state6 = 12'd32;
parameter    ap_ST_fsm_state7 = 12'd64;
parameter    ap_ST_fsm_state8 = 12'd128;
parameter    ap_ST_fsm_state9 = 12'd256;
parameter    ap_ST_fsm_state10 = 12'd512;
parameter    ap_ST_fsm_state11 = 12'd1024;
parameter    ap_ST_fsm_state12 = 12'd2048;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [2:0] ciphertext_address0;
output   ciphertext_ce0;
input  [7:0] ciphertext_q0;
output  [2:0] ciphertext_address1;
output   ciphertext_ce1;
input  [7:0] ciphertext_q1;
output  [2:0] decryptedtext_address0;
output   decryptedtext_ce0;
output   decryptedtext_we0;
output  [7:0] decryptedtext_d0;
output  [2:0] decryptedtext_address1;
output   decryptedtext_ce1;
output   decryptedtext_we1;
output  [7:0] decryptedtext_d1;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[2:0] ciphertext_address0;
reg ciphertext_ce0;
reg[2:0] ciphertext_address1;
reg ciphertext_ce1;
reg[2:0] decryptedtext_address0;
reg decryptedtext_ce0;
reg decryptedtext_we0;
reg[7:0] decryptedtext_d0;
reg[2:0] decryptedtext_address1;
reg decryptedtext_ce1;
reg decryptedtext_we1;
reg[7:0] decryptedtext_d1;

(* fsm_encoding = "none" *) reg   [11:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [4:0] P28_address0;
reg    P28_ce0;
wire   [31:0] P28_q0;
wire   [7:0] S29_0_address0;
reg    S29_0_ce0;
wire   [31:0] S29_0_q0;
wire   [7:0] S29_1_address0;
reg    S29_1_ce0;
wire   [31:0] S29_1_q0;
wire   [7:0] S29_2_address0;
reg    S29_2_ce0;
wire   [31:0] S29_2_q0;
wire   [7:0] S29_3_address0;
reg    S29_3_ce0;
wire   [31:0] S29_3_q0;
reg   [7:0] ciphertext_load_reg_642;
wire    ap_CS_fsm_state2;
reg   [7:0] ciphertext_load_1_reg_647;
reg   [7:0] ciphertext_load_2_reg_662;
wire    ap_CS_fsm_state3;
reg   [7:0] ciphertext_load_3_reg_667;
reg   [7:0] ciphertext_load_4_reg_682;
wire    ap_CS_fsm_state4;
reg   [7:0] ciphertext_load_5_reg_687;
wire   [31:0] left_fu_344_p5;
wire    ap_CS_fsm_state5;
wire   [31:0] right_3_fu_352_p5;
wire    ap_CS_fsm_state6;
wire   [0:0] icmp_ln109_fu_372_p2;
wire   [4:0] i_fu_383_p2;
reg   [4:0] i_reg_720;
wire   [31:0] left_8_fu_447_p2;
reg   [31:0] left_8_reg_725;
wire    ap_CS_fsm_state7;
wire   [31:0] add_ln140_2_fu_533_p2;
reg   [31:0] add_ln140_2_reg_750;
wire    ap_CS_fsm_state8;
wire   [31:0] right_fu_539_p2;
wire    ap_CS_fsm_state9;
wire   [7:0] trunc_ln115_fu_572_p1;
reg   [7:0] trunc_ln115_reg_760;
wire    ap_CS_fsm_state11;
reg   [7:0] trunc_ln268_2_reg_765;
reg   [31:0] left_5_reg_313;
reg   [31:0] right_4_reg_323;
reg   [4:0] i_0_reg_333;
wire   [63:0] zext_ln110_fu_378_p1;
wire   [63:0] zext_ln140_fu_501_p1;
wire   [63:0] zext_ln140_4_fu_506_p1;
wire   [63:0] zext_ln140_5_fu_511_p1;
wire   [63:0] zext_ln140_6_fu_516_p1;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state12;
wire   [7:0] xor_ln262_fu_399_p2;
wire   [7:0] xor_ln263_fu_416_p2;
wire   [7:0] xor_ln264_fu_558_p2;
wire   [7:0] xor_ln265_fu_565_p2;
wire   [7:0] xor_ln266_fu_586_p2;
wire   [7:0] xor_ln267_fu_603_p2;
wire   [7:0] xor_ln268_fu_620_p2;
wire   [7:0] xor_ln269_fu_626_p2;
wire   [3:0] tmp_fu_362_p4;
wire   [7:0] trunc_ln262_2_fu_389_p4;
wire   [7:0] trunc_ln263_2_fu_406_p4;
wire   [15:0] trunc_ln110_5_fu_443_p1;
wire   [15:0] trunc_ln110_4_fu_439_p1;
wire   [23:0] trunc_ln110_3_fu_435_p1;
wire   [23:0] trunc_ln110_2_fu_431_p1;
wire   [23:0] xor_ln110_2_fu_459_p2;
wire   [15:0] xor_ln110_1_fu_453_p2;
wire   [7:0] trunc_ln110_1_fu_427_p1;
wire   [7:0] trunc_ln110_fu_423_p1;
wire   [7:0] a_fu_465_p4;
wire   [7:0] b_fu_475_p4;
wire   [7:0] c_fu_485_p4;
wire   [7:0] d_fu_495_p2;
wire   [31:0] add_ln140_fu_521_p2;
wire   [31:0] xor_ln140_fu_527_p2;
wire   [7:0] trunc_ln264_2_fu_548_p4;
wire   [7:0] trunc_ln116_fu_544_p1;
wire   [7:0] trunc_ln266_2_fu_576_p4;
wire   [7:0] trunc_ln267_2_fu_593_p4;
reg   [11:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 12'd1;
end

Blowfish_Encrypt_P #(
    .DataWidth( 32 ),
    .AddressRange( 18 ),
    .AddressWidth( 5 ))
P28_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(P28_address0),
    .ce0(P28_ce0),
    .q0(P28_q0)
);

Blowfish_Encrypt_bkb #(
    .DataWidth( 32 ),
    .AddressRange( 256 ),
    .AddressWidth( 8 ))
S29_0_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(S29_0_address0),
    .ce0(S29_0_ce0),
    .q0(S29_0_q0)
);

Blowfish_Encrypt_cud #(
    .DataWidth( 32 ),
    .AddressRange( 256 ),
    .AddressWidth( 8 ))
S29_1_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(S29_1_address0),
    .ce0(S29_1_ce0),
    .q0(S29_1_q0)
);

Blowfish_Encrypt_dEe #(
    .DataWidth( 32 ),
    .AddressRange( 256 ),
    .AddressWidth( 8 ))
S29_2_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(S29_2_address0),
    .ce0(S29_2_ce0),
    .q0(S29_2_q0)
);

Blowfish_Encrypt_eOg #(
    .DataWidth( 32 ),
    .AddressRange( 256 ),
    .AddressWidth( 8 ))
S29_3_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(S29_3_address0),
    .ce0(S29_3_ce0),
    .q0(S29_3_q0)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        i_0_reg_333 <= i_reg_720;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        i_0_reg_333 <= 5'd17;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        left_5_reg_313 <= left_8_reg_725;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        left_5_reg_313 <= right_3_fu_352_p5;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        right_4_reg_323 <= right_fu_539_p2;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        right_4_reg_323 <= left_fu_344_p5;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        add_ln140_2_reg_750 <= add_ln140_2_fu_533_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        ciphertext_load_1_reg_647 <= ciphertext_q1;
        ciphertext_load_reg_642 <= ciphertext_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        ciphertext_load_2_reg_662 <= ciphertext_q0;
        ciphertext_load_3_reg_667 <= ciphertext_q1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        ciphertext_load_4_reg_682 <= ciphertext_q0;
        ciphertext_load_5_reg_687 <= ciphertext_q1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) & (icmp_ln109_fu_372_p2 == 1'd0))) begin
        i_reg_720 <= i_fu_383_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        left_8_reg_725 <= left_8_fu_447_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        trunc_ln115_reg_760 <= trunc_ln115_fu_572_p1;
        trunc_ln268_2_reg_765 <= {{right_4_reg_323[15:8]}};
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        P28_ce0 = 1'b1;
    end else begin
        P28_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        S29_0_ce0 = 1'b1;
    end else begin
        S29_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        S29_1_ce0 = 1'b1;
    end else begin
        S29_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        S29_2_ce0 = 1'b1;
    end else begin
        S29_2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        S29_3_ce0 = 1'b1;
    end else begin
        S29_3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if ((1'b1 == ap_CS_fsm_state12)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        ciphertext_address0 = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        ciphertext_address0 = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        ciphertext_address0 = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        ciphertext_address0 = 64'd0;
    end else begin
        ciphertext_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        ciphertext_address1 = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        ciphertext_address1 = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        ciphertext_address1 = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        ciphertext_address1 = 64'd1;
    end else begin
        ciphertext_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        ciphertext_ce0 = 1'b1;
    end else begin
        ciphertext_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        ciphertext_ce1 = 1'b1;
    end else begin
        ciphertext_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        decryptedtext_address0 = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        decryptedtext_address0 = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        decryptedtext_address0 = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        decryptedtext_address0 = 64'd0;
    end else begin
        decryptedtext_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        decryptedtext_address1 = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        decryptedtext_address1 = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        decryptedtext_address1 = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        decryptedtext_address1 = 64'd1;
    end else begin
        decryptedtext_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state6))) begin
        decryptedtext_ce0 = 1'b1;
    end else begin
        decryptedtext_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state6))) begin
        decryptedtext_ce1 = 1'b1;
    end else begin
        decryptedtext_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        decryptedtext_d0 = xor_ln268_fu_620_p2;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        decryptedtext_d0 = xor_ln266_fu_586_p2;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        decryptedtext_d0 = xor_ln264_fu_558_p2;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        decryptedtext_d0 = xor_ln262_fu_399_p2;
    end else begin
        decryptedtext_d0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        decryptedtext_d1 = xor_ln269_fu_626_p2;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        decryptedtext_d1 = xor_ln267_fu_603_p2;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        decryptedtext_d1 = xor_ln265_fu_565_p2;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        decryptedtext_d1 = xor_ln263_fu_416_p2;
    end else begin
        decryptedtext_d1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state11) | ((1'b1 == ap_CS_fsm_state6) & (icmp_ln109_fu_372_p2 == 1'd1)))) begin
        decryptedtext_we0 = 1'b1;
    end else begin
        decryptedtext_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state11) | ((1'b1 == ap_CS_fsm_state6) & (icmp_ln109_fu_372_p2 == 1'd1)))) begin
        decryptedtext_we1 = 1'b1;
    end else begin
        decryptedtext_we1 = 1'b0;
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
            if (((1'b1 == ap_CS_fsm_state6) & (icmp_ln109_fu_372_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign P28_address0 = zext_ln110_fu_378_p1;

assign S29_0_address0 = zext_ln140_fu_501_p1;

assign S29_1_address0 = zext_ln140_4_fu_506_p1;

assign S29_2_address0 = zext_ln140_5_fu_511_p1;

assign S29_3_address0 = zext_ln140_6_fu_516_p1;

assign a_fu_465_p4 = {{left_8_fu_447_p2[31:24]}};

assign add_ln140_2_fu_533_p2 = (S29_3_q0 + xor_ln140_fu_527_p2);

assign add_ln140_fu_521_p2 = (S29_0_q0 + S29_1_q0);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

assign b_fu_475_p4 = {{xor_ln110_2_fu_459_p2[23:16]}};

assign c_fu_485_p4 = {{xor_ln110_1_fu_453_p2[15:8]}};

assign d_fu_495_p2 = (trunc_ln110_fu_423_p1 ^ trunc_ln110_1_fu_427_p1);

assign i_fu_383_p2 = ($signed(5'd31) + $signed(i_0_reg_333));

assign icmp_ln109_fu_372_p2 = ((tmp_fu_362_p4 == 4'd0) ? 1'b1 : 1'b0);

assign left_8_fu_447_p2 = (right_4_reg_323 ^ P28_q0);

assign left_fu_344_p5 = {{{{ciphertext_load_reg_642}, {ciphertext_load_1_reg_647}}, {ciphertext_load_2_reg_662}}, {ciphertext_load_3_reg_667}};

assign right_3_fu_352_p5 = {{{{ciphertext_load_4_reg_682}, {ciphertext_load_5_reg_687}}, {ciphertext_q0}}, {ciphertext_q1}};

assign right_fu_539_p2 = (left_5_reg_313 ^ add_ln140_2_reg_750);

assign tmp_fu_362_p4 = {{i_0_reg_333[4:1]}};

assign trunc_ln110_1_fu_427_p1 = right_4_reg_323[7:0];

assign trunc_ln110_2_fu_431_p1 = right_4_reg_323[23:0];

assign trunc_ln110_3_fu_435_p1 = P28_q0[23:0];

assign trunc_ln110_4_fu_439_p1 = right_4_reg_323[15:0];

assign trunc_ln110_5_fu_443_p1 = P28_q0[15:0];

assign trunc_ln110_fu_423_p1 = P28_q0[7:0];

assign trunc_ln115_fu_572_p1 = right_4_reg_323[7:0];

assign trunc_ln116_fu_544_p1 = left_5_reg_313[7:0];

assign trunc_ln262_2_fu_389_p4 = {{left_5_reg_313[31:24]}};

assign trunc_ln263_2_fu_406_p4 = {{left_5_reg_313[23:16]}};

assign trunc_ln264_2_fu_548_p4 = {{left_5_reg_313[15:8]}};

assign trunc_ln266_2_fu_576_p4 = {{right_4_reg_323[31:24]}};

assign trunc_ln267_2_fu_593_p4 = {{right_4_reg_323[23:16]}};

assign xor_ln110_1_fu_453_p2 = (trunc_ln110_5_fu_443_p1 ^ trunc_ln110_4_fu_439_p1);

assign xor_ln110_2_fu_459_p2 = (trunc_ln110_3_fu_435_p1 ^ trunc_ln110_2_fu_431_p1);

assign xor_ln140_fu_527_p2 = (add_ln140_fu_521_p2 ^ S29_2_q0);

assign xor_ln262_fu_399_p2 = (trunc_ln262_2_fu_389_p4 ^ 8'd225);

assign xor_ln263_fu_416_p2 = (trunc_ln263_2_fu_406_p4 ^ 8'd160);

assign xor_ln264_fu_558_p2 = (trunc_ln264_2_fu_548_p4 ^ 8'd45);

assign xor_ln265_fu_565_p2 = (trunc_ln116_fu_544_p1 ^ 8'd12);

assign xor_ln266_fu_586_p2 = (trunc_ln266_2_fu_576_p4 ^ 8'd231);

assign xor_ln267_fu_603_p2 = (trunc_ln267_2_fu_593_p4 ^ 8'd97);

assign xor_ln268_fu_620_p2 = (trunc_ln268_2_reg_765 ^ 8'd79);

assign xor_ln269_fu_626_p2 = (trunc_ln115_reg_760 ^ 8'd77);

assign zext_ln110_fu_378_p1 = i_0_reg_333;

assign zext_ln140_4_fu_506_p1 = b_fu_475_p4;

assign zext_ln140_5_fu_511_p1 = c_fu_485_p4;

assign zext_ln140_6_fu_516_p1 = d_fu_495_p2;

assign zext_ln140_fu_501_p1 = a_fu_465_p4;

endmodule //Blowfish_Decrypt

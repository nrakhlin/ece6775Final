// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module addRoundKey (
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
        p_read,
        p_read1,
        p_read2,
        p_read3,
        p_read4,
        p_read5,
        p_read6,
        p_read7,
        p_read8,
        p_read9,
        p_read10,
        p_read11,
        p_read12,
        p_read13,
        p_read14,
        p_read15
);

parameter    ap_ST_fsm_state1 = 16'd1;
parameter    ap_ST_fsm_state2 = 16'd2;
parameter    ap_ST_fsm_state3 = 16'd4;
parameter    ap_ST_fsm_state4 = 16'd8;
parameter    ap_ST_fsm_state5 = 16'd16;
parameter    ap_ST_fsm_state6 = 16'd32;
parameter    ap_ST_fsm_state7 = 16'd64;
parameter    ap_ST_fsm_state8 = 16'd128;
parameter    ap_ST_fsm_state9 = 16'd256;
parameter    ap_ST_fsm_state10 = 16'd512;
parameter    ap_ST_fsm_state11 = 16'd1024;
parameter    ap_ST_fsm_state12 = 16'd2048;
parameter    ap_ST_fsm_state13 = 16'd4096;
parameter    ap_ST_fsm_state14 = 16'd8192;
parameter    ap_ST_fsm_state15 = 16'd16384;
parameter    ap_ST_fsm_state16 = 16'd32768;

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
input  [7:0] p_read;
input  [7:0] p_read1;
input  [7:0] p_read2;
input  [7:0] p_read3;
input  [7:0] p_read4;
input  [7:0] p_read5;
input  [7:0] p_read6;
input  [7:0] p_read7;
input  [7:0] p_read8;
input  [7:0] p_read9;
input  [7:0] p_read10;
input  [7:0] p_read11;
input  [7:0] p_read12;
input  [7:0] p_read13;
input  [7:0] p_read14;
input  [7:0] p_read15;

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

(* fsm_encoding = "none" *) reg   [15:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [7:0] reg_317;
wire    ap_CS_fsm_state2;
wire    ap_CS_fsm_state9;
reg   [7:0] reg_321;
wire   [3:0] state_addr_reg_425;
wire   [3:0] state_addr_31_reg_430;
wire   [3:0] state_addr_32_reg_435;
wire   [3:0] state_addr_33_reg_440;
reg   [7:0] state_load_2_reg_445;
wire    ap_CS_fsm_state3;
reg   [7:0] state_load_3_reg_450;
wire   [3:0] state_addr_34_reg_455;
wire   [3:0] state_addr_35_reg_460;
reg   [7:0] state_load_4_reg_465;
wire    ap_CS_fsm_state4;
reg   [7:0] state_load_5_reg_470;
wire   [3:0] state_addr_36_reg_475;
wire   [3:0] state_addr_37_reg_480;
reg   [7:0] state_load_6_reg_485;
wire    ap_CS_fsm_state5;
reg   [7:0] state_load_7_reg_490;
wire   [3:0] state_addr_38_reg_495;
wire   [3:0] state_addr_39_reg_500;
reg   [7:0] state_load_8_reg_505;
wire    ap_CS_fsm_state6;
reg   [7:0] state_load_9_reg_510;
wire   [3:0] state_addr_40_reg_515;
wire   [3:0] state_addr_41_reg_520;
reg   [7:0] state_load_10_reg_525;
wire    ap_CS_fsm_state7;
reg   [7:0] state_load_11_reg_530;
wire   [3:0] state_addr_42_reg_535;
wire   [3:0] state_addr_43_reg_540;
reg   [7:0] state_load_12_reg_545;
wire    ap_CS_fsm_state8;
reg   [7:0] state_load_13_reg_550;
wire   [3:0] state_addr_44_reg_555;
wire   [3:0] state_addr_45_reg_560;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state11;
wire    ap_CS_fsm_state12;
wire    ap_CS_fsm_state13;
wire    ap_CS_fsm_state14;
wire    ap_CS_fsm_state15;
wire    ap_CS_fsm_state16;
wire   [7:0] xor_ln226_fu_325_p2;
wire   [7:0] xor_ln226_1_fu_332_p2;
wire   [7:0] xor_ln226_2_fu_339_p2;
wire   [7:0] xor_ln226_3_fu_345_p2;
wire   [7:0] xor_ln226_4_fu_351_p2;
wire   [7:0] xor_ln226_5_fu_357_p2;
wire   [7:0] xor_ln226_6_fu_363_p2;
wire   [7:0] xor_ln226_7_fu_369_p2;
wire   [7:0] xor_ln226_8_fu_375_p2;
wire   [7:0] xor_ln226_9_fu_381_p2;
wire   [7:0] xor_ln226_10_fu_387_p2;
wire   [7:0] xor_ln226_11_fu_393_p2;
wire   [7:0] xor_ln226_12_fu_399_p2;
wire   [7:0] xor_ln226_13_fu_405_p2;
wire   [7:0] xor_ln226_14_fu_411_p2;
wire   [7:0] xor_ln226_15_fu_418_p2;
reg   [15:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 16'd1;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state2))) begin
        reg_317 <= state_q0;
        reg_321 <= state_q1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        state_load_10_reg_525 <= state_q0;
        state_load_11_reg_530 <= state_q1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        state_load_12_reg_545 <= state_q0;
        state_load_13_reg_550 <= state_q1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        state_load_2_reg_445 <= state_q0;
        state_load_3_reg_450 <= state_q1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        state_load_4_reg_465 <= state_q0;
        state_load_5_reg_470 <= state_q1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        state_load_6_reg_485 <= state_q0;
        state_load_7_reg_490 <= state_q1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        state_load_8_reg_505 <= state_q0;
        state_load_9_reg_510 <= state_q1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if ((1'b1 == ap_CS_fsm_state16)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        state_address0 = state_addr_44_reg_555;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        state_address0 = state_addr_42_reg_535;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        state_address0 = state_addr_40_reg_515;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        state_address0 = state_addr_38_reg_495;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        state_address0 = state_addr_36_reg_475;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        state_address0 = state_addr_34_reg_455;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        state_address0 = state_addr_32_reg_435;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        state_address0 = state_addr_reg_425;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        state_address0 = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        state_address0 = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        state_address0 = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        state_address0 = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        state_address0 = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        state_address0 = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        state_address0 = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        state_address0 = 64'd0;
    end else begin
        state_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        state_address1 = state_addr_45_reg_560;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        state_address1 = state_addr_43_reg_540;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        state_address1 = state_addr_41_reg_520;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        state_address1 = state_addr_39_reg_500;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        state_address1 = state_addr_37_reg_480;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        state_address1 = state_addr_35_reg_460;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        state_address1 = state_addr_33_reg_440;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        state_address1 = state_addr_31_reg_430;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        state_address1 = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        state_address1 = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        state_address1 = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        state_address1 = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        state_address1 = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        state_address1 = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        state_address1 = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        state_address1 = 64'd1;
    end else begin
        state_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        state_ce0 = 1'b1;
    end else begin
        state_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        state_ce1 = 1'b1;
    end else begin
        state_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        state_d0 = xor_ln226_14_fu_411_p2;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        state_d0 = xor_ln226_12_fu_399_p2;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        state_d0 = xor_ln226_10_fu_387_p2;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        state_d0 = xor_ln226_8_fu_375_p2;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        state_d0 = xor_ln226_6_fu_363_p2;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        state_d0 = xor_ln226_4_fu_351_p2;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        state_d0 = xor_ln226_2_fu_339_p2;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        state_d0 = xor_ln226_fu_325_p2;
    end else begin
        state_d0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        state_d1 = xor_ln226_15_fu_418_p2;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        state_d1 = xor_ln226_13_fu_405_p2;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        state_d1 = xor_ln226_11_fu_393_p2;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        state_d1 = xor_ln226_9_fu_381_p2;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        state_d1 = xor_ln226_7_fu_369_p2;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        state_d1 = xor_ln226_5_fu_357_p2;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        state_d1 = xor_ln226_3_fu_345_p2;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        state_d1 = xor_ln226_1_fu_332_p2;
    end else begin
        state_d1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        state_we0 = 1'b1;
    end else begin
        state_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
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

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

assign state_addr_31_reg_430 = 64'd1;

assign state_addr_32_reg_435 = 64'd2;

assign state_addr_33_reg_440 = 64'd3;

assign state_addr_34_reg_455 = 64'd4;

assign state_addr_35_reg_460 = 64'd5;

assign state_addr_36_reg_475 = 64'd6;

assign state_addr_37_reg_480 = 64'd7;

assign state_addr_38_reg_495 = 64'd8;

assign state_addr_39_reg_500 = 64'd9;

assign state_addr_40_reg_515 = 64'd10;

assign state_addr_41_reg_520 = 64'd11;

assign state_addr_42_reg_535 = 64'd12;

assign state_addr_43_reg_540 = 64'd13;

assign state_addr_44_reg_555 = 64'd14;

assign state_addr_45_reg_560 = 64'd15;

assign state_addr_reg_425 = 64'd0;

assign xor_ln226_10_fu_387_p2 = (state_load_10_reg_525 ^ p_read10);

assign xor_ln226_11_fu_393_p2 = (state_load_11_reg_530 ^ p_read11);

assign xor_ln226_12_fu_399_p2 = (state_load_12_reg_545 ^ p_read12);

assign xor_ln226_13_fu_405_p2 = (state_load_13_reg_550 ^ p_read13);

assign xor_ln226_14_fu_411_p2 = (reg_317 ^ p_read14);

assign xor_ln226_15_fu_418_p2 = (reg_321 ^ p_read15);

assign xor_ln226_1_fu_332_p2 = (reg_321 ^ p_read1);

assign xor_ln226_2_fu_339_p2 = (state_load_2_reg_445 ^ p_read2);

assign xor_ln226_3_fu_345_p2 = (state_load_3_reg_450 ^ p_read3);

assign xor_ln226_4_fu_351_p2 = (state_load_4_reg_465 ^ p_read4);

assign xor_ln226_5_fu_357_p2 = (state_load_5_reg_470 ^ p_read5);

assign xor_ln226_6_fu_363_p2 = (state_load_6_reg_485 ^ p_read6);

assign xor_ln226_7_fu_369_p2 = (state_load_7_reg_490 ^ p_read7);

assign xor_ln226_8_fu_375_p2 = (state_load_8_reg_505 ^ p_read8);

assign xor_ln226_9_fu_381_p2 = (state_load_9_reg_510 ^ p_read9);

assign xor_ln226_fu_325_p2 = (reg_317 ^ p_read);

endmodule //addRoundKey

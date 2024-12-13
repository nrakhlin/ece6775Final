// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module encrypt_aes (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        plaintext_V,
        ap_return
);

parameter    ap_ST_fsm_state1 = 8'd1;
parameter    ap_ST_fsm_state2 = 8'd2;
parameter    ap_ST_fsm_state3 = 8'd4;
parameter    ap_ST_fsm_state4 = 8'd8;
parameter    ap_ST_fsm_state5 = 8'd16;
parameter    ap_ST_fsm_state6 = 8'd32;
parameter    ap_ST_fsm_state7 = 8'd64;
parameter    ap_ST_fsm_state8 = 8'd128;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [127:0] plaintext_V;
output  [127:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[127:0] ap_return;

(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [3:0] add_ln49_fu_177_p2;
wire    ap_CS_fsm_state2;
wire   [3:0] add_ln50_fu_194_p2;
wire    ap_CS_fsm_state3;
wire   [4:0] i_fu_217_p2;
reg   [4:0] i_reg_536;
wire    ap_CS_fsm_state4;
wire   [7:0] sub_ln681_7_fu_305_p2;
reg   [7:0] sub_ln681_7_reg_541;
wire   [0:0] icmp_ln52_fu_211_p2;
wire   [127:0] lshr_ln681_fu_315_p2;
reg   [127:0] lshr_ln681_reg_546;
wire   [4:0] i_4_fu_351_p2;
reg   [4:0] i_4_reg_554;
wire    ap_CS_fsm_state7;
wire   [3:0] trunc_ln59_fu_357_p1;
reg   [3:0] trunc_ln59_reg_559;
wire   [0:0] icmp_ln58_fu_345_p2;
wire   [127:0] p_Result_7_fu_505_p2;
wire    ap_CS_fsm_state8;
reg   [3:0] aes_input_address0;
reg    aes_input_ce0;
reg    aes_input_we0;
reg   [7:0] aes_input_d0;
wire   [7:0] aes_input_q0;
reg   [3:0] output_address0;
reg    output_ce0;
reg    output_we0;
reg   [7:0] output_d0;
wire   [7:0] output_q0;
wire    grp_aes_encrypt_fu_167_ap_start;
wire    grp_aes_encrypt_fu_167_ap_done;
wire    grp_aes_encrypt_fu_167_ap_idle;
wire    grp_aes_encrypt_fu_167_ap_ready;
wire   [3:0] grp_aes_encrypt_fu_167_input_r_address0;
wire    grp_aes_encrypt_fu_167_input_r_ce0;
wire   [3:0] grp_aes_encrypt_fu_167_output_r_address0;
wire    grp_aes_encrypt_fu_167_output_r_ce0;
wire    grp_aes_encrypt_fu_167_output_r_we0;
wire   [7:0] grp_aes_encrypt_fu_167_output_r_d0;
reg   [3:0] phi_ln49_reg_110;
wire   [0:0] icmp_ln49_fu_188_p2;
reg   [3:0] phi_ln50_reg_121;
wire   [0:0] icmp_ln50_fu_205_p2;
reg   [4:0] i_0_reg_132;
wire    ap_CS_fsm_state5;
reg   [127:0] p_Val2_s_reg_144;
reg   [4:0] i1_0_reg_156;
wire    ap_CS_fsm_state6;
reg    grp_aes_encrypt_fu_167_ap_start_reg;
wire   [63:0] zext_ln49_fu_183_p1;
wire   [63:0] zext_ln50_fu_200_p1;
wire   [63:0] zext_ln53_fu_340_p1;
wire   [63:0] zext_ln59_fu_361_p1;
wire   [7:0] trunc_ln53_1_fu_335_p1;
wire   [3:0] trunc_ln53_fu_223_p1;
wire   [6:0] Lo_assign_fu_227_p3;
wire   [6:0] or_ln53_fu_235_p2;
wire   [7:0] zext_ln681_fu_247_p1;
wire   [7:0] zext_ln681_8_fu_251_p1;
wire   [0:0] icmp_ln681_fu_241_p2;
wire   [7:0] sub_ln681_fu_264_p2;
wire   [7:0] sub_ln681_6_fu_276_p2;
reg   [127:0] tmp_fu_255_p4;
wire   [7:0] xor_ln681_fu_270_p2;
wire   [7:0] select_ln681_fu_282_p3;
wire   [7:0] select_ln681_7_fu_297_p3;
wire   [127:0] select_ln681_6_fu_290_p3;
wire   [127:0] zext_ln681_9_fu_311_p1;
wire   [127:0] zext_ln681_10_fu_321_p1;
wire   [127:0] lshr_ln681_4_fu_324_p2;
wire   [127:0] p_Result_s_fu_330_p2;
wire   [6:0] Lo_assign_4_fu_366_p3;
wire   [6:0] or_ln59_fu_373_p2;
wire   [7:0] zext_ln388_fu_389_p1;
wire   [0:0] icmp_ln388_fu_383_p2;
wire   [7:0] zext_ln388_10_fu_393_p1;
wire   [7:0] xor_ln388_fu_397_p2;
wire   [7:0] select_ln388_fu_403_p3;
wire   [7:0] select_ln388_9_fu_419_p3;
wire   [7:0] select_ln388_8_fu_411_p3;
wire   [7:0] xor_ln388_6_fu_427_p2;
wire   [127:0] tmp_V_fu_379_p1;
wire   [127:0] zext_ln388_11_fu_433_p1;
wire   [127:0] shl_ln388_fu_445_p2;
reg   [127:0] tmp_4_fu_451_p4;
wire   [127:0] zext_ln388_12_fu_437_p1;
wire   [127:0] zext_ln388_13_fu_441_p1;
wire   [127:0] shl_ln388_4_fu_469_p2;
wire   [127:0] lshr_ln388_fu_475_p2;
wire   [127:0] and_ln388_fu_481_p2;
wire   [127:0] xor_ln388_7_fu_487_p2;
wire   [127:0] select_ln388_10_fu_461_p3;
wire   [127:0] and_ln388_6_fu_493_p2;
wire   [127:0] and_ln388_7_fu_499_p2;
reg   [127:0] ap_return_preg;
reg   [7:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 8'd1;
#0 grp_aes_encrypt_fu_167_ap_start_reg = 1'b0;
#0 ap_return_preg = 128'd0;
end

aes_invMain_roundhbi #(
    .DataWidth( 8 ),
    .AddressRange( 16 ),
    .AddressWidth( 4 ))
aes_input_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(aes_input_address0),
    .ce0(aes_input_ce0),
    .we0(aes_input_we0),
    .d0(aes_input_d0),
    .q0(aes_input_q0)
);

aes_invMain_roundhbi #(
    .DataWidth( 8 ),
    .AddressRange( 16 ),
    .AddressWidth( 4 ))
output_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(output_address0),
    .ce0(output_ce0),
    .we0(output_we0),
    .d0(output_d0),
    .q0(output_q0)
);

aes_encrypt grp_aes_encrypt_fu_167(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_aes_encrypt_fu_167_ap_start),
    .ap_done(grp_aes_encrypt_fu_167_ap_done),
    .ap_idle(grp_aes_encrypt_fu_167_ap_idle),
    .ap_ready(grp_aes_encrypt_fu_167_ap_ready),
    .input_r_address0(grp_aes_encrypt_fu_167_input_r_address0),
    .input_r_ce0(grp_aes_encrypt_fu_167_input_r_ce0),
    .input_r_q0(aes_input_q0),
    .output_r_address0(grp_aes_encrypt_fu_167_output_r_address0),
    .output_r_ce0(grp_aes_encrypt_fu_167_output_r_ce0),
    .output_r_we0(grp_aes_encrypt_fu_167_output_r_we0),
    .output_r_d0(grp_aes_encrypt_fu_167_output_r_d0)
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
        ap_return_preg <= 128'd0;
    end else begin
        if (((icmp_ln58_fu_345_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
            ap_return_preg <= p_Val2_s_reg_144;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_aes_encrypt_fu_167_ap_start_reg <= 1'b0;
    end else begin
        if (((icmp_ln52_fu_211_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
            grp_aes_encrypt_fu_167_ap_start_reg <= 1'b1;
        end else if ((grp_aes_encrypt_fu_167_ap_ready == 1'b1)) begin
            grp_aes_encrypt_fu_167_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        i1_0_reg_156 <= i_4_reg_554;
    end else if (((1'b1 == ap_CS_fsm_state6) & (grp_aes_encrypt_fu_167_ap_done == 1'b1))) begin
        i1_0_reg_156 <= 5'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln50_fu_205_p2 == 1'd1))) begin
        i_0_reg_132 <= 5'd0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        i_0_reg_132 <= i_reg_536;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln49_fu_188_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        phi_ln49_reg_110 <= add_ln49_fu_177_p2;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        phi_ln49_reg_110 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln49_fu_188_p2 == 1'd1))) begin
        phi_ln50_reg_121 <= 4'd0;
    end else if (((icmp_ln50_fu_205_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        phi_ln50_reg_121 <= add_ln50_fu_194_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        i_4_reg_554 <= i_4_fu_351_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        i_reg_536 <= i_fu_217_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln52_fu_211_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        lshr_ln681_reg_546 <= lshr_ln681_fu_315_p2;
        sub_ln681_7_reg_541[7 : 1] <= sub_ln681_7_fu_305_p2[7 : 1];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        p_Val2_s_reg_144 <= p_Result_7_fu_505_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln58_fu_345_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7))) begin
        trunc_ln59_reg_559 <= trunc_ln59_fu_357_p1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        aes_input_address0 = zext_ln53_fu_340_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        aes_input_address0 = zext_ln49_fu_183_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        aes_input_address0 = grp_aes_encrypt_fu_167_input_r_address0;
    end else begin
        aes_input_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state5))) begin
        aes_input_ce0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        aes_input_ce0 = grp_aes_encrypt_fu_167_input_r_ce0;
    end else begin
        aes_input_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        aes_input_d0 = trunc_ln53_1_fu_335_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        aes_input_d0 = 8'd0;
    end else begin
        aes_input_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state5))) begin
        aes_input_we0 = 1'b1;
    end else begin
        aes_input_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((((icmp_ln58_fu_345_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((icmp_ln58_fu_345_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln58_fu_345_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
        ap_return = p_Val2_s_reg_144;
    end else begin
        ap_return = ap_return_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        output_address0 = zext_ln59_fu_361_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        output_address0 = zext_ln50_fu_200_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        output_address0 = grp_aes_encrypt_fu_167_output_r_address0;
    end else begin
        output_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state3))) begin
        output_ce0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        output_ce0 = grp_aes_encrypt_fu_167_output_r_ce0;
    end else begin
        output_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        output_d0 = 8'd0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        output_d0 = grp_aes_encrypt_fu_167_output_r_d0;
    end else begin
        output_d0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        output_we0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        output_we0 = grp_aes_encrypt_fu_167_output_r_we0;
    end else begin
        output_we0 = 1'b0;
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
            if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln49_fu_188_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln50_fu_205_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((icmp_ln52_fu_211_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (grp_aes_encrypt_fu_167_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            if (((icmp_ln58_fu_345_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign Lo_assign_4_fu_366_p3 = {{trunc_ln59_reg_559}, {3'd0}};

assign Lo_assign_fu_227_p3 = {{trunc_ln53_fu_223_p1}, {3'd0}};

assign add_ln49_fu_177_p2 = (phi_ln49_reg_110 + 4'd1);

assign add_ln50_fu_194_p2 = (phi_ln50_reg_121 + 4'd1);

assign and_ln388_6_fu_493_p2 = (xor_ln388_7_fu_487_p2 & p_Val2_s_reg_144);

assign and_ln388_7_fu_499_p2 = (select_ln388_10_fu_461_p3 & and_ln388_fu_481_p2);

assign and_ln388_fu_481_p2 = (shl_ln388_4_fu_469_p2 & lshr_ln388_fu_475_p2);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign grp_aes_encrypt_fu_167_ap_start = grp_aes_encrypt_fu_167_ap_start_reg;

assign i_4_fu_351_p2 = (i1_0_reg_156 + 5'd1);

assign i_fu_217_p2 = (i_0_reg_132 + 5'd1);

assign icmp_ln388_fu_383_p2 = ((Lo_assign_4_fu_366_p3 > or_ln59_fu_373_p2) ? 1'b1 : 1'b0);

assign icmp_ln49_fu_188_p2 = ((phi_ln49_reg_110 == 4'd15) ? 1'b1 : 1'b0);

assign icmp_ln50_fu_205_p2 = ((phi_ln50_reg_121 == 4'd15) ? 1'b1 : 1'b0);

assign icmp_ln52_fu_211_p2 = ((i_0_reg_132 == 5'd16) ? 1'b1 : 1'b0);

assign icmp_ln58_fu_345_p2 = ((i1_0_reg_156 == 5'd16) ? 1'b1 : 1'b0);

assign icmp_ln681_fu_241_p2 = ((Lo_assign_fu_227_p3 > or_ln53_fu_235_p2) ? 1'b1 : 1'b0);

assign lshr_ln388_fu_475_p2 = 128'd340282366920938463463374607431768211455 >> zext_ln388_13_fu_441_p1;

assign lshr_ln681_4_fu_324_p2 = 128'd340282366920938463463374607431768211455 >> zext_ln681_10_fu_321_p1;

assign lshr_ln681_fu_315_p2 = select_ln681_6_fu_290_p3 >> zext_ln681_9_fu_311_p1;

assign or_ln53_fu_235_p2 = (7'd7 | Lo_assign_fu_227_p3);

assign or_ln59_fu_373_p2 = (7'd7 | Lo_assign_4_fu_366_p3);

assign p_Result_7_fu_505_p2 = (and_ln388_7_fu_499_p2 | and_ln388_6_fu_493_p2);

assign p_Result_s_fu_330_p2 = (lshr_ln681_reg_546 & lshr_ln681_4_fu_324_p2);

assign select_ln388_10_fu_461_p3 = ((icmp_ln388_fu_383_p2[0:0] === 1'b1) ? tmp_4_fu_451_p4 : shl_ln388_fu_445_p2);

assign select_ln388_8_fu_411_p3 = ((icmp_ln388_fu_383_p2[0:0] === 1'b1) ? zext_ln388_10_fu_393_p1 : zext_ln388_fu_389_p1);

assign select_ln388_9_fu_419_p3 = ((icmp_ln388_fu_383_p2[0:0] === 1'b1) ? xor_ln388_fu_397_p2 : zext_ln388_fu_389_p1);

assign select_ln388_fu_403_p3 = ((icmp_ln388_fu_383_p2[0:0] === 1'b1) ? zext_ln388_fu_389_p1 : zext_ln388_10_fu_393_p1);

assign select_ln681_6_fu_290_p3 = ((icmp_ln681_fu_241_p2[0:0] === 1'b1) ? tmp_fu_255_p4 : plaintext_V);

assign select_ln681_7_fu_297_p3 = ((icmp_ln681_fu_241_p2[0:0] === 1'b1) ? xor_ln681_fu_270_p2 : zext_ln681_fu_247_p1);

assign select_ln681_fu_282_p3 = ((icmp_ln681_fu_241_p2[0:0] === 1'b1) ? sub_ln681_fu_264_p2 : sub_ln681_6_fu_276_p2);

assign shl_ln388_4_fu_469_p2 = 128'd340282366920938463463374607431768211455 << zext_ln388_12_fu_437_p1;

assign shl_ln388_fu_445_p2 = tmp_V_fu_379_p1 << zext_ln388_11_fu_433_p1;

assign sub_ln681_6_fu_276_p2 = (zext_ln681_8_fu_251_p1 - zext_ln681_fu_247_p1);

assign sub_ln681_7_fu_305_p2 = (8'd127 - select_ln681_fu_282_p3);

assign sub_ln681_fu_264_p2 = (zext_ln681_fu_247_p1 - zext_ln681_8_fu_251_p1);

integer ap_tvar_int_0;

always @ (shl_ln388_fu_445_p2) begin
    for (ap_tvar_int_0 = 128 - 1; ap_tvar_int_0 >= 0; ap_tvar_int_0 = ap_tvar_int_0 - 1) begin
        if (ap_tvar_int_0 > 127 - 0) begin
            tmp_4_fu_451_p4[ap_tvar_int_0] = 1'b0;
        end else begin
            tmp_4_fu_451_p4[ap_tvar_int_0] = shl_ln388_fu_445_p2[127 - ap_tvar_int_0];
        end
    end
end

assign tmp_V_fu_379_p1 = output_q0;

integer ap_tvar_int_1;

always @ (plaintext_V) begin
    for (ap_tvar_int_1 = 128 - 1; ap_tvar_int_1 >= 0; ap_tvar_int_1 = ap_tvar_int_1 - 1) begin
        if (ap_tvar_int_1 > 127 - 0) begin
            tmp_fu_255_p4[ap_tvar_int_1] = 1'b0;
        end else begin
            tmp_fu_255_p4[ap_tvar_int_1] = plaintext_V[127 - ap_tvar_int_1];
        end
    end
end

assign trunc_ln53_1_fu_335_p1 = p_Result_s_fu_330_p2[7:0];

assign trunc_ln53_fu_223_p1 = i_0_reg_132[3:0];

assign trunc_ln59_fu_357_p1 = i1_0_reg_156[3:0];

assign xor_ln388_6_fu_427_p2 = (select_ln388_fu_403_p3 ^ 8'd127);

assign xor_ln388_7_fu_487_p2 = (128'd340282366920938463463374607431768211455 ^ and_ln388_fu_481_p2);

assign xor_ln388_fu_397_p2 = (zext_ln388_fu_389_p1 ^ 8'd127);

assign xor_ln681_fu_270_p2 = (zext_ln681_fu_247_p1 ^ 8'd127);

assign zext_ln388_10_fu_393_p1 = or_ln59_fu_373_p2;

assign zext_ln388_11_fu_433_p1 = select_ln388_9_fu_419_p3;

assign zext_ln388_12_fu_437_p1 = select_ln388_8_fu_411_p3;

assign zext_ln388_13_fu_441_p1 = xor_ln388_6_fu_427_p2;

assign zext_ln388_fu_389_p1 = Lo_assign_4_fu_366_p3;

assign zext_ln49_fu_183_p1 = phi_ln49_reg_110;

assign zext_ln50_fu_200_p1 = phi_ln50_reg_121;

assign zext_ln53_fu_340_p1 = i_0_reg_132;

assign zext_ln59_fu_361_p1 = i1_0_reg_156;

assign zext_ln681_10_fu_321_p1 = sub_ln681_7_reg_541;

assign zext_ln681_8_fu_251_p1 = or_ln53_fu_235_p2;

assign zext_ln681_9_fu_311_p1 = select_ln681_7_fu_297_p3;

assign zext_ln681_fu_247_p1 = Lo_assign_fu_227_p3;

always @ (posedge ap_clk) begin
    sub_ln681_7_reg_541[0] <= 1'b0;
end

endmodule //encrypt_aes

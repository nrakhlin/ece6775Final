// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module invMixColumns (
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
        state_q0
);

parameter    ap_ST_fsm_state1 = 7'd1;
parameter    ap_ST_fsm_state2 = 7'd2;
parameter    ap_ST_fsm_state3 = 7'd4;
parameter    ap_ST_fsm_state4 = 7'd8;
parameter    ap_ST_fsm_state5 = 7'd16;
parameter    ap_ST_fsm_state6 = 7'd32;
parameter    ap_ST_fsm_state7 = 7'd64;

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

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[3:0] state_address0;
reg state_ce0;
reg state_we0;

(* fsm_encoding = "none" *) reg   [6:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [3:0] zext_ln413_fu_258_p1;
reg   [3:0] zext_ln413_reg_369;
wire    ap_CS_fsm_state2;
wire   [2:0] i_fu_268_p2;
reg   [2:0] i_reg_378;
wire   [2:0] j_fu_280_p2;
reg   [2:0] j_reg_386;
wire    ap_CS_fsm_state3;
wire   [1:0] trunc_ln418_fu_286_p1;
reg   [1:0] trunc_ln418_reg_391;
wire   [0:0] icmp_ln416_fu_274_p2;
wire    ap_CS_fsm_state4;
reg   [7:0] column_0_reg_408;
wire    ap_CS_fsm_state6;
wire    grp_invMixColumn_fu_246_ap_ready;
wire    grp_invMixColumn_fu_246_ap_done;
reg   [7:0] column_1_reg_414;
reg   [7:0] column_2_reg_420;
reg   [7:0] column_3_reg_426;
wire   [2:0] j_2_fu_330_p2;
wire    ap_CS_fsm_state7;
wire    grp_invMixColumn_fu_246_ap_start;
wire    grp_invMixColumn_fu_246_ap_idle;
wire   [7:0] grp_invMixColumn_fu_246_ap_return_0;
wire   [7:0] grp_invMixColumn_fu_246_ap_return_1;
wire   [7:0] grp_invMixColumn_fu_246_ap_return_2;
wire   [7:0] grp_invMixColumn_fu_246_ap_return_3;
reg   [7:0] column_3_0_reg_49;
wire   [0:0] icmp_ln425_fu_324_p2;
reg   [7:0] column_2_0_reg_61;
reg   [7:0] column_1_0_reg_73;
reg   [7:0] column_0_0_reg_85;
reg   [2:0] i_0_reg_97;
reg   [7:0] column_3_1_reg_108;
wire   [0:0] icmp_ln413_fu_262_p2;
wire    ap_CS_fsm_state5;
reg   [7:0] column_2_1_reg_119;
reg   [7:0] column_1_1_reg_130;
reg   [7:0] column_0_1_reg_141;
reg   [2:0] j_0_reg_152;
reg   [7:0] column_3_1_be_reg_163;
reg   [7:0] column_2_1_be_reg_181;
reg   [7:0] column_1_1_be_reg_199;
reg   [7:0] column_0_1_be_reg_217;
reg   [2:0] j_1_reg_235;
reg    grp_invMixColumn_fu_246_ap_start_reg;
wire   [63:0] zext_ln418_fu_303_p1;
wire   [63:0] zext_ln427_fu_364_p1;
wire   [7:0] tmp_fu_340_p6;
wire   [3:0] shl_ln_fu_290_p3;
wire   [3:0] add_ln418_fu_298_p2;
wire   [1:0] trunc_ln427_fu_336_p1;
wire   [3:0] shl_ln1_fu_351_p3;
wire   [3:0] add_ln427_fu_359_p2;
reg   [6:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 7'd1;
#0 grp_invMixColumn_fu_246_ap_start_reg = 1'b0;
end

invMixColumn grp_invMixColumn_fu_246(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_invMixColumn_fu_246_ap_start),
    .ap_done(grp_invMixColumn_fu_246_ap_done),
    .ap_idle(grp_invMixColumn_fu_246_ap_idle),
    .ap_ready(grp_invMixColumn_fu_246_ap_ready),
    .column_0_read(column_0_1_reg_141),
    .column_1_read(column_1_1_reg_130),
    .column_2_read(column_2_1_reg_119),
    .column_3_read(column_3_1_reg_108),
    .ap_return_0(grp_invMixColumn_fu_246_ap_return_0),
    .ap_return_1(grp_invMixColumn_fu_246_ap_return_1),
    .ap_return_2(grp_invMixColumn_fu_246_ap_return_2),
    .ap_return_3(grp_invMixColumn_fu_246_ap_return_3)
);

dut_mux_42_8_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 8 ),
    .din3_WIDTH( 8 ),
    .din4_WIDTH( 2 ),
    .dout_WIDTH( 8 ))
dut_mux_42_8_1_1_U22(
    .din0(column_0_reg_408),
    .din1(column_1_reg_414),
    .din2(column_2_reg_420),
    .din3(column_3_reg_426),
    .din4(trunc_ln427_fu_336_p1),
    .dout(tmp_fu_340_p6)
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
        grp_invMixColumn_fu_246_ap_start_reg <= 1'b0;
    end else begin
        if (((icmp_ln416_fu_274_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
            grp_invMixColumn_fu_246_ap_start_reg <= 1'b1;
        end else if ((grp_invMixColumn_fu_246_ap_ready == 1'b1)) begin
            grp_invMixColumn_fu_246_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((trunc_ln418_reg_391 == 2'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        column_0_1_be_reg_217 <= state_q0;
    end else if ((((trunc_ln418_reg_391 == 2'd1) & (1'b1 == ap_CS_fsm_state4)) | ((trunc_ln418_reg_391 == 2'd2) & (1'b1 == ap_CS_fsm_state4)) | ((trunc_ln418_reg_391 == 2'd3) & (1'b1 == ap_CS_fsm_state4)))) begin
        column_0_1_be_reg_217 <= column_0_1_reg_141;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        column_0_1_reg_141 <= column_0_1_be_reg_217;
    end else if (((icmp_ln413_fu_262_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        column_0_1_reg_141 <= column_0_0_reg_85;
    end
end

always @ (posedge ap_clk) begin
    if (((trunc_ln418_reg_391 == 2'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        column_1_1_be_reg_199 <= state_q0;
    end else if ((((trunc_ln418_reg_391 == 2'd0) & (1'b1 == ap_CS_fsm_state4)) | ((trunc_ln418_reg_391 == 2'd2) & (1'b1 == ap_CS_fsm_state4)) | ((trunc_ln418_reg_391 == 2'd3) & (1'b1 == ap_CS_fsm_state4)))) begin
        column_1_1_be_reg_199 <= column_1_1_reg_130;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        column_1_1_reg_130 <= column_1_1_be_reg_199;
    end else if (((icmp_ln413_fu_262_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        column_1_1_reg_130 <= column_1_0_reg_73;
    end
end

always @ (posedge ap_clk) begin
    if (((trunc_ln418_reg_391 == 2'd2) & (1'b1 == ap_CS_fsm_state4))) begin
        column_2_1_be_reg_181 <= state_q0;
    end else if ((((trunc_ln418_reg_391 == 2'd0) & (1'b1 == ap_CS_fsm_state4)) | ((trunc_ln418_reg_391 == 2'd1) & (1'b1 == ap_CS_fsm_state4)) | ((trunc_ln418_reg_391 == 2'd3) & (1'b1 == ap_CS_fsm_state4)))) begin
        column_2_1_be_reg_181 <= column_2_1_reg_119;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        column_2_1_reg_119 <= column_2_1_be_reg_181;
    end else if (((icmp_ln413_fu_262_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        column_2_1_reg_119 <= column_2_0_reg_61;
    end
end

always @ (posedge ap_clk) begin
    if ((((trunc_ln418_reg_391 == 2'd0) & (1'b1 == ap_CS_fsm_state4)) | ((trunc_ln418_reg_391 == 2'd1) & (1'b1 == ap_CS_fsm_state4)) | ((trunc_ln418_reg_391 == 2'd2) & (1'b1 == ap_CS_fsm_state4)))) begin
        column_3_1_be_reg_163 <= column_3_1_reg_108;
    end else if (((trunc_ln418_reg_391 == 2'd3) & (1'b1 == ap_CS_fsm_state4))) begin
        column_3_1_be_reg_163 <= state_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        column_3_1_reg_108 <= column_3_1_be_reg_163;
    end else if (((icmp_ln413_fu_262_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        column_3_1_reg_108 <= column_3_0_reg_49;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state7) & (icmp_ln425_fu_324_p2 == 1'd1))) begin
        i_0_reg_97 <= i_reg_378;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_0_reg_97 <= 3'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        j_0_reg_152 <= j_reg_386;
    end else if (((icmp_ln413_fu_262_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        j_0_reg_152 <= 3'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln425_fu_324_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7))) begin
        j_1_reg_235 <= j_2_fu_330_p2;
    end else if (((grp_invMixColumn_fu_246_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
        j_1_reg_235 <= 3'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state7) & (icmp_ln425_fu_324_p2 == 1'd1))) begin
        column_0_0_reg_85 <= column_0_reg_408;
        column_1_0_reg_73 <= column_1_reg_414;
        column_2_0_reg_61 <= column_2_reg_420;
        column_3_0_reg_49 <= column_3_reg_426;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_invMixColumn_fu_246_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
        column_0_reg_408 <= grp_invMixColumn_fu_246_ap_return_0;
        column_1_reg_414 <= grp_invMixColumn_fu_246_ap_return_1;
        column_2_reg_420 <= grp_invMixColumn_fu_246_ap_return_2;
        column_3_reg_426 <= grp_invMixColumn_fu_246_ap_return_3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_reg_378 <= i_fu_268_p2;
        zext_ln413_reg_369[2 : 0] <= zext_ln413_fu_258_p1[2 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        j_reg_386 <= j_fu_280_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln416_fu_274_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        trunc_ln418_reg_391 <= trunc_ln418_fu_286_p1;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state2) & (icmp_ln413_fu_262_p2 == 1'd1)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln413_fu_262_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        state_address0 = zext_ln427_fu_364_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        state_address0 = zext_ln418_fu_303_p1;
    end else begin
        state_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state3))) begin
        state_ce0 = 1'b1;
    end else begin
        state_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln425_fu_324_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7))) begin
        state_we0 = 1'b1;
    end else begin
        state_we0 = 1'b0;
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
            if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln413_fu_262_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln416_fu_274_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state6 : begin
            if (((grp_invMixColumn_fu_246_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            if (((1'b1 == ap_CS_fsm_state7) & (icmp_ln425_fu_324_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln418_fu_298_p2 = (shl_ln_fu_290_p3 + zext_ln413_reg_369);

assign add_ln427_fu_359_p2 = (shl_ln1_fu_351_p3 + zext_ln413_reg_369);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign grp_invMixColumn_fu_246_ap_start = grp_invMixColumn_fu_246_ap_start_reg;

assign i_fu_268_p2 = (i_0_reg_97 + 3'd1);

assign icmp_ln413_fu_262_p2 = ((i_0_reg_97 == 3'd4) ? 1'b1 : 1'b0);

assign icmp_ln416_fu_274_p2 = ((j_0_reg_152 == 3'd4) ? 1'b1 : 1'b0);

assign icmp_ln425_fu_324_p2 = ((j_1_reg_235 == 3'd4) ? 1'b1 : 1'b0);

assign j_2_fu_330_p2 = (j_1_reg_235 + 3'd1);

assign j_fu_280_p2 = (j_0_reg_152 + 3'd1);

assign shl_ln1_fu_351_p3 = {{trunc_ln427_fu_336_p1}, {2'd0}};

assign shl_ln_fu_290_p3 = {{trunc_ln418_fu_286_p1}, {2'd0}};

assign state_d0 = tmp_fu_340_p6;

assign trunc_ln418_fu_286_p1 = j_0_reg_152[1:0];

assign trunc_ln427_fu_336_p1 = j_1_reg_235[1:0];

assign zext_ln413_fu_258_p1 = i_0_reg_97;

assign zext_ln418_fu_303_p1 = add_ln418_fu_298_p2;

assign zext_ln427_fu_364_p1 = add_ln427_fu_359_p2;

always @ (posedge ap_clk) begin
    zext_ln413_reg_369[3] <= 1'b0;
end

endmodule //invMixColumns

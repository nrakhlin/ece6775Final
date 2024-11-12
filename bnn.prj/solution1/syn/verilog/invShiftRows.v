// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module invShiftRows (
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

parameter    ap_ST_fsm_state1 = 6'd1;
parameter    ap_ST_fsm_state2 = 6'd2;
parameter    ap_ST_fsm_state3 = 6'd4;
parameter    ap_ST_fsm_state4 = 6'd8;
parameter    ap_ST_fsm_state5 = 6'd16;
parameter    ap_ST_fsm_state6 = 6'd32;

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
reg[7:0] state_d0;

(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [2:0] i_fu_102_p2;
reg   [2:0] i_reg_186;
wire    ap_CS_fsm_state2;
wire   [1:0] trunc_ln517_fu_108_p1;
reg   [1:0] trunc_ln517_reg_191;
wire   [0:0] icmp_ln516_fu_96_p2;
reg   [3:0] state_addr_reg_198;
reg   [3:0] state_addr_1_reg_203;
wire   [1:0] i_1_fu_141_p2;
reg   [1:0] i_1_reg_211;
wire    ap_CS_fsm_state3;
reg   [7:0] tmp_reg_216;
wire    ap_CS_fsm_state4;
wire   [1:0] j_fu_153_p2;
reg   [1:0] j_reg_224;
wire    ap_CS_fsm_state5;
wire   [0:0] icmp_ln528_fu_147_p2;
reg   [2:0] i_0_reg_62;
wire   [0:0] icmp_ln525_fu_136_p2;
reg   [1:0] i_0_i_reg_73;
reg   [1:0] j_0_i_reg_84;
wire    ap_CS_fsm_state6;
wire   [63:0] zext_ln517_fu_120_p1;
wire   [63:0] zext_ln527_fu_131_p1;
wire   [63:0] zext_ln529_fu_166_p1;
wire   [63:0] zext_ln529_1_fu_178_p1;
wire   [3:0] shl_ln_fu_112_p3;
wire   [3:0] or_ln527_fu_125_p2;
wire   [3:0] add_ln529_1_fu_159_p3;
wire   [3:0] add_ln529_2_fu_171_p3;
reg   [5:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 6'd1;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln528_fu_147_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        i_0_i_reg_73 <= i_1_reg_211;
    end else if (((icmp_ln516_fu_96_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        i_0_i_reg_73 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln525_fu_136_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        i_0_reg_62 <= i_reg_186;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_0_reg_62 <= 3'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        j_0_i_reg_84 <= j_reg_224;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        j_0_i_reg_84 <= 2'd3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        i_1_reg_211 <= i_1_fu_141_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_reg_186 <= i_fu_102_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln528_fu_147_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        j_reg_224 <= j_fu_153_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln516_fu_96_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        state_addr_1_reg_203[3 : 2] <= zext_ln527_fu_131_p1[3 : 2];
        state_addr_reg_198[3 : 2] <= zext_ln517_fu_120_p1[3 : 2];
        trunc_ln517_reg_191 <= trunc_ln517_fu_108_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        tmp_reg_216 <= state_q0;
    end
end

always @ (*) begin
    if ((((icmp_ln516_fu_96_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((icmp_ln516_fu_96_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        state_address0 = zext_ln529_1_fu_178_p1;
    end else if (((icmp_ln528_fu_147_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        state_address0 = state_addr_reg_198;
    end else if (((icmp_ln528_fu_147_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        state_address0 = zext_ln529_fu_166_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        state_address0 = state_addr_1_reg_203;
    end else begin
        state_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3) | ((icmp_ln528_fu_147_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5)) | ((icmp_ln528_fu_147_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5)))) begin
        state_ce0 = 1'b1;
    end else begin
        state_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        state_d0 = state_q0;
    end else if (((icmp_ln528_fu_147_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        state_d0 = tmp_reg_216;
    end else begin
        state_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | ((icmp_ln528_fu_147_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5)))) begin
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
            if (((icmp_ln516_fu_96_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln525_fu_136_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            if (((icmp_ln528_fu_147_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln529_1_fu_159_p3 = {{trunc_ln517_reg_191}, {j_fu_153_p2}};

assign add_ln529_2_fu_171_p3 = {{trunc_ln517_reg_191}, {j_0_i_reg_84}};

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign i_1_fu_141_p2 = (i_0_i_reg_73 + 2'd1);

assign i_fu_102_p2 = (i_0_reg_62 + 3'd1);

assign icmp_ln516_fu_96_p2 = ((i_0_reg_62 == 3'd4) ? 1'b1 : 1'b0);

assign icmp_ln525_fu_136_p2 = ((i_0_i_reg_73 == trunc_ln517_reg_191) ? 1'b1 : 1'b0);

assign icmp_ln528_fu_147_p2 = ((j_0_i_reg_84 == 2'd0) ? 1'b1 : 1'b0);

assign j_fu_153_p2 = ($signed(j_0_i_reg_84) + $signed(2'd3));

assign or_ln527_fu_125_p2 = (shl_ln_fu_112_p3 | 4'd3);

assign shl_ln_fu_112_p3 = {{trunc_ln517_fu_108_p1}, {2'd0}};

assign trunc_ln517_fu_108_p1 = i_0_reg_62[1:0];

assign zext_ln517_fu_120_p1 = shl_ln_fu_112_p3;

assign zext_ln527_fu_131_p1 = or_ln527_fu_125_p2;

assign zext_ln529_1_fu_178_p1 = add_ln529_2_fu_171_p3;

assign zext_ln529_fu_166_p1 = add_ln529_1_fu_159_p3;

always @ (posedge ap_clk) begin
    state_addr_reg_198[1:0] <= 2'b00;
    state_addr_1_reg_203[1:0] <= 2'b11;
end

endmodule //invShiftRows

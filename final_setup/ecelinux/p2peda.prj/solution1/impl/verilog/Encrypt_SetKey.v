// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module Encrypt_SetKey (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        left_read,
        right_read,
        P_0_read,
        P_1_read,
        P_2_read,
        P_3_read,
        P_4_read,
        P_5_read,
        P_6_read,
        P_7_read,
        P_8_read,
        P_9_read,
        P_10_read,
        P_11_read,
        P_12_read,
        P_13_read,
        P_14_read,
        P_15_read,
        P_16_read,
        P_17_read,
        S_0_address0,
        S_0_ce0,
        S_0_q0,
        S_1_address0,
        S_1_ce0,
        S_1_q0,
        S_2_address0,
        S_2_ce0,
        S_2_q0,
        S_3_address0,
        S_3_ce0,
        S_3_q0,
        ap_return_0,
        ap_return_1
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_state3 = 4'd4;
parameter    ap_ST_fsm_state4 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] left_read;
input  [31:0] right_read;
input  [31:0] P_0_read;
input  [31:0] P_1_read;
input  [31:0] P_2_read;
input  [31:0] P_3_read;
input  [31:0] P_4_read;
input  [31:0] P_5_read;
input  [31:0] P_6_read;
input  [31:0] P_7_read;
input  [31:0] P_8_read;
input  [31:0] P_9_read;
input  [31:0] P_10_read;
input  [31:0] P_11_read;
input  [31:0] P_12_read;
input  [31:0] P_13_read;
input  [31:0] P_14_read;
input  [31:0] P_15_read;
input  [31:0] P_16_read;
input  [31:0] P_17_read;
output  [7:0] S_0_address0;
output   S_0_ce0;
input  [31:0] S_0_q0;
output  [7:0] S_1_address0;
output   S_1_ce0;
input  [31:0] S_1_q0;
output  [7:0] S_2_address0;
output   S_2_ce0;
input  [31:0] S_2_q0;
output  [7:0] S_3_address0;
output   S_3_ce0;
input  [31:0] S_3_q0;
output  [31:0] ap_return_0;
output  [31:0] ap_return_1;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg S_0_ce0;
reg S_1_ce0;
reg S_2_ce0;
reg S_3_ce0;
reg[31:0] ap_return_0;
reg[31:0] ap_return_1;

(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [4:0] i_fu_357_p2;
reg   [4:0] i_reg_609;
wire    ap_CS_fsm_state2;
wire   [31:0] localLeft_fu_387_p2;
reg   [31:0] localLeft_reg_614;
wire   [0:0] icmp_ln18_fu_351_p2;
wire   [31:0] feistel_result_fu_495_p2;
reg   [31:0] feistel_result_reg_639;
wire    ap_CS_fsm_state3;
wire   [31:0] localRight_fu_501_p2;
wire    ap_CS_fsm_state4;
reg   [31:0] p_tmp_reg_284;
reg   [31:0] p_b_read_assign_reg_293;
wire   [4:0] ap_phi_mux_i_0_phi_fu_307_p4;
reg   [4:0] i_0_reg_303;
reg   [31:0] ap_phi_mux_phi_ln19_phi_fu_317_p32;
wire   [63:0] zext_ln81_fu_441_p1;
wire   [63:0] zext_ln81_2_fu_446_p1;
wire   [63:0] zext_ln81_3_fu_451_p1;
wire   [63:0] zext_ln81_4_fu_456_p1;
wire   [15:0] trunc_ln19_5_fu_383_p1;
wire   [15:0] trunc_ln19_4_fu_379_p1;
wire   [23:0] trunc_ln19_3_fu_375_p1;
wire   [23:0] trunc_ln19_2_fu_371_p1;
wire   [23:0] xor_ln19_2_fu_399_p2;
wire   [15:0] xor_ln19_1_fu_393_p2;
wire   [7:0] trunc_ln19_1_fu_367_p1;
wire   [7:0] trunc_ln19_fu_363_p1;
wire   [7:0] a_fu_405_p4;
wire   [7:0] b_fu_415_p4;
wire   [7:0] c_fu_425_p4;
wire   [7:0] d_fu_435_p2;
wire   [31:0] xor_ln27_fu_466_p2;
wire   [31:0] xor_ln26_fu_461_p2;
wire   [31:0] add_ln81_fu_483_p2;
wire   [31:0] xor_ln81_fu_489_p2;
reg   [31:0] ap_return_0_preg;
reg   [31:0] ap_return_1_preg;
reg   [3:0] ap_NS_fsm;
reg    ap_condition_387;

// power-on initialization
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_return_0_preg = 32'd0;
#0 ap_return_1_preg = 32'd0;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_0_preg <= 32'd0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln18_fu_351_p2 == 1'd1))) begin
            ap_return_0_preg <= xor_ln27_fu_466_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_1_preg <= 32'd0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln18_fu_351_p2 == 1'd1))) begin
            ap_return_1_preg <= xor_ln26_fu_461_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        i_0_reg_303 <= i_reg_609;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_0_reg_303 <= 5'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        p_b_read_assign_reg_293 <= localLeft_reg_614;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        p_b_read_assign_reg_293 <= right_read;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        p_tmp_reg_284 <= localRight_fu_501_p2;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        p_tmp_reg_284 <= left_read;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        feistel_result_reg_639 <= feistel_result_fu_495_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_reg_609 <= i_fu_357_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln18_fu_351_p2 == 1'd0))) begin
        localLeft_reg_614 <= localLeft_fu_387_p2;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        S_0_ce0 = 1'b1;
    end else begin
        S_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        S_1_ce0 = 1'b1;
    end else begin
        S_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        S_2_ce0 = 1'b1;
    end else begin
        S_2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        S_3_ce0 = 1'b1;
    end else begin
        S_3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | ((1'b1 == ap_CS_fsm_state2) & (icmp_ln18_fu_351_p2 == 1'd1)))) begin
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
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln18_fu_351_p2 == 1'd0))) begin
        if ((ap_phi_mux_i_0_phi_fu_307_p4 == 5'd0)) begin
            ap_phi_mux_phi_ln19_phi_fu_317_p32 = P_0_read;
        end else if ((1'b1 == ap_condition_387)) begin
            ap_phi_mux_phi_ln19_phi_fu_317_p32 = P_15_read;
        end else if ((ap_phi_mux_i_0_phi_fu_307_p4 == 5'd14)) begin
            ap_phi_mux_phi_ln19_phi_fu_317_p32 = P_14_read;
        end else if ((ap_phi_mux_i_0_phi_fu_307_p4 == 5'd13)) begin
            ap_phi_mux_phi_ln19_phi_fu_317_p32 = P_13_read;
        end else if ((ap_phi_mux_i_0_phi_fu_307_p4 == 5'd12)) begin
            ap_phi_mux_phi_ln19_phi_fu_317_p32 = P_12_read;
        end else if ((ap_phi_mux_i_0_phi_fu_307_p4 == 5'd11)) begin
            ap_phi_mux_phi_ln19_phi_fu_317_p32 = P_11_read;
        end else if ((ap_phi_mux_i_0_phi_fu_307_p4 == 5'd10)) begin
            ap_phi_mux_phi_ln19_phi_fu_317_p32 = P_10_read;
        end else if ((ap_phi_mux_i_0_phi_fu_307_p4 == 5'd9)) begin
            ap_phi_mux_phi_ln19_phi_fu_317_p32 = P_9_read;
        end else if ((ap_phi_mux_i_0_phi_fu_307_p4 == 5'd8)) begin
            ap_phi_mux_phi_ln19_phi_fu_317_p32 = P_8_read;
        end else if ((ap_phi_mux_i_0_phi_fu_307_p4 == 5'd7)) begin
            ap_phi_mux_phi_ln19_phi_fu_317_p32 = P_7_read;
        end else if ((ap_phi_mux_i_0_phi_fu_307_p4 == 5'd6)) begin
            ap_phi_mux_phi_ln19_phi_fu_317_p32 = P_6_read;
        end else if ((ap_phi_mux_i_0_phi_fu_307_p4 == 5'd5)) begin
            ap_phi_mux_phi_ln19_phi_fu_317_p32 = P_5_read;
        end else if ((ap_phi_mux_i_0_phi_fu_307_p4 == 5'd4)) begin
            ap_phi_mux_phi_ln19_phi_fu_317_p32 = P_4_read;
        end else if ((ap_phi_mux_i_0_phi_fu_307_p4 == 5'd3)) begin
            ap_phi_mux_phi_ln19_phi_fu_317_p32 = P_3_read;
        end else if ((ap_phi_mux_i_0_phi_fu_307_p4 == 5'd2)) begin
            ap_phi_mux_phi_ln19_phi_fu_317_p32 = P_2_read;
        end else if ((ap_phi_mux_i_0_phi_fu_307_p4 == 5'd1)) begin
            ap_phi_mux_phi_ln19_phi_fu_317_p32 = P_1_read;
        end else begin
            ap_phi_mux_phi_ln19_phi_fu_317_p32 = 'bx;
        end
    end else begin
        ap_phi_mux_phi_ln19_phi_fu_317_p32 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln18_fu_351_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln18_fu_351_p2 == 1'd1))) begin
        ap_return_0 = xor_ln27_fu_466_p2;
    end else begin
        ap_return_0 = ap_return_0_preg;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln18_fu_351_p2 == 1'd1))) begin
        ap_return_1 = xor_ln26_fu_461_p2;
    end else begin
        ap_return_1 = ap_return_1_preg;
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
            if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln18_fu_351_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign S_0_address0 = zext_ln81_fu_441_p1;

assign S_1_address0 = zext_ln81_2_fu_446_p1;

assign S_2_address0 = zext_ln81_3_fu_451_p1;

assign S_3_address0 = zext_ln81_4_fu_456_p1;

assign a_fu_405_p4 = {{localLeft_fu_387_p2[31:24]}};

assign add_ln81_fu_483_p2 = (S_0_q0 + S_1_q0);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

always @ (*) begin
    ap_condition_387 = (~(ap_phi_mux_i_0_phi_fu_307_p4 == 5'd0) & ~(ap_phi_mux_i_0_phi_fu_307_p4 == 5'd14) & ~(ap_phi_mux_i_0_phi_fu_307_p4 == 5'd13) & ~(ap_phi_mux_i_0_phi_fu_307_p4 == 5'd12) & ~(ap_phi_mux_i_0_phi_fu_307_p4 == 5'd11) & ~(ap_phi_mux_i_0_phi_fu_307_p4 == 5'd10) & ~(ap_phi_mux_i_0_phi_fu_307_p4 == 5'd9) & ~(ap_phi_mux_i_0_phi_fu_307_p4 == 5'd8) & ~(ap_phi_mux_i_0_phi_fu_307_p4 == 5'd7) & ~(ap_phi_mux_i_0_phi_fu_307_p4 == 5'd6) & ~(ap_phi_mux_i_0_phi_fu_307_p4 == 5'd5) & ~(ap_phi_mux_i_0_phi_fu_307_p4 == 5'd4) & ~(ap_phi_mux_i_0_phi_fu_307_p4 == 5'd3) & ~(ap_phi_mux_i_0_phi_fu_307_p4 == 5'd2) & ~(ap_phi_mux_i_0_phi_fu_307_p4 == 5'd1));
end

assign ap_phi_mux_i_0_phi_fu_307_p4 = i_0_reg_303;

assign b_fu_415_p4 = {{xor_ln19_2_fu_399_p2[23:16]}};

assign c_fu_425_p4 = {{xor_ln19_1_fu_393_p2[15:8]}};

assign d_fu_435_p2 = (trunc_ln19_fu_363_p1 ^ trunc_ln19_1_fu_367_p1);

assign feistel_result_fu_495_p2 = (S_3_q0 + xor_ln81_fu_489_p2);

assign i_fu_357_p2 = (i_0_reg_303 + 5'd1);

assign icmp_ln18_fu_351_p2 = ((i_0_reg_303 == 5'd16) ? 1'b1 : 1'b0);

assign localLeft_fu_387_p2 = (p_tmp_reg_284 ^ ap_phi_mux_phi_ln19_phi_fu_317_p32);

assign localRight_fu_501_p2 = (p_b_read_assign_reg_293 ^ feistel_result_reg_639);

assign trunc_ln19_1_fu_367_p1 = ap_phi_mux_phi_ln19_phi_fu_317_p32[7:0];

assign trunc_ln19_2_fu_371_p1 = p_tmp_reg_284[23:0];

assign trunc_ln19_3_fu_375_p1 = ap_phi_mux_phi_ln19_phi_fu_317_p32[23:0];

assign trunc_ln19_4_fu_379_p1 = p_tmp_reg_284[15:0];

assign trunc_ln19_5_fu_383_p1 = ap_phi_mux_phi_ln19_phi_fu_317_p32[15:0];

assign trunc_ln19_fu_363_p1 = p_tmp_reg_284[7:0];

assign xor_ln19_1_fu_393_p2 = (trunc_ln19_5_fu_383_p1 ^ trunc_ln19_4_fu_379_p1);

assign xor_ln19_2_fu_399_p2 = (trunc_ln19_3_fu_375_p1 ^ trunc_ln19_2_fu_371_p1);

assign xor_ln26_fu_461_p2 = (p_tmp_reg_284 ^ P_16_read);

assign xor_ln27_fu_466_p2 = (p_b_read_assign_reg_293 ^ P_17_read);

assign xor_ln81_fu_489_p2 = (add_ln81_fu_483_p2 ^ S_2_q0);

assign zext_ln81_2_fu_446_p1 = b_fu_415_p4;

assign zext_ln81_3_fu_451_p1 = c_fu_425_p4;

assign zext_ln81_4_fu_456_p1 = d_fu_435_p2;

assign zext_ln81_fu_441_p1 = a_fu_405_p4;

endmodule //Encrypt_SetKey

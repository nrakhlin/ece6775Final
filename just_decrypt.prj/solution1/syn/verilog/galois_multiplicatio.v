// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module galois_multiplicatio (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        a,
        b,
        ap_return
);

parameter    ap_ST_fsm_state1 = 2'd1;
parameter    ap_ST_fsm_state2 = 2'd2;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [7:0] a;
input  [4:0] b;
output  [7:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[7:0] ap_return;

(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [3:0] counter_fu_92_p2;
wire    ap_CS_fsm_state2;
wire   [7:0] xor_ln183_fu_110_p2;
wire   [0:0] icmp_ln181_fu_86_p2;
wire   [7:0] select_ln187_fu_136_p3;
wire   [4:0] zext_ln189_fu_154_p1;
reg   [3:0] counter_0_reg_46;
reg   [7:0] p_0_reg_57;
reg   [4:0] b_assign_1_reg_68;
reg   [7:0] p_0_7_reg_77;
wire   [0:0] trunc_ln181_fu_98_p1;
wire   [7:0] select_ln183_fu_102_p3;
wire   [7:0] shl_ln186_fu_116_p2;
wire   [0:0] tmp_fu_122_p3;
wire   [7:0] xor_ln188_fu_130_p2;
wire   [3:0] b_assign_fu_144_p4;
reg   [7:0] ap_return_preg;
reg   [1:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_return_preg = 8'd0;
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
        ap_return_preg <= 8'd0;
    end else begin
        if (((icmp_ln181_fu_86_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_return_preg <= p_0_reg_57;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln181_fu_86_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        b_assign_1_reg_68 <= zext_ln189_fu_154_p1;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        b_assign_1_reg_68 <= b;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln181_fu_86_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        counter_0_reg_46 <= counter_fu_92_p2;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        counter_0_reg_46 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln181_fu_86_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        p_0_7_reg_77 <= select_ln187_fu_136_p3;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        p_0_7_reg_77 <= a;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln181_fu_86_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        p_0_reg_57 <= xor_ln183_fu_110_p2;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        p_0_reg_57 <= 8'd0;
    end
end

always @ (*) begin
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | ((icmp_ln181_fu_86_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)))) begin
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
    if (((icmp_ln181_fu_86_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln181_fu_86_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_return = p_0_reg_57;
    end else begin
        ap_return = ap_return_preg;
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
            if (((icmp_ln181_fu_86_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign b_assign_fu_144_p4 = {{b_assign_1_reg_68[4:1]}};

assign counter_fu_92_p2 = (counter_0_reg_46 + 4'd1);

assign icmp_ln181_fu_86_p2 = ((counter_0_reg_46 == 4'd8) ? 1'b1 : 1'b0);

assign select_ln183_fu_102_p3 = ((trunc_ln181_fu_98_p1[0:0] === 1'b1) ? p_0_7_reg_77 : 8'd0);

assign select_ln187_fu_136_p3 = ((tmp_fu_122_p3[0:0] === 1'b1) ? xor_ln188_fu_130_p2 : shl_ln186_fu_116_p2);

assign shl_ln186_fu_116_p2 = p_0_7_reg_77 << 8'd1;

assign tmp_fu_122_p3 = p_0_7_reg_77[32'd7];

assign trunc_ln181_fu_98_p1 = b_assign_1_reg_68[0:0];

assign xor_ln183_fu_110_p2 = (select_ln183_fu_102_p3 ^ p_0_reg_57);

assign xor_ln188_fu_130_p2 = (shl_ln186_fu_116_p2 ^ 8'd27);

assign zext_ln189_fu_154_p1 = b_assign_fu_144_p4;

endmodule //galois_multiplicatio
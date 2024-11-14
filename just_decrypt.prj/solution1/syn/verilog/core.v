// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module core (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        word_0_read,
        word_1_read,
        word_2_read,
        word_3_read,
        iteration,
        ap_return_0,
        ap_return_1,
        ap_return_2,
        ap_return_3
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
input  [7:0] word_0_read;
input  [7:0] word_1_read;
input  [7:0] word_2_read;
input  [7:0] word_3_read;
input  [31:0] iteration;
output  [7:0] ap_return_0;
output  [7:0] ap_return_1;
output  [7:0] ap_return_2;
output  [7:0] ap_return_3;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[7:0] ap_return_0;
reg[7:0] ap_return_1;
reg[7:0] ap_return_2;
reg[7:0] ap_return_3;

(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [7:0] sbox_address0;
reg    sbox_ce0;
wire   [7:0] sbox_q0;
wire   [7:0] Rcon_address0;
reg    Rcon_ce0;
wire   [7:0] Rcon_q0;
wire   [1:0] i_5_fu_227_p2;
reg   [1:0] i_5_reg_501;
wire    ap_CS_fsm_state2;
wire   [0:0] write_flag_0_be_i_fu_233_p6;
reg   [0:0] write_flag_0_be_i_reg_506;
wire   [0:0] icmp_ln85_fu_221_p2;
wire   [7:0] word12_0_be_i_fu_292_p6;
wire    ap_CS_fsm_state3;
wire   [7:0] word2_0_be_i_fu_306_p6;
wire   [7:0] word_03_be_i_fu_320_p6;
wire   [2:0] i_fu_340_p2;
reg   [2:0] i_reg_585;
wire    ap_CS_fsm_state4;
wire   [1:0] trunc_ln105_fu_358_p1;
reg   [1:0] trunc_ln105_reg_590;
wire   [0:0] icmp_ln103_fu_334_p2;
reg   [0:0] write_flag_0_i_reg_142;
reg   [7:0] word_03_i_reg_153;
reg   [7:0] word2_0_i_reg_165;
reg   [7:0] word12_0_i_reg_175;
wire   [1:0] ap_phi_mux_i_0_i_phi_fu_189_p4;
reg   [1:0] i_0_i_reg_185;
reg   [7:0] phi_ln86_reg_197;
reg   [2:0] i_0_reg_210;
wire    ap_CS_fsm_state5;
wire   [63:0] zext_ln64_fu_376_p1;
wire   [63:0] zext_ln92_fu_384_p1;
reg   [7:0] word_load_fu_54;
wire   [7:0] select_ln88_fu_247_p3;
wire    ap_CS_fsm_state6;
reg   [7:0] empty_14_fu_58;
reg   [7:0] empty_15_fu_62;
reg   [7:0] empty_16_fu_66;
reg   [7:0] empty_17_fu_70;
reg   [7:0] word_1_0_fu_74;
reg   [7:0] word_2_0_fu_78;
reg   [7:0] word_3_0_fu_82;
wire   [1:0] num_assign_1_fu_362_p5;
wire   [7:0] num_assign_1_fu_362_p6;
wire   [7:0] trunc_ln109_fu_381_p1;
wire   [7:0] xor_ln109_fu_441_p2;
reg   [7:0] ap_return_0_preg;
reg   [7:0] ap_return_1_preg;
reg   [7:0] ap_return_2_preg;
reg   [7:0] ap_return_3_preg;
reg   [5:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 6'd1;
#0 ap_return_0_preg = 8'd0;
#0 ap_return_1_preg = 8'd0;
#0 ap_return_2_preg = 8'd0;
#0 ap_return_3_preg = 8'd0;
end

core_sbox #(
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

core_Rcon #(
    .DataWidth( 8 ),
    .AddressRange( 255 ),
    .AddressWidth( 8 ))
Rcon_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(Rcon_address0),
    .ce0(Rcon_ce0),
    .q0(Rcon_q0)
);

decrypt_dut_mux_4bkb #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 1 ),
    .din1_WIDTH( 1 ),
    .din2_WIDTH( 1 ),
    .din3_WIDTH( 1 ),
    .din4_WIDTH( 2 ),
    .dout_WIDTH( 1 ))
decrypt_dut_mux_4bkb_U1(
    .din0(1'd1),
    .din1(write_flag_0_i_reg_142),
    .din2(write_flag_0_i_reg_142),
    .din3(write_flag_0_i_reg_142),
    .din4(i_0_i_reg_185),
    .dout(write_flag_0_be_i_fu_233_p6)
);

decrypt_dut_mux_4cud #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 8 ),
    .din3_WIDTH( 8 ),
    .din4_WIDTH( 2 ),
    .dout_WIDTH( 8 ))
decrypt_dut_mux_4cud_U2(
    .din0(word12_0_i_reg_175),
    .din1(phi_ln86_reg_197),
    .din2(word12_0_i_reg_175),
    .din3(word12_0_i_reg_175),
    .din4(i_0_i_reg_185),
    .dout(word12_0_be_i_fu_292_p6)
);

decrypt_dut_mux_4cud #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 8 ),
    .din3_WIDTH( 8 ),
    .din4_WIDTH( 2 ),
    .dout_WIDTH( 8 ))
decrypt_dut_mux_4cud_U3(
    .din0(word2_0_i_reg_165),
    .din1(word2_0_i_reg_165),
    .din2(phi_ln86_reg_197),
    .din3(phi_ln86_reg_197),
    .din4(i_0_i_reg_185),
    .dout(word2_0_be_i_fu_306_p6)
);

decrypt_dut_mux_4cud #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 8 ),
    .din3_WIDTH( 8 ),
    .din4_WIDTH( 2 ),
    .dout_WIDTH( 8 ))
decrypt_dut_mux_4cud_U4(
    .din0(phi_ln86_reg_197),
    .din1(word_03_i_reg_153),
    .din2(word_03_i_reg_153),
    .din3(word_03_i_reg_153),
    .din4(i_0_i_reg_185),
    .dout(word_03_be_i_fu_320_p6)
);

decrypt_dut_mux_4cud #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 8 ),
    .din3_WIDTH( 8 ),
    .din4_WIDTH( 2 ),
    .dout_WIDTH( 8 ))
decrypt_dut_mux_4cud_U5(
    .din0(empty_14_fu_58),
    .din1(empty_15_fu_62),
    .din2(empty_16_fu_66),
    .din3(empty_17_fu_70),
    .din4(num_assign_1_fu_362_p5),
    .dout(num_assign_1_fu_362_p6)
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
        ap_return_0_preg <= 8'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state6)) begin
            ap_return_0_preg <= word_1_0_fu_74;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_1_preg <= 8'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state6)) begin
            ap_return_1_preg <= word_2_0_fu_78;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_2_preg <= 8'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state6)) begin
            ap_return_2_preg <= word_3_0_fu_82;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_3_preg <= 8'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state6)) begin
            ap_return_3_preg <= xor_ln109_fu_441_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((trunc_ln105_reg_590 == 2'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        empty_14_fu_58 <= sbox_q0;
    end else if (((icmp_ln85_fu_221_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        empty_14_fu_58 <= select_ln88_fu_247_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((trunc_ln105_reg_590 == 2'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        empty_15_fu_62 <= sbox_q0;
    end else if (((icmp_ln85_fu_221_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        empty_15_fu_62 <= word12_0_i_reg_175;
    end
end

always @ (posedge ap_clk) begin
    if (((trunc_ln105_reg_590 == 2'd2) & (1'b1 == ap_CS_fsm_state5))) begin
        empty_16_fu_66 <= sbox_q0;
    end else if (((icmp_ln85_fu_221_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        empty_16_fu_66 <= word2_0_i_reg_165;
    end
end

always @ (posedge ap_clk) begin
    if (((trunc_ln105_reg_590 == 2'd3) & (1'b1 == ap_CS_fsm_state5))) begin
        empty_17_fu_70 <= sbox_q0;
    end else if (((icmp_ln85_fu_221_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        empty_17_fu_70 <= word_0_read;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        i_0_i_reg_185 <= i_5_reg_501;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_0_i_reg_185 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        i_0_reg_210 <= i_reg_585;
    end else if (((icmp_ln85_fu_221_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        i_0_reg_210 <= 3'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln85_fu_221_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        if ((ap_phi_mux_i_0_i_phi_fu_189_p4 == 2'd0)) begin
            phi_ln86_reg_197 <= word12_0_i_reg_175;
        end else if ((~(ap_phi_mux_i_0_i_phi_fu_189_p4 == 2'd0) & ~(ap_phi_mux_i_0_i_phi_fu_189_p4 == 2'd1))) begin
            phi_ln86_reg_197 <= word_3_read;
        end else if ((ap_phi_mux_i_0_i_phi_fu_189_p4 == 2'd1)) begin
            phi_ln86_reg_197 <= word2_0_i_reg_165;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        word12_0_i_reg_175 <= word12_0_be_i_fu_292_p6;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        word12_0_i_reg_175 <= word_1_read;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        word2_0_i_reg_165 <= word2_0_be_i_fu_306_p6;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        word2_0_i_reg_165 <= word_2_read;
    end
end

always @ (posedge ap_clk) begin
    if (((trunc_ln105_reg_590 == 2'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        word_1_0_fu_74 <= sbox_q0;
    end else if (((icmp_ln85_fu_221_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        word_1_0_fu_74 <= word12_0_i_reg_175;
    end
end

always @ (posedge ap_clk) begin
    if (((trunc_ln105_reg_590 == 2'd2) & (1'b1 == ap_CS_fsm_state5))) begin
        word_2_0_fu_78 <= sbox_q0;
    end else if (((icmp_ln85_fu_221_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        word_2_0_fu_78 <= word2_0_i_reg_165;
    end
end

always @ (posedge ap_clk) begin
    if (((trunc_ln105_reg_590 == 2'd3) & (1'b1 == ap_CS_fsm_state5))) begin
        word_3_0_fu_82 <= sbox_q0;
    end else if (((icmp_ln85_fu_221_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        word_3_0_fu_82 <= word_0_read;
    end
end

always @ (posedge ap_clk) begin
    if (((trunc_ln105_reg_590 == 2'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        word_load_fu_54 <= sbox_q0;
    end else if (((icmp_ln85_fu_221_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        word_load_fu_54 <= select_ln88_fu_247_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        write_flag_0_i_reg_142 <= write_flag_0_be_i_reg_506;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        write_flag_0_i_reg_142 <= 1'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_5_reg_501 <= i_5_fu_227_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        i_reg_585 <= i_fu_340_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln103_fu_334_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        trunc_ln105_reg_590 <= trunc_ln105_fu_358_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        word_03_i_reg_153 <= word_03_be_i_fu_320_p6;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln85_fu_221_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        write_flag_0_be_i_reg_506 <= write_flag_0_be_i_fu_233_p6;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        Rcon_ce0 = 1'b1;
    end else begin
        Rcon_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if ((1'b1 == ap_CS_fsm_state6)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        ap_return_0 = word_1_0_fu_74;
    end else begin
        ap_return_0 = ap_return_0_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        ap_return_1 = word_2_0_fu_78;
    end else begin
        ap_return_1 = ap_return_1_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        ap_return_2 = word_3_0_fu_82;
    end else begin
        ap_return_2 = ap_return_2_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        ap_return_3 = xor_ln109_fu_441_p2;
    end else begin
        ap_return_3 = ap_return_3_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sbox_ce0 = 1'b1;
    end else begin
        sbox_ce0 = 1'b0;
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
            if (((icmp_ln85_fu_221_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        ap_ST_fsm_state4 : begin
            if (((icmp_ln103_fu_334_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign Rcon_address0 = zext_ln92_fu_384_p1;

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_phi_mux_i_0_i_phi_fu_189_p4 = i_0_i_reg_185;

assign i_5_fu_227_p2 = (i_0_i_reg_185 + 2'd1);

assign i_fu_340_p2 = (i_0_reg_210 + 3'd1);

assign icmp_ln103_fu_334_p2 = ((i_0_reg_210 == 3'd4) ? 1'b1 : 1'b0);

assign icmp_ln85_fu_221_p2 = ((i_0_i_reg_185 == 2'd3) ? 1'b1 : 1'b0);

assign num_assign_1_fu_362_p5 = i_0_reg_210[1:0];

assign sbox_address0 = zext_ln64_fu_376_p1;

assign select_ln88_fu_247_p3 = ((write_flag_0_i_reg_142[0:0] === 1'b1) ? word_03_i_reg_153 : word_0_read);

assign trunc_ln105_fu_358_p1 = i_0_reg_210[1:0];

assign trunc_ln109_fu_381_p1 = iteration[7:0];

assign xor_ln109_fu_441_p2 = (word_load_fu_54 ^ Rcon_q0);

assign zext_ln64_fu_376_p1 = num_assign_1_fu_362_p6;

assign zext_ln92_fu_384_p1 = trunc_ln109_fu_381_p1;

endmodule //core
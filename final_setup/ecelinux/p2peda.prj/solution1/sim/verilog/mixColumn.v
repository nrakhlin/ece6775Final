// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module mixColumn (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        column_0_read,
        column_1_read,
        column_2_read,
        column_3_read,
        ap_return_0,
        ap_return_1,
        ap_return_2,
        ap_return_3
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_state2 = 3'd2;
parameter    ap_ST_fsm_state3 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [7:0] column_0_read;
input  [7:0] column_1_read;
input  [7:0] column_2_read;
input  [7:0] column_3_read;
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

(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [2:0] i_fu_181_p2;
wire    ap_CS_fsm_state2;
reg   [7:0] cpy_3_load_reg_396;
wire   [0:0] icmp_ln260_fu_175_p2;
reg   [7:0] cpy_3_1_load_reg_403;
reg   [7:0] cpy_3_2_load_reg_410;
reg   [7:0] cpy_3_3_load_reg_417;
wire    grp_galois_multiplicatio_fu_91_ap_start;
wire    grp_galois_multiplicatio_fu_91_ap_done;
wire    grp_galois_multiplicatio_fu_91_ap_idle;
wire    grp_galois_multiplicatio_fu_91_ap_ready;
wire   [7:0] grp_galois_multiplicatio_fu_91_ap_return;
wire    grp_galois_multiplicatio_fu_98_ap_start;
wire    grp_galois_multiplicatio_fu_98_ap_done;
wire    grp_galois_multiplicatio_fu_98_ap_idle;
wire    grp_galois_multiplicatio_fu_98_ap_ready;
wire   [7:0] grp_galois_multiplicatio_fu_98_ap_return;
wire    grp_galois_multiplicatio_fu_105_ap_start;
wire    grp_galois_multiplicatio_fu_105_ap_done;
wire    grp_galois_multiplicatio_fu_105_ap_idle;
wire    grp_galois_multiplicatio_fu_105_ap_ready;
wire   [7:0] grp_galois_multiplicatio_fu_105_ap_return;
wire    grp_galois_multiplicatio_fu_112_ap_start;
wire    grp_galois_multiplicatio_fu_112_ap_done;
wire    grp_galois_multiplicatio_fu_112_ap_idle;
wire    grp_galois_multiplicatio_fu_112_ap_ready;
wire   [7:0] grp_galois_multiplicatio_fu_112_ap_return;
wire    grp_galois_multiplicatio_fu_119_ap_start;
wire    grp_galois_multiplicatio_fu_119_ap_done;
wire    grp_galois_multiplicatio_fu_119_ap_idle;
wire    grp_galois_multiplicatio_fu_119_ap_ready;
wire   [7:0] grp_galois_multiplicatio_fu_119_ap_return;
wire    grp_galois_multiplicatio_fu_126_ap_start;
wire    grp_galois_multiplicatio_fu_126_ap_done;
wire    grp_galois_multiplicatio_fu_126_ap_idle;
wire    grp_galois_multiplicatio_fu_126_ap_ready;
wire   [7:0] grp_galois_multiplicatio_fu_126_ap_return;
wire    grp_galois_multiplicatio_fu_133_ap_start;
wire    grp_galois_multiplicatio_fu_133_ap_done;
wire    grp_galois_multiplicatio_fu_133_ap_idle;
wire    grp_galois_multiplicatio_fu_133_ap_ready;
wire   [7:0] grp_galois_multiplicatio_fu_133_ap_return;
wire    grp_galois_multiplicatio_fu_140_ap_start;
wire    grp_galois_multiplicatio_fu_140_ap_done;
wire    grp_galois_multiplicatio_fu_140_ap_idle;
wire    grp_galois_multiplicatio_fu_140_ap_ready;
wire   [7:0] grp_galois_multiplicatio_fu_140_ap_return;
wire    grp_galois_multiplicatio_fu_147_ap_start;
wire    grp_galois_multiplicatio_fu_147_ap_done;
wire    grp_galois_multiplicatio_fu_147_ap_idle;
wire    grp_galois_multiplicatio_fu_147_ap_ready;
wire   [7:0] grp_galois_multiplicatio_fu_147_ap_return;
wire    grp_galois_multiplicatio_fu_154_ap_start;
wire    grp_galois_multiplicatio_fu_154_ap_done;
wire    grp_galois_multiplicatio_fu_154_ap_idle;
wire    grp_galois_multiplicatio_fu_154_ap_ready;
wire   [7:0] grp_galois_multiplicatio_fu_154_ap_return;
wire    grp_galois_multiplicatio_fu_161_ap_start;
wire    grp_galois_multiplicatio_fu_161_ap_done;
wire    grp_galois_multiplicatio_fu_161_ap_idle;
wire    grp_galois_multiplicatio_fu_161_ap_ready;
wire   [7:0] grp_galois_multiplicatio_fu_161_ap_return;
wire    grp_galois_multiplicatio_fu_168_ap_start;
wire    grp_galois_multiplicatio_fu_168_ap_done;
wire    grp_galois_multiplicatio_fu_168_ap_idle;
wire    grp_galois_multiplicatio_fu_168_ap_ready;
wire   [7:0] grp_galois_multiplicatio_fu_168_ap_return;
reg   [2:0] i_0_reg_80;
reg    grp_galois_multiplicatio_fu_91_ap_start_reg;
wire    ap_CS_fsm_state3;
reg    grp_galois_multiplicatio_fu_98_ap_start_reg;
reg    grp_galois_multiplicatio_fu_105_ap_start_reg;
reg    grp_galois_multiplicatio_fu_112_ap_start_reg;
reg    grp_galois_multiplicatio_fu_119_ap_start_reg;
reg    grp_galois_multiplicatio_fu_126_ap_start_reg;
reg    grp_galois_multiplicatio_fu_133_ap_start_reg;
reg    grp_galois_multiplicatio_fu_140_ap_start_reg;
reg    grp_galois_multiplicatio_fu_147_ap_start_reg;
reg    grp_galois_multiplicatio_fu_154_ap_start_reg;
reg    grp_galois_multiplicatio_fu_161_ap_start_reg;
reg    grp_galois_multiplicatio_fu_168_ap_start_reg;
reg   [7:0] cpy_3_fu_40;
wire   [7:0] cpy_0_fu_191_p6;
wire   [1:0] trunc_ln262_fu_187_p1;
reg   [7:0] cpy_3_1_fu_44;
reg   [7:0] cpy_3_2_fu_48;
reg   [7:0] cpy_3_3_fu_52;
wire   [1:0] cpy_0_fu_191_p5;
wire   [7:0] xor_ln267_1_fu_251_p2;
wire   [7:0] xor_ln267_fu_245_p2;
wire   [7:0] xor_ln272_1_fu_269_p2;
wire   [7:0] xor_ln272_fu_263_p2;
wire   [7:0] xor_ln277_1_fu_287_p2;
wire   [7:0] xor_ln277_fu_281_p2;
wire   [7:0] xor_ln282_1_fu_305_p2;
wire   [7:0] xor_ln282_fu_299_p2;
wire   [7:0] xor_ln267_2_fu_257_p2;
wire   [7:0] xor_ln272_2_fu_275_p2;
wire   [7:0] xor_ln277_2_fu_293_p2;
wire   [7:0] xor_ln282_2_fu_311_p2;
reg   [7:0] ap_return_0_preg;
reg    ap_block_state3_on_subcall_done;
reg   [7:0] ap_return_1_preg;
reg   [7:0] ap_return_2_preg;
reg   [7:0] ap_return_3_preg;
reg   [2:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 3'd1;
#0 grp_galois_multiplicatio_fu_91_ap_start_reg = 1'b0;
#0 grp_galois_multiplicatio_fu_98_ap_start_reg = 1'b0;
#0 grp_galois_multiplicatio_fu_105_ap_start_reg = 1'b0;
#0 grp_galois_multiplicatio_fu_112_ap_start_reg = 1'b0;
#0 grp_galois_multiplicatio_fu_119_ap_start_reg = 1'b0;
#0 grp_galois_multiplicatio_fu_126_ap_start_reg = 1'b0;
#0 grp_galois_multiplicatio_fu_133_ap_start_reg = 1'b0;
#0 grp_galois_multiplicatio_fu_140_ap_start_reg = 1'b0;
#0 grp_galois_multiplicatio_fu_147_ap_start_reg = 1'b0;
#0 grp_galois_multiplicatio_fu_154_ap_start_reg = 1'b0;
#0 grp_galois_multiplicatio_fu_161_ap_start_reg = 1'b0;
#0 grp_galois_multiplicatio_fu_168_ap_start_reg = 1'b0;
#0 ap_return_0_preg = 8'd0;
#0 ap_return_1_preg = 8'd0;
#0 ap_return_2_preg = 8'd0;
#0 ap_return_3_preg = 8'd0;
end

galois_multiplicatio grp_galois_multiplicatio_fu_91(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_galois_multiplicatio_fu_91_ap_start),
    .ap_done(grp_galois_multiplicatio_fu_91_ap_done),
    .ap_idle(grp_galois_multiplicatio_fu_91_ap_idle),
    .ap_ready(grp_galois_multiplicatio_fu_91_ap_ready),
    .a(cpy_3_load_reg_396),
    .b(5'd2),
    .ap_return(grp_galois_multiplicatio_fu_91_ap_return)
);

galois_multiplicatio grp_galois_multiplicatio_fu_98(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_galois_multiplicatio_fu_98_ap_start),
    .ap_done(grp_galois_multiplicatio_fu_98_ap_done),
    .ap_idle(grp_galois_multiplicatio_fu_98_ap_idle),
    .ap_ready(grp_galois_multiplicatio_fu_98_ap_ready),
    .a(cpy_3_3_load_reg_417),
    .b(5'd1),
    .ap_return(grp_galois_multiplicatio_fu_98_ap_return)
);

galois_multiplicatio grp_galois_multiplicatio_fu_105(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_galois_multiplicatio_fu_105_ap_start),
    .ap_done(grp_galois_multiplicatio_fu_105_ap_done),
    .ap_idle(grp_galois_multiplicatio_fu_105_ap_idle),
    .ap_ready(grp_galois_multiplicatio_fu_105_ap_ready),
    .a(cpy_3_2_load_reg_410),
    .b(5'd1),
    .ap_return(grp_galois_multiplicatio_fu_105_ap_return)
);

galois_multiplicatio grp_galois_multiplicatio_fu_112(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_galois_multiplicatio_fu_112_ap_start),
    .ap_done(grp_galois_multiplicatio_fu_112_ap_done),
    .ap_idle(grp_galois_multiplicatio_fu_112_ap_idle),
    .ap_ready(grp_galois_multiplicatio_fu_112_ap_ready),
    .a(cpy_3_1_load_reg_403),
    .b(5'd3),
    .ap_return(grp_galois_multiplicatio_fu_112_ap_return)
);

galois_multiplicatio grp_galois_multiplicatio_fu_119(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_galois_multiplicatio_fu_119_ap_start),
    .ap_done(grp_galois_multiplicatio_fu_119_ap_done),
    .ap_idle(grp_galois_multiplicatio_fu_119_ap_idle),
    .ap_ready(grp_galois_multiplicatio_fu_119_ap_ready),
    .a(cpy_3_1_load_reg_403),
    .b(5'd2),
    .ap_return(grp_galois_multiplicatio_fu_119_ap_return)
);

galois_multiplicatio grp_galois_multiplicatio_fu_126(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_galois_multiplicatio_fu_126_ap_start),
    .ap_done(grp_galois_multiplicatio_fu_126_ap_done),
    .ap_idle(grp_galois_multiplicatio_fu_126_ap_idle),
    .ap_ready(grp_galois_multiplicatio_fu_126_ap_ready),
    .a(cpy_3_load_reg_396),
    .b(5'd1),
    .ap_return(grp_galois_multiplicatio_fu_126_ap_return)
);

galois_multiplicatio grp_galois_multiplicatio_fu_133(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_galois_multiplicatio_fu_133_ap_start),
    .ap_done(grp_galois_multiplicatio_fu_133_ap_done),
    .ap_idle(grp_galois_multiplicatio_fu_133_ap_idle),
    .ap_ready(grp_galois_multiplicatio_fu_133_ap_ready),
    .a(cpy_3_2_load_reg_410),
    .b(5'd3),
    .ap_return(grp_galois_multiplicatio_fu_133_ap_return)
);

galois_multiplicatio grp_galois_multiplicatio_fu_140(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_galois_multiplicatio_fu_140_ap_start),
    .ap_done(grp_galois_multiplicatio_fu_140_ap_done),
    .ap_idle(grp_galois_multiplicatio_fu_140_ap_idle),
    .ap_ready(grp_galois_multiplicatio_fu_140_ap_ready),
    .a(cpy_3_2_load_reg_410),
    .b(5'd2),
    .ap_return(grp_galois_multiplicatio_fu_140_ap_return)
);

galois_multiplicatio grp_galois_multiplicatio_fu_147(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_galois_multiplicatio_fu_147_ap_start),
    .ap_done(grp_galois_multiplicatio_fu_147_ap_done),
    .ap_idle(grp_galois_multiplicatio_fu_147_ap_idle),
    .ap_ready(grp_galois_multiplicatio_fu_147_ap_ready),
    .a(cpy_3_1_load_reg_403),
    .b(5'd1),
    .ap_return(grp_galois_multiplicatio_fu_147_ap_return)
);

galois_multiplicatio grp_galois_multiplicatio_fu_154(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_galois_multiplicatio_fu_154_ap_start),
    .ap_done(grp_galois_multiplicatio_fu_154_ap_done),
    .ap_idle(grp_galois_multiplicatio_fu_154_ap_idle),
    .ap_ready(grp_galois_multiplicatio_fu_154_ap_ready),
    .a(cpy_3_3_load_reg_417),
    .b(5'd3),
    .ap_return(grp_galois_multiplicatio_fu_154_ap_return)
);

galois_multiplicatio grp_galois_multiplicatio_fu_161(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_galois_multiplicatio_fu_161_ap_start),
    .ap_done(grp_galois_multiplicatio_fu_161_ap_done),
    .ap_idle(grp_galois_multiplicatio_fu_161_ap_idle),
    .ap_ready(grp_galois_multiplicatio_fu_161_ap_ready),
    .a(cpy_3_3_load_reg_417),
    .b(5'd2),
    .ap_return(grp_galois_multiplicatio_fu_161_ap_return)
);

galois_multiplicatio grp_galois_multiplicatio_fu_168(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_galois_multiplicatio_fu_168_ap_start),
    .ap_done(grp_galois_multiplicatio_fu_168_ap_done),
    .ap_idle(grp_galois_multiplicatio_fu_168_ap_idle),
    .ap_ready(grp_galois_multiplicatio_fu_168_ap_ready),
    .a(cpy_3_load_reg_396),
    .b(5'd3),
    .ap_return(grp_galois_multiplicatio_fu_168_ap_return)
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
dut_mux_42_8_1_1_U169(
    .din0(column_0_read),
    .din1(column_1_read),
    .din2(column_2_read),
    .din3(column_3_read),
    .din4(cpy_0_fu_191_p5),
    .dout(cpy_0_fu_191_p6)
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
        if (((1'b0 == ap_block_state3_on_subcall_done) & (1'b1 == ap_CS_fsm_state3))) begin
            ap_return_0_preg <= xor_ln267_2_fu_257_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_1_preg <= 8'd0;
    end else begin
        if (((1'b0 == ap_block_state3_on_subcall_done) & (1'b1 == ap_CS_fsm_state3))) begin
            ap_return_1_preg <= xor_ln272_2_fu_275_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_2_preg <= 8'd0;
    end else begin
        if (((1'b0 == ap_block_state3_on_subcall_done) & (1'b1 == ap_CS_fsm_state3))) begin
            ap_return_2_preg <= xor_ln277_2_fu_293_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_3_preg <= 8'd0;
    end else begin
        if (((1'b0 == ap_block_state3_on_subcall_done) & (1'b1 == ap_CS_fsm_state3))) begin
            ap_return_3_preg <= xor_ln282_2_fu_311_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_galois_multiplicatio_fu_105_ap_start_reg <= 1'b0;
    end else begin
        if (((icmp_ln260_fu_175_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            grp_galois_multiplicatio_fu_105_ap_start_reg <= 1'b1;
        end else if ((grp_galois_multiplicatio_fu_105_ap_ready == 1'b1)) begin
            grp_galois_multiplicatio_fu_105_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_galois_multiplicatio_fu_112_ap_start_reg <= 1'b0;
    end else begin
        if (((icmp_ln260_fu_175_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            grp_galois_multiplicatio_fu_112_ap_start_reg <= 1'b1;
        end else if ((grp_galois_multiplicatio_fu_112_ap_ready == 1'b1)) begin
            grp_galois_multiplicatio_fu_112_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_galois_multiplicatio_fu_119_ap_start_reg <= 1'b0;
    end else begin
        if (((icmp_ln260_fu_175_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            grp_galois_multiplicatio_fu_119_ap_start_reg <= 1'b1;
        end else if ((grp_galois_multiplicatio_fu_119_ap_ready == 1'b1)) begin
            grp_galois_multiplicatio_fu_119_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_galois_multiplicatio_fu_126_ap_start_reg <= 1'b0;
    end else begin
        if (((icmp_ln260_fu_175_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            grp_galois_multiplicatio_fu_126_ap_start_reg <= 1'b1;
        end else if ((grp_galois_multiplicatio_fu_126_ap_ready == 1'b1)) begin
            grp_galois_multiplicatio_fu_126_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_galois_multiplicatio_fu_133_ap_start_reg <= 1'b0;
    end else begin
        if (((icmp_ln260_fu_175_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            grp_galois_multiplicatio_fu_133_ap_start_reg <= 1'b1;
        end else if ((grp_galois_multiplicatio_fu_133_ap_ready == 1'b1)) begin
            grp_galois_multiplicatio_fu_133_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_galois_multiplicatio_fu_140_ap_start_reg <= 1'b0;
    end else begin
        if (((icmp_ln260_fu_175_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            grp_galois_multiplicatio_fu_140_ap_start_reg <= 1'b1;
        end else if ((grp_galois_multiplicatio_fu_140_ap_ready == 1'b1)) begin
            grp_galois_multiplicatio_fu_140_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_galois_multiplicatio_fu_147_ap_start_reg <= 1'b0;
    end else begin
        if (((icmp_ln260_fu_175_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            grp_galois_multiplicatio_fu_147_ap_start_reg <= 1'b1;
        end else if ((grp_galois_multiplicatio_fu_147_ap_ready == 1'b1)) begin
            grp_galois_multiplicatio_fu_147_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_galois_multiplicatio_fu_154_ap_start_reg <= 1'b0;
    end else begin
        if (((icmp_ln260_fu_175_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            grp_galois_multiplicatio_fu_154_ap_start_reg <= 1'b1;
        end else if ((grp_galois_multiplicatio_fu_154_ap_ready == 1'b1)) begin
            grp_galois_multiplicatio_fu_154_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_galois_multiplicatio_fu_161_ap_start_reg <= 1'b0;
    end else begin
        if (((icmp_ln260_fu_175_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            grp_galois_multiplicatio_fu_161_ap_start_reg <= 1'b1;
        end else if ((grp_galois_multiplicatio_fu_161_ap_ready == 1'b1)) begin
            grp_galois_multiplicatio_fu_161_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_galois_multiplicatio_fu_168_ap_start_reg <= 1'b0;
    end else begin
        if (((icmp_ln260_fu_175_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            grp_galois_multiplicatio_fu_168_ap_start_reg <= 1'b1;
        end else if ((grp_galois_multiplicatio_fu_168_ap_ready == 1'b1)) begin
            grp_galois_multiplicatio_fu_168_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_galois_multiplicatio_fu_91_ap_start_reg <= 1'b0;
    end else begin
        if (((icmp_ln260_fu_175_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            grp_galois_multiplicatio_fu_91_ap_start_reg <= 1'b1;
        end else if ((grp_galois_multiplicatio_fu_91_ap_ready == 1'b1)) begin
            grp_galois_multiplicatio_fu_91_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_galois_multiplicatio_fu_98_ap_start_reg <= 1'b0;
    end else begin
        if (((icmp_ln260_fu_175_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            grp_galois_multiplicatio_fu_98_ap_start_reg <= 1'b1;
        end else if ((grp_galois_multiplicatio_fu_98_ap_ready == 1'b1)) begin
            grp_galois_multiplicatio_fu_98_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln260_fu_175_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        i_0_reg_80 <= i_fu_181_p2;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_0_reg_80 <= 3'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln260_fu_175_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2) & (trunc_ln262_fu_187_p1 == 2'd1))) begin
        cpy_3_1_fu_44 <= cpy_0_fu_191_p6;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln260_fu_175_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        cpy_3_1_load_reg_403 <= cpy_3_1_fu_44;
        cpy_3_2_load_reg_410 <= cpy_3_2_fu_48;
        cpy_3_3_load_reg_417 <= cpy_3_3_fu_52;
        cpy_3_load_reg_396 <= cpy_3_fu_40;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln260_fu_175_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2) & (trunc_ln262_fu_187_p1 == 2'd2))) begin
        cpy_3_2_fu_48 <= cpy_0_fu_191_p6;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln260_fu_175_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2) & (trunc_ln262_fu_187_p1 == 2'd3))) begin
        cpy_3_3_fu_52 <= cpy_0_fu_191_p6;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln260_fu_175_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2) & (trunc_ln262_fu_187_p1 == 2'd0))) begin
        cpy_3_fu_40 <= cpy_0_fu_191_p6;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_state3_on_subcall_done) & (1'b1 == ap_CS_fsm_state3)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((1'b0 == ap_block_state3_on_subcall_done) & (1'b1 == ap_CS_fsm_state3))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_state3_on_subcall_done) & (1'b1 == ap_CS_fsm_state3))) begin
        ap_return_0 = xor_ln267_2_fu_257_p2;
    end else begin
        ap_return_0 = ap_return_0_preg;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_state3_on_subcall_done) & (1'b1 == ap_CS_fsm_state3))) begin
        ap_return_1 = xor_ln272_2_fu_275_p2;
    end else begin
        ap_return_1 = ap_return_1_preg;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_state3_on_subcall_done) & (1'b1 == ap_CS_fsm_state3))) begin
        ap_return_2 = xor_ln277_2_fu_293_p2;
    end else begin
        ap_return_2 = ap_return_2_preg;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_state3_on_subcall_done) & (1'b1 == ap_CS_fsm_state3))) begin
        ap_return_3 = xor_ln282_2_fu_311_p2;
    end else begin
        ap_return_3 = ap_return_3_preg;
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
            if (((icmp_ln260_fu_175_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b0 == ap_block_state3_on_subcall_done) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

always @ (*) begin
    ap_block_state3_on_subcall_done = ((grp_galois_multiplicatio_fu_119_ap_done == 1'b0) | (grp_galois_multiplicatio_fu_112_ap_done == 1'b0) | (grp_galois_multiplicatio_fu_105_ap_done == 1'b0) | (grp_galois_multiplicatio_fu_98_ap_done == 1'b0) | (grp_galois_multiplicatio_fu_91_ap_done == 1'b0) | (grp_galois_multiplicatio_fu_168_ap_done == 1'b0) | (grp_galois_multiplicatio_fu_161_ap_done == 1'b0) | (grp_galois_multiplicatio_fu_154_ap_done == 1'b0) | (grp_galois_multiplicatio_fu_147_ap_done == 1'b0) | (grp_galois_multiplicatio_fu_140_ap_done == 1'b0) | (grp_galois_multiplicatio_fu_133_ap_done == 1'b0) | (grp_galois_multiplicatio_fu_126_ap_done == 1'b0));
end

assign cpy_0_fu_191_p5 = i_0_reg_80[1:0];

assign grp_galois_multiplicatio_fu_105_ap_start = grp_galois_multiplicatio_fu_105_ap_start_reg;

assign grp_galois_multiplicatio_fu_112_ap_start = grp_galois_multiplicatio_fu_112_ap_start_reg;

assign grp_galois_multiplicatio_fu_119_ap_start = grp_galois_multiplicatio_fu_119_ap_start_reg;

assign grp_galois_multiplicatio_fu_126_ap_start = grp_galois_multiplicatio_fu_126_ap_start_reg;

assign grp_galois_multiplicatio_fu_133_ap_start = grp_galois_multiplicatio_fu_133_ap_start_reg;

assign grp_galois_multiplicatio_fu_140_ap_start = grp_galois_multiplicatio_fu_140_ap_start_reg;

assign grp_galois_multiplicatio_fu_147_ap_start = grp_galois_multiplicatio_fu_147_ap_start_reg;

assign grp_galois_multiplicatio_fu_154_ap_start = grp_galois_multiplicatio_fu_154_ap_start_reg;

assign grp_galois_multiplicatio_fu_161_ap_start = grp_galois_multiplicatio_fu_161_ap_start_reg;

assign grp_galois_multiplicatio_fu_168_ap_start = grp_galois_multiplicatio_fu_168_ap_start_reg;

assign grp_galois_multiplicatio_fu_91_ap_start = grp_galois_multiplicatio_fu_91_ap_start_reg;

assign grp_galois_multiplicatio_fu_98_ap_start = grp_galois_multiplicatio_fu_98_ap_start_reg;

assign i_fu_181_p2 = (i_0_reg_80 + 3'd1);

assign icmp_ln260_fu_175_p2 = ((i_0_reg_80 == 3'd4) ? 1'b1 : 1'b0);

assign trunc_ln262_fu_187_p1 = i_0_reg_80[1:0];

assign xor_ln267_1_fu_251_p2 = (grp_galois_multiplicatio_fu_112_ap_return ^ grp_galois_multiplicatio_fu_105_ap_return);

assign xor_ln267_2_fu_257_p2 = (xor_ln267_fu_245_p2 ^ xor_ln267_1_fu_251_p2);

assign xor_ln267_fu_245_p2 = (grp_galois_multiplicatio_fu_98_ap_return ^ grp_galois_multiplicatio_fu_91_ap_return);

assign xor_ln272_1_fu_269_p2 = (grp_galois_multiplicatio_fu_98_ap_return ^ grp_galois_multiplicatio_fu_133_ap_return);

assign xor_ln272_2_fu_275_p2 = (xor_ln272_fu_263_p2 ^ xor_ln272_1_fu_269_p2);

assign xor_ln272_fu_263_p2 = (grp_galois_multiplicatio_fu_126_ap_return ^ grp_galois_multiplicatio_fu_119_ap_return);

assign xor_ln277_1_fu_287_p2 = (grp_galois_multiplicatio_fu_154_ap_return ^ grp_galois_multiplicatio_fu_126_ap_return);

assign xor_ln277_2_fu_293_p2 = (xor_ln277_fu_281_p2 ^ xor_ln277_1_fu_287_p2);

assign xor_ln277_fu_281_p2 = (grp_galois_multiplicatio_fu_147_ap_return ^ grp_galois_multiplicatio_fu_140_ap_return);

assign xor_ln282_1_fu_305_p2 = (grp_galois_multiplicatio_fu_168_ap_return ^ grp_galois_multiplicatio_fu_147_ap_return);

assign xor_ln282_2_fu_311_p2 = (xor_ln282_fu_299_p2 ^ xor_ln282_1_fu_305_p2);

assign xor_ln282_fu_299_p2 = (grp_galois_multiplicatio_fu_161_ap_return ^ grp_galois_multiplicatio_fu_105_ap_return);

endmodule //mixColumn

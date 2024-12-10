// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
 `timescale 1ns/1ps


`define AUTOTB_DUT      decrypt_dut
`define AUTOTB_DUT_INST AESL_inst_decrypt_dut
`define AUTOTB_TOP      apatb_decrypt_dut_top
`define AUTOTB_LAT_RESULT_FILE "decrypt_dut.result.lat.rb"
`define AUTOTB_PER_RESULT_TRANS_FILE "decrypt_dut.performance.result.transaction.xml"
`define AUTOTB_TOP_INST AESL_inst_apatb_decrypt_dut_top
`define AUTOTB_MAX_ALLOW_LATENCY  15000000
`define AUTOTB_CLOCK_PERIOD_DIV2 5.00

`define AESL_DEPTH_input_0 1
`define AESL_DEPTH_input_1 1
`define AESL_DEPTH_input_2 1
`define AESL_DEPTH_input_3 1
`define AESL_DEPTH_input_4 1
`define AESL_DEPTH_input_5 1
`define AESL_DEPTH_input_6 1
`define AESL_DEPTH_input_7 1
`define AESL_DEPTH_input_8 1
`define AESL_DEPTH_input_9 1
`define AESL_DEPTH_input_10 1
`define AESL_DEPTH_input_11 1
`define AESL_DEPTH_input_12 1
`define AESL_DEPTH_input_13 1
`define AESL_DEPTH_input_14 1
`define AESL_DEPTH_input_15 1
`define AESL_DEPTH_output_0 1
`define AESL_DEPTH_output_1 1
`define AESL_DEPTH_output_2 1
`define AESL_DEPTH_output_3 1
`define AESL_DEPTH_output_4 1
`define AESL_DEPTH_output_5 1
`define AESL_DEPTH_output_6 1
`define AESL_DEPTH_output_7 1
`define AESL_DEPTH_output_8 1
`define AESL_DEPTH_output_9 1
`define AESL_DEPTH_output_10 1
`define AESL_DEPTH_output_11 1
`define AESL_DEPTH_output_12 1
`define AESL_DEPTH_output_13 1
`define AESL_DEPTH_output_14 1
`define AESL_DEPTH_output_15 1
`define AESL_DEPTH_key_0 1
`define AESL_DEPTH_key_1 1
`define AESL_DEPTH_key_2 1
`define AESL_DEPTH_key_3 1
`define AESL_DEPTH_key_4 1
`define AESL_DEPTH_key_5 1
`define AESL_DEPTH_key_6 1
`define AESL_DEPTH_key_7 1
`define AESL_DEPTH_key_8 1
`define AESL_DEPTH_key_9 1
`define AESL_DEPTH_key_10 1
`define AESL_DEPTH_key_11 1
`define AESL_DEPTH_key_12 1
`define AESL_DEPTH_key_13 1
`define AESL_DEPTH_key_14 1
`define AESL_DEPTH_key_15 1
`define AUTOTB_TVIN_input_0  "./c.decrypt_dut.autotvin_input_0.dat"
`define AUTOTB_TVIN_input_1  "./c.decrypt_dut.autotvin_input_1.dat"
`define AUTOTB_TVIN_input_2  "./c.decrypt_dut.autotvin_input_2.dat"
`define AUTOTB_TVIN_input_3  "./c.decrypt_dut.autotvin_input_3.dat"
`define AUTOTB_TVIN_input_4  "./c.decrypt_dut.autotvin_input_4.dat"
`define AUTOTB_TVIN_input_5  "./c.decrypt_dut.autotvin_input_5.dat"
`define AUTOTB_TVIN_input_6  "./c.decrypt_dut.autotvin_input_6.dat"
`define AUTOTB_TVIN_input_7  "./c.decrypt_dut.autotvin_input_7.dat"
`define AUTOTB_TVIN_input_8  "./c.decrypt_dut.autotvin_input_8.dat"
`define AUTOTB_TVIN_input_9  "./c.decrypt_dut.autotvin_input_9.dat"
`define AUTOTB_TVIN_input_10  "./c.decrypt_dut.autotvin_input_10.dat"
`define AUTOTB_TVIN_input_11  "./c.decrypt_dut.autotvin_input_11.dat"
`define AUTOTB_TVIN_input_12  "./c.decrypt_dut.autotvin_input_12.dat"
`define AUTOTB_TVIN_input_13  "./c.decrypt_dut.autotvin_input_13.dat"
`define AUTOTB_TVIN_input_14  "./c.decrypt_dut.autotvin_input_14.dat"
`define AUTOTB_TVIN_input_15  "./c.decrypt_dut.autotvin_input_15.dat"
`define AUTOTB_TVIN_key_0  "./c.decrypt_dut.autotvin_key_0.dat"
`define AUTOTB_TVIN_key_1  "./c.decrypt_dut.autotvin_key_1.dat"
`define AUTOTB_TVIN_key_2  "./c.decrypt_dut.autotvin_key_2.dat"
`define AUTOTB_TVIN_key_3  "./c.decrypt_dut.autotvin_key_3.dat"
`define AUTOTB_TVIN_key_4  "./c.decrypt_dut.autotvin_key_4.dat"
`define AUTOTB_TVIN_key_5  "./c.decrypt_dut.autotvin_key_5.dat"
`define AUTOTB_TVIN_key_6  "./c.decrypt_dut.autotvin_key_6.dat"
`define AUTOTB_TVIN_key_7  "./c.decrypt_dut.autotvin_key_7.dat"
`define AUTOTB_TVIN_key_8  "./c.decrypt_dut.autotvin_key_8.dat"
`define AUTOTB_TVIN_key_9  "./c.decrypt_dut.autotvin_key_9.dat"
`define AUTOTB_TVIN_key_10  "./c.decrypt_dut.autotvin_key_10.dat"
`define AUTOTB_TVIN_key_11  "./c.decrypt_dut.autotvin_key_11.dat"
`define AUTOTB_TVIN_key_12  "./c.decrypt_dut.autotvin_key_12.dat"
`define AUTOTB_TVIN_key_13  "./c.decrypt_dut.autotvin_key_13.dat"
`define AUTOTB_TVIN_key_14  "./c.decrypt_dut.autotvin_key_14.dat"
`define AUTOTB_TVIN_key_15  "./c.decrypt_dut.autotvin_key_15.dat"
`define AUTOTB_TVIN_input_0_out_wrapc  "./rtl.decrypt_dut.autotvin_input_0.dat"
`define AUTOTB_TVIN_input_1_out_wrapc  "./rtl.decrypt_dut.autotvin_input_1.dat"
`define AUTOTB_TVIN_input_2_out_wrapc  "./rtl.decrypt_dut.autotvin_input_2.dat"
`define AUTOTB_TVIN_input_3_out_wrapc  "./rtl.decrypt_dut.autotvin_input_3.dat"
`define AUTOTB_TVIN_input_4_out_wrapc  "./rtl.decrypt_dut.autotvin_input_4.dat"
`define AUTOTB_TVIN_input_5_out_wrapc  "./rtl.decrypt_dut.autotvin_input_5.dat"
`define AUTOTB_TVIN_input_6_out_wrapc  "./rtl.decrypt_dut.autotvin_input_6.dat"
`define AUTOTB_TVIN_input_7_out_wrapc  "./rtl.decrypt_dut.autotvin_input_7.dat"
`define AUTOTB_TVIN_input_8_out_wrapc  "./rtl.decrypt_dut.autotvin_input_8.dat"
`define AUTOTB_TVIN_input_9_out_wrapc  "./rtl.decrypt_dut.autotvin_input_9.dat"
`define AUTOTB_TVIN_input_10_out_wrapc  "./rtl.decrypt_dut.autotvin_input_10.dat"
`define AUTOTB_TVIN_input_11_out_wrapc  "./rtl.decrypt_dut.autotvin_input_11.dat"
`define AUTOTB_TVIN_input_12_out_wrapc  "./rtl.decrypt_dut.autotvin_input_12.dat"
`define AUTOTB_TVIN_input_13_out_wrapc  "./rtl.decrypt_dut.autotvin_input_13.dat"
`define AUTOTB_TVIN_input_14_out_wrapc  "./rtl.decrypt_dut.autotvin_input_14.dat"
`define AUTOTB_TVIN_input_15_out_wrapc  "./rtl.decrypt_dut.autotvin_input_15.dat"
`define AUTOTB_TVIN_key_0_out_wrapc  "./rtl.decrypt_dut.autotvin_key_0.dat"
`define AUTOTB_TVIN_key_1_out_wrapc  "./rtl.decrypt_dut.autotvin_key_1.dat"
`define AUTOTB_TVIN_key_2_out_wrapc  "./rtl.decrypt_dut.autotvin_key_2.dat"
`define AUTOTB_TVIN_key_3_out_wrapc  "./rtl.decrypt_dut.autotvin_key_3.dat"
`define AUTOTB_TVIN_key_4_out_wrapc  "./rtl.decrypt_dut.autotvin_key_4.dat"
`define AUTOTB_TVIN_key_5_out_wrapc  "./rtl.decrypt_dut.autotvin_key_5.dat"
`define AUTOTB_TVIN_key_6_out_wrapc  "./rtl.decrypt_dut.autotvin_key_6.dat"
`define AUTOTB_TVIN_key_7_out_wrapc  "./rtl.decrypt_dut.autotvin_key_7.dat"
`define AUTOTB_TVIN_key_8_out_wrapc  "./rtl.decrypt_dut.autotvin_key_8.dat"
`define AUTOTB_TVIN_key_9_out_wrapc  "./rtl.decrypt_dut.autotvin_key_9.dat"
`define AUTOTB_TVIN_key_10_out_wrapc  "./rtl.decrypt_dut.autotvin_key_10.dat"
`define AUTOTB_TVIN_key_11_out_wrapc  "./rtl.decrypt_dut.autotvin_key_11.dat"
`define AUTOTB_TVIN_key_12_out_wrapc  "./rtl.decrypt_dut.autotvin_key_12.dat"
`define AUTOTB_TVIN_key_13_out_wrapc  "./rtl.decrypt_dut.autotvin_key_13.dat"
`define AUTOTB_TVIN_key_14_out_wrapc  "./rtl.decrypt_dut.autotvin_key_14.dat"
`define AUTOTB_TVIN_key_15_out_wrapc  "./rtl.decrypt_dut.autotvin_key_15.dat"
`define AUTOTB_TVOUT_output_0  "./c.decrypt_dut.autotvout_output_0.dat"
`define AUTOTB_TVOUT_output_1  "./c.decrypt_dut.autotvout_output_1.dat"
`define AUTOTB_TVOUT_output_2  "./c.decrypt_dut.autotvout_output_2.dat"
`define AUTOTB_TVOUT_output_3  "./c.decrypt_dut.autotvout_output_3.dat"
`define AUTOTB_TVOUT_output_4  "./c.decrypt_dut.autotvout_output_4.dat"
`define AUTOTB_TVOUT_output_5  "./c.decrypt_dut.autotvout_output_5.dat"
`define AUTOTB_TVOUT_output_6  "./c.decrypt_dut.autotvout_output_6.dat"
`define AUTOTB_TVOUT_output_7  "./c.decrypt_dut.autotvout_output_7.dat"
`define AUTOTB_TVOUT_output_8  "./c.decrypt_dut.autotvout_output_8.dat"
`define AUTOTB_TVOUT_output_9  "./c.decrypt_dut.autotvout_output_9.dat"
`define AUTOTB_TVOUT_output_10  "./c.decrypt_dut.autotvout_output_10.dat"
`define AUTOTB_TVOUT_output_11  "./c.decrypt_dut.autotvout_output_11.dat"
`define AUTOTB_TVOUT_output_12  "./c.decrypt_dut.autotvout_output_12.dat"
`define AUTOTB_TVOUT_output_13  "./c.decrypt_dut.autotvout_output_13.dat"
`define AUTOTB_TVOUT_output_14  "./c.decrypt_dut.autotvout_output_14.dat"
`define AUTOTB_TVOUT_output_15  "./c.decrypt_dut.autotvout_output_15.dat"
`define AUTOTB_TVOUT_output_0_out_wrapc  "./impl_rtl.decrypt_dut.autotvout_output_0.dat"
`define AUTOTB_TVOUT_output_1_out_wrapc  "./impl_rtl.decrypt_dut.autotvout_output_1.dat"
`define AUTOTB_TVOUT_output_2_out_wrapc  "./impl_rtl.decrypt_dut.autotvout_output_2.dat"
`define AUTOTB_TVOUT_output_3_out_wrapc  "./impl_rtl.decrypt_dut.autotvout_output_3.dat"
`define AUTOTB_TVOUT_output_4_out_wrapc  "./impl_rtl.decrypt_dut.autotvout_output_4.dat"
`define AUTOTB_TVOUT_output_5_out_wrapc  "./impl_rtl.decrypt_dut.autotvout_output_5.dat"
`define AUTOTB_TVOUT_output_6_out_wrapc  "./impl_rtl.decrypt_dut.autotvout_output_6.dat"
`define AUTOTB_TVOUT_output_7_out_wrapc  "./impl_rtl.decrypt_dut.autotvout_output_7.dat"
`define AUTOTB_TVOUT_output_8_out_wrapc  "./impl_rtl.decrypt_dut.autotvout_output_8.dat"
`define AUTOTB_TVOUT_output_9_out_wrapc  "./impl_rtl.decrypt_dut.autotvout_output_9.dat"
`define AUTOTB_TVOUT_output_10_out_wrapc  "./impl_rtl.decrypt_dut.autotvout_output_10.dat"
`define AUTOTB_TVOUT_output_11_out_wrapc  "./impl_rtl.decrypt_dut.autotvout_output_11.dat"
`define AUTOTB_TVOUT_output_12_out_wrapc  "./impl_rtl.decrypt_dut.autotvout_output_12.dat"
`define AUTOTB_TVOUT_output_13_out_wrapc  "./impl_rtl.decrypt_dut.autotvout_output_13.dat"
`define AUTOTB_TVOUT_output_14_out_wrapc  "./impl_rtl.decrypt_dut.autotvout_output_14.dat"
`define AUTOTB_TVOUT_output_15_out_wrapc  "./impl_rtl.decrypt_dut.autotvout_output_15.dat"
module `AUTOTB_TOP;

parameter AUTOTB_TRANSACTION_NUM = 2;
parameter PROGRESS_TIMEOUT = 10000000;
parameter LATENCY_ESTIMATION = 319;
parameter LENGTH_input_0 = 1;
parameter LENGTH_input_1 = 1;
parameter LENGTH_input_2 = 1;
parameter LENGTH_input_3 = 1;
parameter LENGTH_input_4 = 1;
parameter LENGTH_input_5 = 1;
parameter LENGTH_input_6 = 1;
parameter LENGTH_input_7 = 1;
parameter LENGTH_input_8 = 1;
parameter LENGTH_input_9 = 1;
parameter LENGTH_input_10 = 1;
parameter LENGTH_input_11 = 1;
parameter LENGTH_input_12 = 1;
parameter LENGTH_input_13 = 1;
parameter LENGTH_input_14 = 1;
parameter LENGTH_input_15 = 1;
parameter LENGTH_output_0 = 1;
parameter LENGTH_output_1 = 1;
parameter LENGTH_output_2 = 1;
parameter LENGTH_output_3 = 1;
parameter LENGTH_output_4 = 1;
parameter LENGTH_output_5 = 1;
parameter LENGTH_output_6 = 1;
parameter LENGTH_output_7 = 1;
parameter LENGTH_output_8 = 1;
parameter LENGTH_output_9 = 1;
parameter LENGTH_output_10 = 1;
parameter LENGTH_output_11 = 1;
parameter LENGTH_output_12 = 1;
parameter LENGTH_output_13 = 1;
parameter LENGTH_output_14 = 1;
parameter LENGTH_output_15 = 1;
parameter LENGTH_key_0 = 1;
parameter LENGTH_key_1 = 1;
parameter LENGTH_key_2 = 1;
parameter LENGTH_key_3 = 1;
parameter LENGTH_key_4 = 1;
parameter LENGTH_key_5 = 1;
parameter LENGTH_key_6 = 1;
parameter LENGTH_key_7 = 1;
parameter LENGTH_key_8 = 1;
parameter LENGTH_key_9 = 1;
parameter LENGTH_key_10 = 1;
parameter LENGTH_key_11 = 1;
parameter LENGTH_key_12 = 1;
parameter LENGTH_key_13 = 1;
parameter LENGTH_key_14 = 1;
parameter LENGTH_key_15 = 1;

task read_token;
    input integer fp;
    output reg [151 : 0] token;
    integer ret;
    begin
        token = "";
        ret = 0;
        ret = $fscanf(fp,"%s",token);
    end
endtask

task post_check;
    input integer fp1;
    input integer fp2;
    reg [151 : 0] token1;
    reg [151 : 0] token2;
    reg [151 : 0] golden;
    reg [151 : 0] result;
    integer ret;
    begin
        read_token(fp1, token1);
        read_token(fp2, token2);
        if (token1 != "[[[runtime]]]" || token2 != "[[[runtime]]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
            $finish;
        end
        read_token(fp1, token1);
        read_token(fp2, token2);
        while (token1 != "[[[/runtime]]]" && token2 != "[[[/runtime]]]") begin
            if (token1 != "[[transaction]]" || token2 != "[[transaction]]") begin
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
            end
            read_token(fp1, token1);  // skip transaction number
            read_token(fp2, token2);  // skip transaction number
              read_token(fp1, token1);
              read_token(fp2, token2);
            while(token1 != "[[/transaction]]" && token2 != "[[/transaction]]") begin
                ret = $sscanf(token1, "0x%x", golden);
                  if (ret != 1) begin
                      $display("Failed to parse token!");
                    $display("ERROR: Simulation using HLS TB failed.");
                      $finish;
                  end
                ret = $sscanf(token2, "0x%x", result);
                  if (ret != 1) begin
                      $display("Failed to parse token!");
                    $display("ERROR: Simulation using HLS TB failed.");
                      $finish;
                  end
                if(golden != result) begin
                      $display("%x (expected) vs. %x (actual) - mismatch", golden, result);
                    $display("ERROR: Simulation using HLS TB failed.");
                      $finish;
                end
                  read_token(fp1, token1);
                  read_token(fp2, token2);
            end
              read_token(fp1, token1);
              read_token(fp2, token2);
        end
    end
endtask

reg AESL_clock;
reg rst;
reg start;
reg ce;
reg tb_continue;
wire AESL_start;
wire AESL_reset;
wire AESL_ce;
wire AESL_ready;
wire AESL_idle;
wire AESL_continue;
wire AESL_done;
reg AESL_done_delay = 0;
reg AESL_done_delay2 = 0;
reg AESL_ready_delay = 0;
wire ready;
wire ready_wire;
wire ap_start;
wire ap_done;
wire ap_idle;
wire ap_ready;
wire [7 : 0] input_0;
wire [7 : 0] input_1;
wire [7 : 0] input_2;
wire [7 : 0] input_3;
wire [7 : 0] input_4;
wire [7 : 0] input_5;
wire [7 : 0] input_6;
wire [7 : 0] input_7;
wire [7 : 0] input_8;
wire [7 : 0] input_9;
wire [7 : 0] input_10;
wire [7 : 0] input_11;
wire [7 : 0] input_12;
wire [7 : 0] input_13;
wire [7 : 0] input_14;
wire [7 : 0] input_15;
wire [7 : 0] output_0;
wire  output_0_ap_vld;
wire [7 : 0] output_1;
wire  output_1_ap_vld;
wire [7 : 0] output_2;
wire  output_2_ap_vld;
wire [7 : 0] output_3;
wire  output_3_ap_vld;
wire [7 : 0] output_4;
wire  output_4_ap_vld;
wire [7 : 0] output_5;
wire  output_5_ap_vld;
wire [7 : 0] output_6;
wire  output_6_ap_vld;
wire [7 : 0] output_7;
wire  output_7_ap_vld;
wire [7 : 0] output_8;
wire  output_8_ap_vld;
wire [7 : 0] output_9;
wire  output_9_ap_vld;
wire [7 : 0] output_10;
wire  output_10_ap_vld;
wire [7 : 0] output_11;
wire  output_11_ap_vld;
wire [7 : 0] output_12;
wire  output_12_ap_vld;
wire [7 : 0] output_13;
wire  output_13_ap_vld;
wire [7 : 0] output_14;
wire  output_14_ap_vld;
wire [7 : 0] output_15;
wire  output_15_ap_vld;
wire [7 : 0] key_0;
wire [7 : 0] key_1;
wire [7 : 0] key_2;
wire [7 : 0] key_3;
wire [7 : 0] key_4;
wire [7 : 0] key_5;
wire [7 : 0] key_6;
wire [7 : 0] key_7;
wire [7 : 0] key_8;
wire [7 : 0] key_9;
wire [7 : 0] key_10;
wire [7 : 0] key_11;
wire [7 : 0] key_12;
wire [7 : 0] key_13;
wire [7 : 0] key_14;
wire [7 : 0] key_15;
integer done_cnt = 0;
integer AESL_ready_cnt = 0;
integer ready_cnt = 0;
reg ready_initial;
reg ready_initial_n;
reg ready_last_n;
reg ready_delay_last_n;
reg done_delay_last_n;
reg interface_done = 0;

wire ap_clk;
wire ap_rst;
wire ap_rst_n;

`AUTOTB_DUT `AUTOTB_DUT_INST(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_done(ap_done),
    .ap_idle(ap_idle),
    .ap_ready(ap_ready),
    .input_0(input_0),
    .input_1(input_1),
    .input_2(input_2),
    .input_3(input_3),
    .input_4(input_4),
    .input_5(input_5),
    .input_6(input_6),
    .input_7(input_7),
    .input_8(input_8),
    .input_9(input_9),
    .input_10(input_10),
    .input_11(input_11),
    .input_12(input_12),
    .input_13(input_13),
    .input_14(input_14),
    .input_15(input_15),
    .output_0(output_0),
    .output_0_ap_vld(output_0_ap_vld),
    .output_1(output_1),
    .output_1_ap_vld(output_1_ap_vld),
    .output_2(output_2),
    .output_2_ap_vld(output_2_ap_vld),
    .output_3(output_3),
    .output_3_ap_vld(output_3_ap_vld),
    .output_4(output_4),
    .output_4_ap_vld(output_4_ap_vld),
    .output_5(output_5),
    .output_5_ap_vld(output_5_ap_vld),
    .output_6(output_6),
    .output_6_ap_vld(output_6_ap_vld),
    .output_7(output_7),
    .output_7_ap_vld(output_7_ap_vld),
    .output_8(output_8),
    .output_8_ap_vld(output_8_ap_vld),
    .output_9(output_9),
    .output_9_ap_vld(output_9_ap_vld),
    .output_10(output_10),
    .output_10_ap_vld(output_10_ap_vld),
    .output_11(output_11),
    .output_11_ap_vld(output_11_ap_vld),
    .output_12(output_12),
    .output_12_ap_vld(output_12_ap_vld),
    .output_13(output_13),
    .output_13_ap_vld(output_13_ap_vld),
    .output_14(output_14),
    .output_14_ap_vld(output_14_ap_vld),
    .output_15(output_15),
    .output_15_ap_vld(output_15_ap_vld),
    .key_0(key_0),
    .key_1(key_1),
    .key_2(key_2),
    .key_3(key_3),
    .key_4(key_4),
    .key_5(key_5),
    .key_6(key_6),
    .key_7(key_7),
    .key_8(key_8),
    .key_9(key_9),
    .key_10(key_10),
    .key_11(key_11),
    .key_12(key_12),
    .key_13(key_13),
    .key_14(key_14),
    .key_15(key_15));

// Assignment for control signal
assign ap_clk = AESL_clock;
assign ap_rst = AESL_reset;
assign ap_rst_n = ~AESL_reset;
assign AESL_reset = rst;
assign ap_start = AESL_start;
assign AESL_start = start;
assign AESL_done = ap_done;
assign AESL_idle = ap_idle;
assign AESL_ready = ap_ready;
assign AESL_ce = ce;
assign AESL_continue = tb_continue;
    always @(posedge AESL_clock) begin
        if (AESL_reset) begin
        end else begin
            if (AESL_done !== 1 && AESL_done !== 0) begin
                $display("ERROR: Control signal AESL_done is invalid!");
                $finish;
            end
        end
    end
    always @(posedge AESL_clock) begin
        if (AESL_reset) begin
        end else begin
            if (AESL_ready !== 1 && AESL_ready !== 0) begin
                $display("ERROR: Control signal AESL_ready is invalid!");
                $finish;
            end
        end
    end
// The signal of port input_0
reg [7: 0] AESL_REG_input_0 = 0;
assign input_0 = AESL_REG_input_0;
initial begin : read_file_process_input_0
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [151  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_input_0,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_input_0);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_input_0);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port input_1
reg [7: 0] AESL_REG_input_1 = 0;
assign input_1 = AESL_REG_input_1;
initial begin : read_file_process_input_1
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [151  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_input_1,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_input_1);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_input_1);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port input_2
reg [7: 0] AESL_REG_input_2 = 0;
assign input_2 = AESL_REG_input_2;
initial begin : read_file_process_input_2
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [151  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_input_2,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_input_2);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_input_2);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port input_3
reg [7: 0] AESL_REG_input_3 = 0;
assign input_3 = AESL_REG_input_3;
initial begin : read_file_process_input_3
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [151  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_input_3,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_input_3);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_input_3);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port input_4
reg [7: 0] AESL_REG_input_4 = 0;
assign input_4 = AESL_REG_input_4;
initial begin : read_file_process_input_4
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [151  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_input_4,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_input_4);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_input_4);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port input_5
reg [7: 0] AESL_REG_input_5 = 0;
assign input_5 = AESL_REG_input_5;
initial begin : read_file_process_input_5
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [151  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_input_5,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_input_5);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_input_5);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port input_6
reg [7: 0] AESL_REG_input_6 = 0;
assign input_6 = AESL_REG_input_6;
initial begin : read_file_process_input_6
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [151  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_input_6,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_input_6);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_input_6);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port input_7
reg [7: 0] AESL_REG_input_7 = 0;
assign input_7 = AESL_REG_input_7;
initial begin : read_file_process_input_7
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [151  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_input_7,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_input_7);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_input_7);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port input_8
reg [7: 0] AESL_REG_input_8 = 0;
assign input_8 = AESL_REG_input_8;
initial begin : read_file_process_input_8
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [151  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_input_8,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_input_8);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_input_8);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port input_9
reg [7: 0] AESL_REG_input_9 = 0;
assign input_9 = AESL_REG_input_9;
initial begin : read_file_process_input_9
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [151  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_input_9,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_input_9);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_input_9);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port input_10
reg [7: 0] AESL_REG_input_10 = 0;
assign input_10 = AESL_REG_input_10;
initial begin : read_file_process_input_10
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [151  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_input_10,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_input_10);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_input_10);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port input_11
reg [7: 0] AESL_REG_input_11 = 0;
assign input_11 = AESL_REG_input_11;
initial begin : read_file_process_input_11
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [151  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_input_11,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_input_11);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_input_11);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port input_12
reg [7: 0] AESL_REG_input_12 = 0;
assign input_12 = AESL_REG_input_12;
initial begin : read_file_process_input_12
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [151  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_input_12,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_input_12);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_input_12);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port input_13
reg [7: 0] AESL_REG_input_13 = 0;
assign input_13 = AESL_REG_input_13;
initial begin : read_file_process_input_13
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [151  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_input_13,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_input_13);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_input_13);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port input_14
reg [7: 0] AESL_REG_input_14 = 0;
assign input_14 = AESL_REG_input_14;
initial begin : read_file_process_input_14
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [151  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_input_14,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_input_14);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_input_14);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port input_15
reg [7: 0] AESL_REG_input_15 = 0;
assign input_15 = AESL_REG_input_15;
initial begin : read_file_process_input_15
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [151  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_input_15,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_input_15);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_input_15);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


reg AESL_REG_output_0_ap_vld = 0;
// The signal of port output_0
reg [7: 0] AESL_REG_output_0 = 0;
always @(posedge AESL_clock)
begin
    if(AESL_reset)
        AESL_REG_output_0 = 0; 
    else if(output_0_ap_vld) begin
        AESL_REG_output_0 <= output_0;
        AESL_REG_output_0_ap_vld <= 1;
    end
end 

initial begin : write_file_process_output_0
    integer fp;
    integer fp_size;
    integer err;
    integer ret;
    integer i;
    integer hls_stream_size;
    integer proc_rand;
    integer output_0_count;
    reg [151:0] token;
    integer transaction_idx;
    reg [8 * 5:1] str;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVOUT_output_0_out_wrapc,"w");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_output_0_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    transaction_idx = 0;
    while (transaction_idx != AUTOTB_TRANSACTION_NUM) begin
        @(posedge AESL_clock);
          while(AESL_done !== 1) begin
              @(posedge AESL_clock);
          end
        # 0.4;
        $fdisplay(fp,"[[transaction]] %d", transaction_idx);
        if(AESL_REG_output_0_ap_vld)  begin
          $fdisplay(fp,"0x%x", AESL_REG_output_0);
        AESL_REG_output_0_ap_vld = 0;
        end
    transaction_idx = transaction_idx + 1;
      $fdisplay(fp,"[[/transaction]]");
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
end


reg AESL_REG_output_1_ap_vld = 0;
// The signal of port output_1
reg [7: 0] AESL_REG_output_1 = 0;
always @(posedge AESL_clock)
begin
    if(AESL_reset)
        AESL_REG_output_1 = 0; 
    else if(output_1_ap_vld) begin
        AESL_REG_output_1 <= output_1;
        AESL_REG_output_1_ap_vld <= 1;
    end
end 

initial begin : write_file_process_output_1
    integer fp;
    integer fp_size;
    integer err;
    integer ret;
    integer i;
    integer hls_stream_size;
    integer proc_rand;
    integer output_1_count;
    reg [151:0] token;
    integer transaction_idx;
    reg [8 * 5:1] str;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVOUT_output_1_out_wrapc,"w");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_output_1_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    transaction_idx = 0;
    while (transaction_idx != AUTOTB_TRANSACTION_NUM) begin
        @(posedge AESL_clock);
          while(AESL_done !== 1) begin
              @(posedge AESL_clock);
          end
        # 0.4;
        $fdisplay(fp,"[[transaction]] %d", transaction_idx);
        if(AESL_REG_output_1_ap_vld)  begin
          $fdisplay(fp,"0x%x", AESL_REG_output_1);
        AESL_REG_output_1_ap_vld = 0;
        end
    transaction_idx = transaction_idx + 1;
      $fdisplay(fp,"[[/transaction]]");
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
end


reg AESL_REG_output_2_ap_vld = 0;
// The signal of port output_2
reg [7: 0] AESL_REG_output_2 = 0;
always @(posedge AESL_clock)
begin
    if(AESL_reset)
        AESL_REG_output_2 = 0; 
    else if(output_2_ap_vld) begin
        AESL_REG_output_2 <= output_2;
        AESL_REG_output_2_ap_vld <= 1;
    end
end 

initial begin : write_file_process_output_2
    integer fp;
    integer fp_size;
    integer err;
    integer ret;
    integer i;
    integer hls_stream_size;
    integer proc_rand;
    integer output_2_count;
    reg [151:0] token;
    integer transaction_idx;
    reg [8 * 5:1] str;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVOUT_output_2_out_wrapc,"w");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_output_2_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    transaction_idx = 0;
    while (transaction_idx != AUTOTB_TRANSACTION_NUM) begin
        @(posedge AESL_clock);
          while(AESL_done !== 1) begin
              @(posedge AESL_clock);
          end
        # 0.4;
        $fdisplay(fp,"[[transaction]] %d", transaction_idx);
        if(AESL_REG_output_2_ap_vld)  begin
          $fdisplay(fp,"0x%x", AESL_REG_output_2);
        AESL_REG_output_2_ap_vld = 0;
        end
    transaction_idx = transaction_idx + 1;
      $fdisplay(fp,"[[/transaction]]");
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
end


reg AESL_REG_output_3_ap_vld = 0;
// The signal of port output_3
reg [7: 0] AESL_REG_output_3 = 0;
always @(posedge AESL_clock)
begin
    if(AESL_reset)
        AESL_REG_output_3 = 0; 
    else if(output_3_ap_vld) begin
        AESL_REG_output_3 <= output_3;
        AESL_REG_output_3_ap_vld <= 1;
    end
end 

initial begin : write_file_process_output_3
    integer fp;
    integer fp_size;
    integer err;
    integer ret;
    integer i;
    integer hls_stream_size;
    integer proc_rand;
    integer output_3_count;
    reg [151:0] token;
    integer transaction_idx;
    reg [8 * 5:1] str;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVOUT_output_3_out_wrapc,"w");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_output_3_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    transaction_idx = 0;
    while (transaction_idx != AUTOTB_TRANSACTION_NUM) begin
        @(posedge AESL_clock);
          while(AESL_done !== 1) begin
              @(posedge AESL_clock);
          end
        # 0.4;
        $fdisplay(fp,"[[transaction]] %d", transaction_idx);
        if(AESL_REG_output_3_ap_vld)  begin
          $fdisplay(fp,"0x%x", AESL_REG_output_3);
        AESL_REG_output_3_ap_vld = 0;
        end
    transaction_idx = transaction_idx + 1;
      $fdisplay(fp,"[[/transaction]]");
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
end


reg AESL_REG_output_4_ap_vld = 0;
// The signal of port output_4
reg [7: 0] AESL_REG_output_4 = 0;
always @(posedge AESL_clock)
begin
    if(AESL_reset)
        AESL_REG_output_4 = 0; 
    else if(output_4_ap_vld) begin
        AESL_REG_output_4 <= output_4;
        AESL_REG_output_4_ap_vld <= 1;
    end
end 

initial begin : write_file_process_output_4
    integer fp;
    integer fp_size;
    integer err;
    integer ret;
    integer i;
    integer hls_stream_size;
    integer proc_rand;
    integer output_4_count;
    reg [151:0] token;
    integer transaction_idx;
    reg [8 * 5:1] str;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVOUT_output_4_out_wrapc,"w");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_output_4_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    transaction_idx = 0;
    while (transaction_idx != AUTOTB_TRANSACTION_NUM) begin
        @(posedge AESL_clock);
          while(AESL_done !== 1) begin
              @(posedge AESL_clock);
          end
        # 0.4;
        $fdisplay(fp,"[[transaction]] %d", transaction_idx);
        if(AESL_REG_output_4_ap_vld)  begin
          $fdisplay(fp,"0x%x", AESL_REG_output_4);
        AESL_REG_output_4_ap_vld = 0;
        end
    transaction_idx = transaction_idx + 1;
      $fdisplay(fp,"[[/transaction]]");
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
end


reg AESL_REG_output_5_ap_vld = 0;
// The signal of port output_5
reg [7: 0] AESL_REG_output_5 = 0;
always @(posedge AESL_clock)
begin
    if(AESL_reset)
        AESL_REG_output_5 = 0; 
    else if(output_5_ap_vld) begin
        AESL_REG_output_5 <= output_5;
        AESL_REG_output_5_ap_vld <= 1;
    end
end 

initial begin : write_file_process_output_5
    integer fp;
    integer fp_size;
    integer err;
    integer ret;
    integer i;
    integer hls_stream_size;
    integer proc_rand;
    integer output_5_count;
    reg [151:0] token;
    integer transaction_idx;
    reg [8 * 5:1] str;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVOUT_output_5_out_wrapc,"w");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_output_5_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    transaction_idx = 0;
    while (transaction_idx != AUTOTB_TRANSACTION_NUM) begin
        @(posedge AESL_clock);
          while(AESL_done !== 1) begin
              @(posedge AESL_clock);
          end
        # 0.4;
        $fdisplay(fp,"[[transaction]] %d", transaction_idx);
        if(AESL_REG_output_5_ap_vld)  begin
          $fdisplay(fp,"0x%x", AESL_REG_output_5);
        AESL_REG_output_5_ap_vld = 0;
        end
    transaction_idx = transaction_idx + 1;
      $fdisplay(fp,"[[/transaction]]");
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
end


reg AESL_REG_output_6_ap_vld = 0;
// The signal of port output_6
reg [7: 0] AESL_REG_output_6 = 0;
always @(posedge AESL_clock)
begin
    if(AESL_reset)
        AESL_REG_output_6 = 0; 
    else if(output_6_ap_vld) begin
        AESL_REG_output_6 <= output_6;
        AESL_REG_output_6_ap_vld <= 1;
    end
end 

initial begin : write_file_process_output_6
    integer fp;
    integer fp_size;
    integer err;
    integer ret;
    integer i;
    integer hls_stream_size;
    integer proc_rand;
    integer output_6_count;
    reg [151:0] token;
    integer transaction_idx;
    reg [8 * 5:1] str;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVOUT_output_6_out_wrapc,"w");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_output_6_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    transaction_idx = 0;
    while (transaction_idx != AUTOTB_TRANSACTION_NUM) begin
        @(posedge AESL_clock);
          while(AESL_done !== 1) begin
              @(posedge AESL_clock);
          end
        # 0.4;
        $fdisplay(fp,"[[transaction]] %d", transaction_idx);
        if(AESL_REG_output_6_ap_vld)  begin
          $fdisplay(fp,"0x%x", AESL_REG_output_6);
        AESL_REG_output_6_ap_vld = 0;
        end
    transaction_idx = transaction_idx + 1;
      $fdisplay(fp,"[[/transaction]]");
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
end


reg AESL_REG_output_7_ap_vld = 0;
// The signal of port output_7
reg [7: 0] AESL_REG_output_7 = 0;
always @(posedge AESL_clock)
begin
    if(AESL_reset)
        AESL_REG_output_7 = 0; 
    else if(output_7_ap_vld) begin
        AESL_REG_output_7 <= output_7;
        AESL_REG_output_7_ap_vld <= 1;
    end
end 

initial begin : write_file_process_output_7
    integer fp;
    integer fp_size;
    integer err;
    integer ret;
    integer i;
    integer hls_stream_size;
    integer proc_rand;
    integer output_7_count;
    reg [151:0] token;
    integer transaction_idx;
    reg [8 * 5:1] str;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVOUT_output_7_out_wrapc,"w");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_output_7_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    transaction_idx = 0;
    while (transaction_idx != AUTOTB_TRANSACTION_NUM) begin
        @(posedge AESL_clock);
          while(AESL_done !== 1) begin
              @(posedge AESL_clock);
          end
        # 0.4;
        $fdisplay(fp,"[[transaction]] %d", transaction_idx);
        if(AESL_REG_output_7_ap_vld)  begin
          $fdisplay(fp,"0x%x", AESL_REG_output_7);
        AESL_REG_output_7_ap_vld = 0;
        end
    transaction_idx = transaction_idx + 1;
      $fdisplay(fp,"[[/transaction]]");
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
end


reg AESL_REG_output_8_ap_vld = 0;
// The signal of port output_8
reg [7: 0] AESL_REG_output_8 = 0;
always @(posedge AESL_clock)
begin
    if(AESL_reset)
        AESL_REG_output_8 = 0; 
    else if(output_8_ap_vld) begin
        AESL_REG_output_8 <= output_8;
        AESL_REG_output_8_ap_vld <= 1;
    end
end 

initial begin : write_file_process_output_8
    integer fp;
    integer fp_size;
    integer err;
    integer ret;
    integer i;
    integer hls_stream_size;
    integer proc_rand;
    integer output_8_count;
    reg [151:0] token;
    integer transaction_idx;
    reg [8 * 5:1] str;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVOUT_output_8_out_wrapc,"w");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_output_8_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    transaction_idx = 0;
    while (transaction_idx != AUTOTB_TRANSACTION_NUM) begin
        @(posedge AESL_clock);
          while(AESL_done !== 1) begin
              @(posedge AESL_clock);
          end
        # 0.4;
        $fdisplay(fp,"[[transaction]] %d", transaction_idx);
        if(AESL_REG_output_8_ap_vld)  begin
          $fdisplay(fp,"0x%x", AESL_REG_output_8);
        AESL_REG_output_8_ap_vld = 0;
        end
    transaction_idx = transaction_idx + 1;
      $fdisplay(fp,"[[/transaction]]");
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
end


reg AESL_REG_output_9_ap_vld = 0;
// The signal of port output_9
reg [7: 0] AESL_REG_output_9 = 0;
always @(posedge AESL_clock)
begin
    if(AESL_reset)
        AESL_REG_output_9 = 0; 
    else if(output_9_ap_vld) begin
        AESL_REG_output_9 <= output_9;
        AESL_REG_output_9_ap_vld <= 1;
    end
end 

initial begin : write_file_process_output_9
    integer fp;
    integer fp_size;
    integer err;
    integer ret;
    integer i;
    integer hls_stream_size;
    integer proc_rand;
    integer output_9_count;
    reg [151:0] token;
    integer transaction_idx;
    reg [8 * 5:1] str;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVOUT_output_9_out_wrapc,"w");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_output_9_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    transaction_idx = 0;
    while (transaction_idx != AUTOTB_TRANSACTION_NUM) begin
        @(posedge AESL_clock);
          while(AESL_done !== 1) begin
              @(posedge AESL_clock);
          end
        # 0.4;
        $fdisplay(fp,"[[transaction]] %d", transaction_idx);
        if(AESL_REG_output_9_ap_vld)  begin
          $fdisplay(fp,"0x%x", AESL_REG_output_9);
        AESL_REG_output_9_ap_vld = 0;
        end
    transaction_idx = transaction_idx + 1;
      $fdisplay(fp,"[[/transaction]]");
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
end


reg AESL_REG_output_10_ap_vld = 0;
// The signal of port output_10
reg [7: 0] AESL_REG_output_10 = 0;
always @(posedge AESL_clock)
begin
    if(AESL_reset)
        AESL_REG_output_10 = 0; 
    else if(output_10_ap_vld) begin
        AESL_REG_output_10 <= output_10;
        AESL_REG_output_10_ap_vld <= 1;
    end
end 

initial begin : write_file_process_output_10
    integer fp;
    integer fp_size;
    integer err;
    integer ret;
    integer i;
    integer hls_stream_size;
    integer proc_rand;
    integer output_10_count;
    reg [151:0] token;
    integer transaction_idx;
    reg [8 * 5:1] str;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVOUT_output_10_out_wrapc,"w");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_output_10_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    transaction_idx = 0;
    while (transaction_idx != AUTOTB_TRANSACTION_NUM) begin
        @(posedge AESL_clock);
          while(AESL_done !== 1) begin
              @(posedge AESL_clock);
          end
        # 0.4;
        $fdisplay(fp,"[[transaction]] %d", transaction_idx);
        if(AESL_REG_output_10_ap_vld)  begin
          $fdisplay(fp,"0x%x", AESL_REG_output_10);
        AESL_REG_output_10_ap_vld = 0;
        end
    transaction_idx = transaction_idx + 1;
      $fdisplay(fp,"[[/transaction]]");
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
end


reg AESL_REG_output_11_ap_vld = 0;
// The signal of port output_11
reg [7: 0] AESL_REG_output_11 = 0;
always @(posedge AESL_clock)
begin
    if(AESL_reset)
        AESL_REG_output_11 = 0; 
    else if(output_11_ap_vld) begin
        AESL_REG_output_11 <= output_11;
        AESL_REG_output_11_ap_vld <= 1;
    end
end 

initial begin : write_file_process_output_11
    integer fp;
    integer fp_size;
    integer err;
    integer ret;
    integer i;
    integer hls_stream_size;
    integer proc_rand;
    integer output_11_count;
    reg [151:0] token;
    integer transaction_idx;
    reg [8 * 5:1] str;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVOUT_output_11_out_wrapc,"w");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_output_11_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    transaction_idx = 0;
    while (transaction_idx != AUTOTB_TRANSACTION_NUM) begin
        @(posedge AESL_clock);
          while(AESL_done !== 1) begin
              @(posedge AESL_clock);
          end
        # 0.4;
        $fdisplay(fp,"[[transaction]] %d", transaction_idx);
        if(AESL_REG_output_11_ap_vld)  begin
          $fdisplay(fp,"0x%x", AESL_REG_output_11);
        AESL_REG_output_11_ap_vld = 0;
        end
    transaction_idx = transaction_idx + 1;
      $fdisplay(fp,"[[/transaction]]");
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
end


reg AESL_REG_output_12_ap_vld = 0;
// The signal of port output_12
reg [7: 0] AESL_REG_output_12 = 0;
always @(posedge AESL_clock)
begin
    if(AESL_reset)
        AESL_REG_output_12 = 0; 
    else if(output_12_ap_vld) begin
        AESL_REG_output_12 <= output_12;
        AESL_REG_output_12_ap_vld <= 1;
    end
end 

initial begin : write_file_process_output_12
    integer fp;
    integer fp_size;
    integer err;
    integer ret;
    integer i;
    integer hls_stream_size;
    integer proc_rand;
    integer output_12_count;
    reg [151:0] token;
    integer transaction_idx;
    reg [8 * 5:1] str;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVOUT_output_12_out_wrapc,"w");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_output_12_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    transaction_idx = 0;
    while (transaction_idx != AUTOTB_TRANSACTION_NUM) begin
        @(posedge AESL_clock);
          while(AESL_done !== 1) begin
              @(posedge AESL_clock);
          end
        # 0.4;
        $fdisplay(fp,"[[transaction]] %d", transaction_idx);
        if(AESL_REG_output_12_ap_vld)  begin
          $fdisplay(fp,"0x%x", AESL_REG_output_12);
        AESL_REG_output_12_ap_vld = 0;
        end
    transaction_idx = transaction_idx + 1;
      $fdisplay(fp,"[[/transaction]]");
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
end


reg AESL_REG_output_13_ap_vld = 0;
// The signal of port output_13
reg [7: 0] AESL_REG_output_13 = 0;
always @(posedge AESL_clock)
begin
    if(AESL_reset)
        AESL_REG_output_13 = 0; 
    else if(output_13_ap_vld) begin
        AESL_REG_output_13 <= output_13;
        AESL_REG_output_13_ap_vld <= 1;
    end
end 

initial begin : write_file_process_output_13
    integer fp;
    integer fp_size;
    integer err;
    integer ret;
    integer i;
    integer hls_stream_size;
    integer proc_rand;
    integer output_13_count;
    reg [151:0] token;
    integer transaction_idx;
    reg [8 * 5:1] str;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVOUT_output_13_out_wrapc,"w");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_output_13_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    transaction_idx = 0;
    while (transaction_idx != AUTOTB_TRANSACTION_NUM) begin
        @(posedge AESL_clock);
          while(AESL_done !== 1) begin
              @(posedge AESL_clock);
          end
        # 0.4;
        $fdisplay(fp,"[[transaction]] %d", transaction_idx);
        if(AESL_REG_output_13_ap_vld)  begin
          $fdisplay(fp,"0x%x", AESL_REG_output_13);
        AESL_REG_output_13_ap_vld = 0;
        end
    transaction_idx = transaction_idx + 1;
      $fdisplay(fp,"[[/transaction]]");
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
end


reg AESL_REG_output_14_ap_vld = 0;
// The signal of port output_14
reg [7: 0] AESL_REG_output_14 = 0;
always @(posedge AESL_clock)
begin
    if(AESL_reset)
        AESL_REG_output_14 = 0; 
    else if(output_14_ap_vld) begin
        AESL_REG_output_14 <= output_14;
        AESL_REG_output_14_ap_vld <= 1;
    end
end 

initial begin : write_file_process_output_14
    integer fp;
    integer fp_size;
    integer err;
    integer ret;
    integer i;
    integer hls_stream_size;
    integer proc_rand;
    integer output_14_count;
    reg [151:0] token;
    integer transaction_idx;
    reg [8 * 5:1] str;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVOUT_output_14_out_wrapc,"w");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_output_14_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    transaction_idx = 0;
    while (transaction_idx != AUTOTB_TRANSACTION_NUM) begin
        @(posedge AESL_clock);
          while(AESL_done !== 1) begin
              @(posedge AESL_clock);
          end
        # 0.4;
        $fdisplay(fp,"[[transaction]] %d", transaction_idx);
        if(AESL_REG_output_14_ap_vld)  begin
          $fdisplay(fp,"0x%x", AESL_REG_output_14);
        AESL_REG_output_14_ap_vld = 0;
        end
    transaction_idx = transaction_idx + 1;
      $fdisplay(fp,"[[/transaction]]");
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
end


reg AESL_REG_output_15_ap_vld = 0;
// The signal of port output_15
reg [7: 0] AESL_REG_output_15 = 0;
always @(posedge AESL_clock)
begin
    if(AESL_reset)
        AESL_REG_output_15 = 0; 
    else if(output_15_ap_vld) begin
        AESL_REG_output_15 <= output_15;
        AESL_REG_output_15_ap_vld <= 1;
    end
end 

initial begin : write_file_process_output_15
    integer fp;
    integer fp_size;
    integer err;
    integer ret;
    integer i;
    integer hls_stream_size;
    integer proc_rand;
    integer output_15_count;
    reg [151:0] token;
    integer transaction_idx;
    reg [8 * 5:1] str;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVOUT_output_15_out_wrapc,"w");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_output_15_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    transaction_idx = 0;
    while (transaction_idx != AUTOTB_TRANSACTION_NUM) begin
        @(posedge AESL_clock);
          while(AESL_done !== 1) begin
              @(posedge AESL_clock);
          end
        # 0.4;
        $fdisplay(fp,"[[transaction]] %d", transaction_idx);
        if(AESL_REG_output_15_ap_vld)  begin
          $fdisplay(fp,"0x%x", AESL_REG_output_15);
        AESL_REG_output_15_ap_vld = 0;
        end
    transaction_idx = transaction_idx + 1;
      $fdisplay(fp,"[[/transaction]]");
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
end


// The signal of port key_0
reg [7: 0] AESL_REG_key_0 = 0;
assign key_0 = AESL_REG_key_0;
initial begin : read_file_process_key_0
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [151  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_key_0,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_key_0);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_key_0);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port key_1
reg [7: 0] AESL_REG_key_1 = 0;
assign key_1 = AESL_REG_key_1;
initial begin : read_file_process_key_1
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [151  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_key_1,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_key_1);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_key_1);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port key_2
reg [7: 0] AESL_REG_key_2 = 0;
assign key_2 = AESL_REG_key_2;
initial begin : read_file_process_key_2
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [151  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_key_2,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_key_2);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_key_2);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port key_3
reg [7: 0] AESL_REG_key_3 = 0;
assign key_3 = AESL_REG_key_3;
initial begin : read_file_process_key_3
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [151  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_key_3,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_key_3);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_key_3);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port key_4
reg [7: 0] AESL_REG_key_4 = 0;
assign key_4 = AESL_REG_key_4;
initial begin : read_file_process_key_4
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [151  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_key_4,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_key_4);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_key_4);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port key_5
reg [7: 0] AESL_REG_key_5 = 0;
assign key_5 = AESL_REG_key_5;
initial begin : read_file_process_key_5
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [151  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_key_5,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_key_5);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_key_5);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port key_6
reg [7: 0] AESL_REG_key_6 = 0;
assign key_6 = AESL_REG_key_6;
initial begin : read_file_process_key_6
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [151  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_key_6,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_key_6);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_key_6);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port key_7
reg [7: 0] AESL_REG_key_7 = 0;
assign key_7 = AESL_REG_key_7;
initial begin : read_file_process_key_7
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [151  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_key_7,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_key_7);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_key_7);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port key_8
reg [7: 0] AESL_REG_key_8 = 0;
assign key_8 = AESL_REG_key_8;
initial begin : read_file_process_key_8
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [151  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_key_8,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_key_8);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_key_8);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port key_9
reg [7: 0] AESL_REG_key_9 = 0;
assign key_9 = AESL_REG_key_9;
initial begin : read_file_process_key_9
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [151  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_key_9,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_key_9);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_key_9);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port key_10
reg [7: 0] AESL_REG_key_10 = 0;
assign key_10 = AESL_REG_key_10;
initial begin : read_file_process_key_10
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [151  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_key_10,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_key_10);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_key_10);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port key_11
reg [7: 0] AESL_REG_key_11 = 0;
assign key_11 = AESL_REG_key_11;
initial begin : read_file_process_key_11
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [151  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_key_11,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_key_11);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_key_11);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port key_12
reg [7: 0] AESL_REG_key_12 = 0;
assign key_12 = AESL_REG_key_12;
initial begin : read_file_process_key_12
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [151  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_key_12,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_key_12);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_key_12);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port key_13
reg [7: 0] AESL_REG_key_13 = 0;
assign key_13 = AESL_REG_key_13;
initial begin : read_file_process_key_13
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [151  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_key_13,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_key_13);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_key_13);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port key_14
reg [7: 0] AESL_REG_key_14 = 0;
assign key_14 = AESL_REG_key_14;
initial begin : read_file_process_key_14
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [151  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_key_14,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_key_14);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_key_14);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port key_15
reg [7: 0] AESL_REG_key_15 = 0;
assign key_15 = AESL_REG_key_15;
initial begin : read_file_process_key_15
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [151  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_key_15,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_key_15);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_key_15);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


initial begin : generate_AESL_ready_cnt_proc
    AESL_ready_cnt = 0;
    wait(AESL_reset === 0);
    while(AESL_ready_cnt != AUTOTB_TRANSACTION_NUM) begin
        while(AESL_ready !== 1) begin
            @(posedge AESL_clock);
            # 0.4;
        end
        @(negedge AESL_clock);
        AESL_ready_cnt = AESL_ready_cnt + 1;
        @(posedge AESL_clock);
        # 0.4;
    end
end

    event next_trigger_ready_cnt;
    
    initial begin : gen_ready_cnt
        ready_cnt = 0;
        wait (AESL_reset === 0);
        forever begin
            @ (posedge AESL_clock);
            if (ready == 1) begin
                if (ready_cnt < AUTOTB_TRANSACTION_NUM) begin
                    ready_cnt = ready_cnt + 1;
                end
            end
            -> next_trigger_ready_cnt;
        end
    end
    
    wire all_finish = (done_cnt == AUTOTB_TRANSACTION_NUM);
    
    // done_cnt
    always @ (posedge AESL_clock) begin
        if (AESL_reset) begin
            done_cnt <= 0;
        end else begin
            if (AESL_done == 1) begin
                if (done_cnt < AUTOTB_TRANSACTION_NUM) begin
                    done_cnt <= done_cnt + 1;
                end
            end
        end
    end
    
    initial begin : finish_simulation
        integer fp1;
        integer fp2;
        wait (all_finish == 1);
        // last transaction is saved at negedge right after last done
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
    fp1 = $fopen("./rtl.decrypt_dut.autotvout_output_0.dat", "r");
    fp2 = $fopen("./impl_rtl.decrypt_dut.autotvout_output_0.dat", "r");
    if(fp1 == 0)        // Failed to open file
        $display("Failed to open file \"./rtl.decrypt_dut.autotvout_output_0.dat\"!");
    else if(fp2 == 0)
        $display("Failed to open file \"./impl_rtl.decrypt_dut.autotvout_output_0.dat\"!");
    else begin
        $display("Comparing rtl.decrypt_dut.autotvout_output_0.dat with impl_rtl.decrypt_dut.autotvout_output_0.dat");
        post_check(fp1, fp2);
    end
    $fclose(fp1);
    $fclose(fp2);
    fp1 = $fopen("./rtl.decrypt_dut.autotvout_output_1.dat", "r");
    fp2 = $fopen("./impl_rtl.decrypt_dut.autotvout_output_1.dat", "r");
    if(fp1 == 0)        // Failed to open file
        $display("Failed to open file \"./rtl.decrypt_dut.autotvout_output_1.dat\"!");
    else if(fp2 == 0)
        $display("Failed to open file \"./impl_rtl.decrypt_dut.autotvout_output_1.dat\"!");
    else begin
        $display("Comparing rtl.decrypt_dut.autotvout_output_1.dat with impl_rtl.decrypt_dut.autotvout_output_1.dat");
        post_check(fp1, fp2);
    end
    $fclose(fp1);
    $fclose(fp2);
    fp1 = $fopen("./rtl.decrypt_dut.autotvout_output_2.dat", "r");
    fp2 = $fopen("./impl_rtl.decrypt_dut.autotvout_output_2.dat", "r");
    if(fp1 == 0)        // Failed to open file
        $display("Failed to open file \"./rtl.decrypt_dut.autotvout_output_2.dat\"!");
    else if(fp2 == 0)
        $display("Failed to open file \"./impl_rtl.decrypt_dut.autotvout_output_2.dat\"!");
    else begin
        $display("Comparing rtl.decrypt_dut.autotvout_output_2.dat with impl_rtl.decrypt_dut.autotvout_output_2.dat");
        post_check(fp1, fp2);
    end
    $fclose(fp1);
    $fclose(fp2);
    fp1 = $fopen("./rtl.decrypt_dut.autotvout_output_3.dat", "r");
    fp2 = $fopen("./impl_rtl.decrypt_dut.autotvout_output_3.dat", "r");
    if(fp1 == 0)        // Failed to open file
        $display("Failed to open file \"./rtl.decrypt_dut.autotvout_output_3.dat\"!");
    else if(fp2 == 0)
        $display("Failed to open file \"./impl_rtl.decrypt_dut.autotvout_output_3.dat\"!");
    else begin
        $display("Comparing rtl.decrypt_dut.autotvout_output_3.dat with impl_rtl.decrypt_dut.autotvout_output_3.dat");
        post_check(fp1, fp2);
    end
    $fclose(fp1);
    $fclose(fp2);
    fp1 = $fopen("./rtl.decrypt_dut.autotvout_output_4.dat", "r");
    fp2 = $fopen("./impl_rtl.decrypt_dut.autotvout_output_4.dat", "r");
    if(fp1 == 0)        // Failed to open file
        $display("Failed to open file \"./rtl.decrypt_dut.autotvout_output_4.dat\"!");
    else if(fp2 == 0)
        $display("Failed to open file \"./impl_rtl.decrypt_dut.autotvout_output_4.dat\"!");
    else begin
        $display("Comparing rtl.decrypt_dut.autotvout_output_4.dat with impl_rtl.decrypt_dut.autotvout_output_4.dat");
        post_check(fp1, fp2);
    end
    $fclose(fp1);
    $fclose(fp2);
    fp1 = $fopen("./rtl.decrypt_dut.autotvout_output_5.dat", "r");
    fp2 = $fopen("./impl_rtl.decrypt_dut.autotvout_output_5.dat", "r");
    if(fp1 == 0)        // Failed to open file
        $display("Failed to open file \"./rtl.decrypt_dut.autotvout_output_5.dat\"!");
    else if(fp2 == 0)
        $display("Failed to open file \"./impl_rtl.decrypt_dut.autotvout_output_5.dat\"!");
    else begin
        $display("Comparing rtl.decrypt_dut.autotvout_output_5.dat with impl_rtl.decrypt_dut.autotvout_output_5.dat");
        post_check(fp1, fp2);
    end
    $fclose(fp1);
    $fclose(fp2);
    fp1 = $fopen("./rtl.decrypt_dut.autotvout_output_6.dat", "r");
    fp2 = $fopen("./impl_rtl.decrypt_dut.autotvout_output_6.dat", "r");
    if(fp1 == 0)        // Failed to open file
        $display("Failed to open file \"./rtl.decrypt_dut.autotvout_output_6.dat\"!");
    else if(fp2 == 0)
        $display("Failed to open file \"./impl_rtl.decrypt_dut.autotvout_output_6.dat\"!");
    else begin
        $display("Comparing rtl.decrypt_dut.autotvout_output_6.dat with impl_rtl.decrypt_dut.autotvout_output_6.dat");
        post_check(fp1, fp2);
    end
    $fclose(fp1);
    $fclose(fp2);
    fp1 = $fopen("./rtl.decrypt_dut.autotvout_output_7.dat", "r");
    fp2 = $fopen("./impl_rtl.decrypt_dut.autotvout_output_7.dat", "r");
    if(fp1 == 0)        // Failed to open file
        $display("Failed to open file \"./rtl.decrypt_dut.autotvout_output_7.dat\"!");
    else if(fp2 == 0)
        $display("Failed to open file \"./impl_rtl.decrypt_dut.autotvout_output_7.dat\"!");
    else begin
        $display("Comparing rtl.decrypt_dut.autotvout_output_7.dat with impl_rtl.decrypt_dut.autotvout_output_7.dat");
        post_check(fp1, fp2);
    end
    $fclose(fp1);
    $fclose(fp2);
    fp1 = $fopen("./rtl.decrypt_dut.autotvout_output_8.dat", "r");
    fp2 = $fopen("./impl_rtl.decrypt_dut.autotvout_output_8.dat", "r");
    if(fp1 == 0)        // Failed to open file
        $display("Failed to open file \"./rtl.decrypt_dut.autotvout_output_8.dat\"!");
    else if(fp2 == 0)
        $display("Failed to open file \"./impl_rtl.decrypt_dut.autotvout_output_8.dat\"!");
    else begin
        $display("Comparing rtl.decrypt_dut.autotvout_output_8.dat with impl_rtl.decrypt_dut.autotvout_output_8.dat");
        post_check(fp1, fp2);
    end
    $fclose(fp1);
    $fclose(fp2);
    fp1 = $fopen("./rtl.decrypt_dut.autotvout_output_9.dat", "r");
    fp2 = $fopen("./impl_rtl.decrypt_dut.autotvout_output_9.dat", "r");
    if(fp1 == 0)        // Failed to open file
        $display("Failed to open file \"./rtl.decrypt_dut.autotvout_output_9.dat\"!");
    else if(fp2 == 0)
        $display("Failed to open file \"./impl_rtl.decrypt_dut.autotvout_output_9.dat\"!");
    else begin
        $display("Comparing rtl.decrypt_dut.autotvout_output_9.dat with impl_rtl.decrypt_dut.autotvout_output_9.dat");
        post_check(fp1, fp2);
    end
    $fclose(fp1);
    $fclose(fp2);
    fp1 = $fopen("./rtl.decrypt_dut.autotvout_output_10.dat", "r");
    fp2 = $fopen("./impl_rtl.decrypt_dut.autotvout_output_10.dat", "r");
    if(fp1 == 0)        // Failed to open file
        $display("Failed to open file \"./rtl.decrypt_dut.autotvout_output_10.dat\"!");
    else if(fp2 == 0)
        $display("Failed to open file \"./impl_rtl.decrypt_dut.autotvout_output_10.dat\"!");
    else begin
        $display("Comparing rtl.decrypt_dut.autotvout_output_10.dat with impl_rtl.decrypt_dut.autotvout_output_10.dat");
        post_check(fp1, fp2);
    end
    $fclose(fp1);
    $fclose(fp2);
    fp1 = $fopen("./rtl.decrypt_dut.autotvout_output_11.dat", "r");
    fp2 = $fopen("./impl_rtl.decrypt_dut.autotvout_output_11.dat", "r");
    if(fp1 == 0)        // Failed to open file
        $display("Failed to open file \"./rtl.decrypt_dut.autotvout_output_11.dat\"!");
    else if(fp2 == 0)
        $display("Failed to open file \"./impl_rtl.decrypt_dut.autotvout_output_11.dat\"!");
    else begin
        $display("Comparing rtl.decrypt_dut.autotvout_output_11.dat with impl_rtl.decrypt_dut.autotvout_output_11.dat");
        post_check(fp1, fp2);
    end
    $fclose(fp1);
    $fclose(fp2);
    fp1 = $fopen("./rtl.decrypt_dut.autotvout_output_12.dat", "r");
    fp2 = $fopen("./impl_rtl.decrypt_dut.autotvout_output_12.dat", "r");
    if(fp1 == 0)        // Failed to open file
        $display("Failed to open file \"./rtl.decrypt_dut.autotvout_output_12.dat\"!");
    else if(fp2 == 0)
        $display("Failed to open file \"./impl_rtl.decrypt_dut.autotvout_output_12.dat\"!");
    else begin
        $display("Comparing rtl.decrypt_dut.autotvout_output_12.dat with impl_rtl.decrypt_dut.autotvout_output_12.dat");
        post_check(fp1, fp2);
    end
    $fclose(fp1);
    $fclose(fp2);
    fp1 = $fopen("./rtl.decrypt_dut.autotvout_output_13.dat", "r");
    fp2 = $fopen("./impl_rtl.decrypt_dut.autotvout_output_13.dat", "r");
    if(fp1 == 0)        // Failed to open file
        $display("Failed to open file \"./rtl.decrypt_dut.autotvout_output_13.dat\"!");
    else if(fp2 == 0)
        $display("Failed to open file \"./impl_rtl.decrypt_dut.autotvout_output_13.dat\"!");
    else begin
        $display("Comparing rtl.decrypt_dut.autotvout_output_13.dat with impl_rtl.decrypt_dut.autotvout_output_13.dat");
        post_check(fp1, fp2);
    end
    $fclose(fp1);
    $fclose(fp2);
    fp1 = $fopen("./rtl.decrypt_dut.autotvout_output_14.dat", "r");
    fp2 = $fopen("./impl_rtl.decrypt_dut.autotvout_output_14.dat", "r");
    if(fp1 == 0)        // Failed to open file
        $display("Failed to open file \"./rtl.decrypt_dut.autotvout_output_14.dat\"!");
    else if(fp2 == 0)
        $display("Failed to open file \"./impl_rtl.decrypt_dut.autotvout_output_14.dat\"!");
    else begin
        $display("Comparing rtl.decrypt_dut.autotvout_output_14.dat with impl_rtl.decrypt_dut.autotvout_output_14.dat");
        post_check(fp1, fp2);
    end
    $fclose(fp1);
    $fclose(fp2);
    fp1 = $fopen("./rtl.decrypt_dut.autotvout_output_15.dat", "r");
    fp2 = $fopen("./impl_rtl.decrypt_dut.autotvout_output_15.dat", "r");
    if(fp1 == 0)        // Failed to open file
        $display("Failed to open file \"./rtl.decrypt_dut.autotvout_output_15.dat\"!");
    else if(fp2 == 0)
        $display("Failed to open file \"./impl_rtl.decrypt_dut.autotvout_output_15.dat\"!");
    else begin
        $display("Comparing rtl.decrypt_dut.autotvout_output_15.dat with impl_rtl.decrypt_dut.autotvout_output_15.dat");
        post_check(fp1, fp2);
    end
    $fclose(fp1);
    $fclose(fp2);
        $display("Simulation Passed.");
        $finish;
    end
    
initial begin
    AESL_clock = 0;
    forever #`AUTOTB_CLOCK_PERIOD_DIV2 AESL_clock = ~AESL_clock;
end


reg end_input_0;
reg [31:0] size_input_0;
reg [31:0] size_input_0_backup;
reg end_input_1;
reg [31:0] size_input_1;
reg [31:0] size_input_1_backup;
reg end_input_2;
reg [31:0] size_input_2;
reg [31:0] size_input_2_backup;
reg end_input_3;
reg [31:0] size_input_3;
reg [31:0] size_input_3_backup;
reg end_input_4;
reg [31:0] size_input_4;
reg [31:0] size_input_4_backup;
reg end_input_5;
reg [31:0] size_input_5;
reg [31:0] size_input_5_backup;
reg end_input_6;
reg [31:0] size_input_6;
reg [31:0] size_input_6_backup;
reg end_input_7;
reg [31:0] size_input_7;
reg [31:0] size_input_7_backup;
reg end_input_8;
reg [31:0] size_input_8;
reg [31:0] size_input_8_backup;
reg end_input_9;
reg [31:0] size_input_9;
reg [31:0] size_input_9_backup;
reg end_input_10;
reg [31:0] size_input_10;
reg [31:0] size_input_10_backup;
reg end_input_11;
reg [31:0] size_input_11;
reg [31:0] size_input_11_backup;
reg end_input_12;
reg [31:0] size_input_12;
reg [31:0] size_input_12_backup;
reg end_input_13;
reg [31:0] size_input_13;
reg [31:0] size_input_13_backup;
reg end_input_14;
reg [31:0] size_input_14;
reg [31:0] size_input_14_backup;
reg end_input_15;
reg [31:0] size_input_15;
reg [31:0] size_input_15_backup;
reg end_key_0;
reg [31:0] size_key_0;
reg [31:0] size_key_0_backup;
reg end_key_1;
reg [31:0] size_key_1;
reg [31:0] size_key_1_backup;
reg end_key_2;
reg [31:0] size_key_2;
reg [31:0] size_key_2_backup;
reg end_key_3;
reg [31:0] size_key_3;
reg [31:0] size_key_3_backup;
reg end_key_4;
reg [31:0] size_key_4;
reg [31:0] size_key_4_backup;
reg end_key_5;
reg [31:0] size_key_5;
reg [31:0] size_key_5_backup;
reg end_key_6;
reg [31:0] size_key_6;
reg [31:0] size_key_6_backup;
reg end_key_7;
reg [31:0] size_key_7;
reg [31:0] size_key_7_backup;
reg end_key_8;
reg [31:0] size_key_8;
reg [31:0] size_key_8_backup;
reg end_key_9;
reg [31:0] size_key_9;
reg [31:0] size_key_9_backup;
reg end_key_10;
reg [31:0] size_key_10;
reg [31:0] size_key_10_backup;
reg end_key_11;
reg [31:0] size_key_11;
reg [31:0] size_key_11_backup;
reg end_key_12;
reg [31:0] size_key_12;
reg [31:0] size_key_12_backup;
reg end_key_13;
reg [31:0] size_key_13;
reg [31:0] size_key_13_backup;
reg end_key_14;
reg [31:0] size_key_14;
reg [31:0] size_key_14_backup;
reg end_key_15;
reg [31:0] size_key_15;
reg [31:0] size_key_15_backup;
reg end_output_0;
reg [31:0] size_output_0;
reg [31:0] size_output_0_backup;
reg end_output_1;
reg [31:0] size_output_1;
reg [31:0] size_output_1_backup;
reg end_output_2;
reg [31:0] size_output_2;
reg [31:0] size_output_2_backup;
reg end_output_3;
reg [31:0] size_output_3;
reg [31:0] size_output_3_backup;
reg end_output_4;
reg [31:0] size_output_4;
reg [31:0] size_output_4_backup;
reg end_output_5;
reg [31:0] size_output_5;
reg [31:0] size_output_5_backup;
reg end_output_6;
reg [31:0] size_output_6;
reg [31:0] size_output_6_backup;
reg end_output_7;
reg [31:0] size_output_7;
reg [31:0] size_output_7_backup;
reg end_output_8;
reg [31:0] size_output_8;
reg [31:0] size_output_8_backup;
reg end_output_9;
reg [31:0] size_output_9;
reg [31:0] size_output_9_backup;
reg end_output_10;
reg [31:0] size_output_10;
reg [31:0] size_output_10_backup;
reg end_output_11;
reg [31:0] size_output_11;
reg [31:0] size_output_11_backup;
reg end_output_12;
reg [31:0] size_output_12;
reg [31:0] size_output_12_backup;
reg end_output_13;
reg [31:0] size_output_13;
reg [31:0] size_output_13_backup;
reg end_output_14;
reg [31:0] size_output_14;
reg [31:0] size_output_14_backup;
reg end_output_15;
reg [31:0] size_output_15;
reg [31:0] size_output_15_backup;

initial begin : initial_process
    integer proc_rand;
    rst = 1;
    # 100;
    repeat(3) @ (posedge AESL_clock);
    rst = 0;
end
initial begin : start_process
    integer proc_rand;
    reg [31:0] start_cnt;
    ce = 1;
    start = 0;
    start_cnt = 0;
    wait (AESL_reset === 0);
    @ (posedge AESL_clock);
    #0 start = 1;
    start_cnt = start_cnt + 1;
    forever begin
        @ (posedge AESL_clock);
        if (start_cnt >= AUTOTB_TRANSACTION_NUM) begin
            // keep pushing garbage in
            #0 start = 1;
        end
        if (AESL_ready) begin
            start_cnt = start_cnt + 1;
        end
    end
end

always @(AESL_done)
begin
    tb_continue = AESL_done;
end

initial begin : ready_initial_process
    ready_initial = 0;
    wait (AESL_start === 1);
    ready_initial = 1;
    @(posedge AESL_clock);
    ready_initial = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset)
      AESL_ready_delay = 0;
  else
      AESL_ready_delay = AESL_ready;
end
initial begin : ready_last_n_process
  ready_last_n = 1;
  wait(ready_cnt == AUTOTB_TRANSACTION_NUM)
  @(posedge AESL_clock);
  ready_last_n <= 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset)
      ready_delay_last_n = 0;
  else
      ready_delay_last_n <= ready_last_n;
end
assign ready = (ready_initial | AESL_ready_delay);
assign ready_wire = ready_initial | AESL_ready_delay;
initial begin : done_delay_last_n_process
  done_delay_last_n = 1;
  while(done_cnt < AUTOTB_TRANSACTION_NUM)
      @(posedge AESL_clock);
  # 0.1;
  done_delay_last_n = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset)
  begin
      AESL_done_delay <= 0;
      AESL_done_delay2 <= 0;
  end
  else begin
      AESL_done_delay <= AESL_done & done_delay_last_n;
      AESL_done_delay2 <= AESL_done_delay;
  end
end
always @(posedge AESL_clock)
begin
    if(AESL_reset)
      interface_done = 0;
  else begin
      # 0.01;
      if(ready === 1 && ready_cnt > 0 && ready_cnt < AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else if(AESL_done_delay === 1 && done_cnt == AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else
          interface_done = 0;
  end
end

////////////////////////////////////////////
// progress and performance
////////////////////////////////////////////

task wait_start();
    while (~AESL_start) begin
        @ (posedge AESL_clock);
    end
endtask

reg [31:0] clk_cnt = 0;
reg AESL_ready_p1;
reg AESL_start_p1;

always @ (posedge AESL_clock) begin
    clk_cnt <= clk_cnt + 1;
    AESL_ready_p1 <= AESL_ready;
    AESL_start_p1 <= AESL_start;
end

reg [31:0] start_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] start_cnt;
reg [31:0] ready_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] ap_ready_cnt;
reg [31:0] finish_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] finish_cnt;
event report_progress;

initial begin
    start_cnt = 0;
    finish_cnt = 0;
    ap_ready_cnt = 0;
    wait (AESL_reset == 0);
    wait_start();
    start_timestamp[start_cnt] = clk_cnt;
    start_cnt = start_cnt + 1;
    if (AESL_done) begin
        finish_timestamp[finish_cnt] = clk_cnt;
        finish_cnt = finish_cnt + 1;
    end
    -> report_progress;
    forever begin
        @ (posedge AESL_clock);
        if (start_cnt < AUTOTB_TRANSACTION_NUM) begin
            if ((AESL_start && AESL_ready_p1)||(AESL_start && ~AESL_start_p1)) begin
                start_timestamp[start_cnt] = clk_cnt;
                start_cnt = start_cnt + 1;
            end
        end
        if (ap_ready_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_start_p1 && AESL_ready_p1) begin
                ready_timestamp[ap_ready_cnt] = clk_cnt;
                ap_ready_cnt = ap_ready_cnt + 1;
            end
        end
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                finish_timestamp[finish_cnt] = clk_cnt;
                finish_cnt = finish_cnt + 1;
            end
        end
        -> report_progress;
    end
end

reg [31:0] progress_timeout;

initial begin : simulation_progress
    real intra_progress;
    wait (AESL_reset == 0);
    progress_timeout = PROGRESS_TIMEOUT;
    $display("////////////////////////////////////////////////////////////////////////////////////");
    $display("// Inter-Transaction Progress: Completed Transaction / Total Transaction");
    $display("// Intra-Transaction Progress: Measured Latency / Latency Estimation * 100%%");
    $display("//");
    $display("// RTL Simulation : \"Inter-Transaction Progress\" [\"Intra-Transaction Progress\"] @ \"Simulation Time\"");
    $display("////////////////////////////////////////////////////////////////////////////////////");
    print_progress();
    while (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
        @ (report_progress);
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                print_progress();
                progress_timeout = PROGRESS_TIMEOUT;
            end else begin
                if (progress_timeout == 0) begin
                    print_progress();
                    progress_timeout = PROGRESS_TIMEOUT;
                end else begin
                    progress_timeout = progress_timeout - 1;
                end
            end
        end
    end
    print_progress();
    $display("////////////////////////////////////////////////////////////////////////////////////");
    calculate_performance();
end

task get_intra_progress(output real intra_progress);
    begin
        if (start_cnt > finish_cnt) begin
            intra_progress = clk_cnt - start_timestamp[finish_cnt];
        end else if(finish_cnt > 0) begin
            intra_progress = LATENCY_ESTIMATION;
        end else begin
            intra_progress = 0;
        end
        intra_progress = intra_progress / LATENCY_ESTIMATION;
    end
endtask

task print_progress();
    real intra_progress;
    begin
        if (LATENCY_ESTIMATION > 0) begin
            get_intra_progress(intra_progress);
            $display("// RTL Simulation : %0d / %0d [%2.2f%%] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, intra_progress * 100, $time);
        end else begin
            $display("// RTL Simulation : %0d / %0d [n/a] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, $time);
        end
    end
endtask

task calculate_performance();
    integer i;
    integer fp;
    reg [31:0] latency [0:AUTOTB_TRANSACTION_NUM - 1];
    reg [31:0] latency_min;
    reg [31:0] latency_max;
    reg [31:0] latency_total;
    reg [31:0] latency_average;
    reg [31:0] interval [0:AUTOTB_TRANSACTION_NUM - 2];
    reg [31:0] interval_min;
    reg [31:0] interval_max;
    reg [31:0] interval_total;
    reg [31:0] interval_average;
    begin
        latency_min = -1;
        latency_max = 0;
        latency_total = 0;
        interval_min = -1;
        interval_max = 0;
        interval_total = 0;

        for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
            // calculate latency
            latency[i] = finish_timestamp[i] - start_timestamp[i];
            if (latency[i] > latency_max) latency_max = latency[i];
            if (latency[i] < latency_min) latency_min = latency[i];
            latency_total = latency_total + latency[i];
            // calculate interval
            if (AUTOTB_TRANSACTION_NUM == 1) begin
                interval[i] = 0;
                interval_max = 0;
                interval_min = 0;
                interval_total = 0;
            end else if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                interval[i] = finish_timestamp[i] - start_timestamp[i]+1;
                if (interval[i] > interval_max) interval_max = interval[i];
                if (interval[i] < interval_min) interval_min = interval[i];
                interval_total = interval_total + interval[i];
            end
        end

        latency_average = latency_total / AUTOTB_TRANSACTION_NUM;
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            interval_average = 0;
        end else begin
            interval_average = interval_total / (AUTOTB_TRANSACTION_NUM - 1);
        end

        fp = $fopen(`AUTOTB_LAT_RESULT_FILE, "w");

        $fdisplay(fp, "$MAX_LATENCY = \"%0d\"", latency_max);
        $fdisplay(fp, "$MIN_LATENCY = \"%0d\"", latency_min);
        $fdisplay(fp, "$AVER_LATENCY = \"%0d\"", latency_average);
        $fdisplay(fp, "$MAX_THROUGHPUT = \"%0d\"", interval_max);
        $fdisplay(fp, "$MIN_THROUGHPUT = \"%0d\"", interval_min);
        $fdisplay(fp, "$AVER_THROUGHPUT = \"%0d\"", interval_average);

        $fclose(fp);

        fp = $fopen(`AUTOTB_PER_RESULT_TRANS_FILE, "w");

        $fdisplay(fp, "%20s%16s%16s", "", "latency", "interval");
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            i = 0;
            $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
        end else begin
            for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
                if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                    $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
                end else begin
                    $fdisplay(fp, "transaction%8d:%16d               x", i, latency[i]);
                end
            end
        end

        $fclose(fp);
    end
endtask


////////////////////////////////////////////
// Dependence Check
////////////////////////////////////////////

`ifndef POST_SYN

`endif

endmodule

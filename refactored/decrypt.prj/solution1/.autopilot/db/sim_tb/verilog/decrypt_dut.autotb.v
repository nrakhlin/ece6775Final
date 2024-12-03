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
`define AESL_MEM_output_r AESL_automem_output_r
`define AESL_MEM_INST_output_r mem_inst_output_r
`define AESL_MEM_key AESL_automem_key
`define AESL_MEM_INST_key mem_inst_key
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
`define AUTOTB_TVIN_output_r  "./c.decrypt_dut.autotvin_output_r.dat"
`define AUTOTB_TVIN_key  "./c.decrypt_dut.autotvin_key.dat"
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
`define AUTOTB_TVIN_output_r_out_wrapc  "./rtl.decrypt_dut.autotvin_output_r.dat"
`define AUTOTB_TVIN_key_out_wrapc  "./rtl.decrypt_dut.autotvin_key.dat"
`define AUTOTB_TVOUT_output_r  "./c.decrypt_dut.autotvout_output_r.dat"
`define AUTOTB_TVOUT_output_r_out_wrapc  "./impl_rtl.decrypt_dut.autotvout_output_r.dat"
module `AUTOTB_TOP;

parameter AUTOTB_TRANSACTION_NUM = 1;
parameter PROGRESS_TIMEOUT = 10000000;
parameter LATENCY_ESTIMATION = 583;
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
parameter LENGTH_output_r = 16;
parameter LENGTH_key = 16;

task read_token;
    input integer fp;
    output reg [159 : 0] token;
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
    reg [159 : 0] token1;
    reg [159 : 0] token2;
    reg [159 : 0] golden;
    reg [159 : 0] result;
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
wire [3 : 0] output_r_address0;
wire  output_r_ce0;
wire  output_r_we0;
wire [7 : 0] output_r_d0;
wire [3 : 0] key_address0;
wire  key_ce0;
wire [7 : 0] key_q0;
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
    .output_r_address0(output_r_address0),
    .output_r_ce0(output_r_ce0),
    .output_r_we0(output_r_we0),
    .output_r_d0(output_r_d0),
    .key_address0(key_address0),
    .key_ce0(key_ce0),
    .key_q0(key_q0));

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
    reg [159  : 0] token;
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
    reg [159  : 0] token;
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
    reg [159  : 0] token;
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
    reg [159  : 0] token;
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
    reg [159  : 0] token;
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
    reg [159  : 0] token;
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
    reg [159  : 0] token;
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
    reg [159  : 0] token;
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
    reg [159  : 0] token;
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
    reg [159  : 0] token;
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
    reg [159  : 0] token;
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
    reg [159  : 0] token;
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
    reg [159  : 0] token;
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
    reg [159  : 0] token;
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
    reg [159  : 0] token;
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
    reg [159  : 0] token;
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


//------------------------arrayoutput_r Instantiation--------------

// The input and output of arrayoutput_r
wire    arrayoutput_r_ce0, arrayoutput_r_ce1;
wire    arrayoutput_r_we0, arrayoutput_r_we1;
wire    [3 : 0]    arrayoutput_r_address0, arrayoutput_r_address1;
wire    [7 : 0]    arrayoutput_r_din0, arrayoutput_r_din1;
wire    [7 : 0]    arrayoutput_r_dout0, arrayoutput_r_dout1;
wire    arrayoutput_r_ready;
wire    arrayoutput_r_done;

`AESL_MEM_output_r `AESL_MEM_INST_output_r(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayoutput_r_ce0),
    .we0        (arrayoutput_r_we0),
    .address0   (arrayoutput_r_address0),
    .din0       (arrayoutput_r_din0),
    .dout0      (arrayoutput_r_dout0),
    .ce1        (arrayoutput_r_ce1),
    .we1        (arrayoutput_r_we1),
    .address1   (arrayoutput_r_address1),
    .din1       (arrayoutput_r_din1),
    .dout1      (arrayoutput_r_dout1),
    .ready      (arrayoutput_r_ready),
    .done    (arrayoutput_r_done)
);

// Assignment between dut and arrayoutput_r
assign arrayoutput_r_address0 = output_r_address0;
assign arrayoutput_r_ce0 = output_r_ce0;
assign arrayoutput_r_we0 = output_r_we0;
assign arrayoutput_r_din0 = output_r_d0;
assign arrayoutput_r_we1 = 0;
assign arrayoutput_r_din1 = 0;
assign arrayoutput_r_ready= ready_initial | arrayoutput_r_done;
assign arrayoutput_r_done =    AESL_done_delay;


//------------------------arraykey Instantiation--------------

// The input and output of arraykey
wire    arraykey_ce0, arraykey_ce1;
wire    arraykey_we0, arraykey_we1;
wire    [3 : 0]    arraykey_address0, arraykey_address1;
wire    [7 : 0]    arraykey_din0, arraykey_din1;
wire    [7 : 0]    arraykey_dout0, arraykey_dout1;
wire    arraykey_ready;
wire    arraykey_done;

`AESL_MEM_key `AESL_MEM_INST_key(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arraykey_ce0),
    .we0        (arraykey_we0),
    .address0   (arraykey_address0),
    .din0       (arraykey_din0),
    .dout0      (arraykey_dout0),
    .ce1        (arraykey_ce1),
    .we1        (arraykey_we1),
    .address1   (arraykey_address1),
    .din1       (arraykey_din1),
    .dout1      (arraykey_dout1),
    .ready      (arraykey_ready),
    .done    (arraykey_done)
);

// Assignment between dut and arraykey
assign arraykey_address0 = key_address0;
assign arraykey_ce0 = key_ce0;
assign key_q0 = arraykey_dout0;
assign arraykey_we0 = 0;
assign arraykey_din0 = 0;
assign arraykey_we1 = 0;
assign arraykey_din1 = 0;
assign arraykey_ready=    ready;
assign arraykey_done = 0;


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
    fp1 = $fopen("./rtl.decrypt_dut.autotvout_output_r.dat", "r");
    fp2 = $fopen("./impl_rtl.decrypt_dut.autotvout_output_r.dat", "r");
    if(fp1 == 0)        // Failed to open file
        $display("Failed to open file \"./rtl.decrypt_dut.autotvout_output_r.dat\"!");
    else if(fp2 == 0)
        $display("Failed to open file \"./impl_rtl.decrypt_dut.autotvout_output_r.dat\"!");
    else begin
        $display("Comparing rtl.decrypt_dut.autotvout_output_r.dat with impl_rtl.decrypt_dut.autotvout_output_r.dat");
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
reg end_output_r;
reg [31:0] size_output_r;
reg [31:0] size_output_r_backup;
reg end_key;
reg [31:0] size_key;
reg [31:0] size_key_backup;

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

reg dump_tvout_finish_output_r;

initial begin : dump_tvout_runtime_sign_output_r
    integer fp;
    dump_tvout_finish_output_r = 0;
    fp = $fopen(`AUTOTB_TVOUT_output_r_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_output_r_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_output_r_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_output_r_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_output_r = 1;
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

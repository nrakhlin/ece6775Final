// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
 `timescale 1ns/1ps


`define AUTOTB_DUT      Blowfish_SetKey
`define AUTOTB_DUT_INST AESL_inst_Blowfish_SetKey
`define AUTOTB_TOP      apatb_Blowfish_SetKey_top
`define AUTOTB_LAT_RESULT_FILE "Blowfish_SetKey.result.lat.rb"
`define AUTOTB_PER_RESULT_TRANS_FILE "Blowfish_SetKey.performance.result.transaction.xml"
`define AUTOTB_TOP_INST AESL_inst_apatb_Blowfish_SetKey_top
`define AUTOTB_MAX_ALLOW_LATENCY  15000000
`define AUTOTB_CLOCK_PERIOD_DIV2 5.00

`define AESL_MEM_key AESL_automem_key
`define AESL_MEM_INST_key mem_inst_key
`define AESL_DEPTH_key_size 1
`define AESL_MEM_P AESL_automem_P
`define AESL_MEM_INST_P mem_inst_P
`define AESL_MEM_S AESL_automem_S
`define AESL_MEM_INST_S mem_inst_S
`define AUTOTB_TVIN_key  "../tv/cdatafile/c.Blowfish_SetKey.autotvin_key.dat"
`define AUTOTB_TVIN_key_size  "../tv/cdatafile/c.Blowfish_SetKey.autotvin_key_size.dat"
`define AUTOTB_TVIN_P  "../tv/cdatafile/c.Blowfish_SetKey.autotvin_P.dat"
`define AUTOTB_TVIN_S  "../tv/cdatafile/c.Blowfish_SetKey.autotvin_S.dat"
`define AUTOTB_TVIN_key_out_wrapc  "../tv/rtldatafile/rtl.Blowfish_SetKey.autotvin_key.dat"
`define AUTOTB_TVIN_key_size_out_wrapc  "../tv/rtldatafile/rtl.Blowfish_SetKey.autotvin_key_size.dat"
`define AUTOTB_TVIN_P_out_wrapc  "../tv/rtldatafile/rtl.Blowfish_SetKey.autotvin_P.dat"
`define AUTOTB_TVIN_S_out_wrapc  "../tv/rtldatafile/rtl.Blowfish_SetKey.autotvin_S.dat"
`define AUTOTB_TVOUT_P  "../tv/cdatafile/c.Blowfish_SetKey.autotvout_P.dat"
`define AUTOTB_TVOUT_S  "../tv/cdatafile/c.Blowfish_SetKey.autotvout_S.dat"
`define AUTOTB_TVOUT_P_out_wrapc  "../tv/rtldatafile/rtl.Blowfish_SetKey.autotvout_P.dat"
`define AUTOTB_TVOUT_S_out_wrapc  "../tv/rtldatafile/rtl.Blowfish_SetKey.autotvout_S.dat"
module `AUTOTB_TOP;

parameter AUTOTB_TRANSACTION_NUM = 1;
parameter PROGRESS_TIMEOUT = 10000000;
parameter LATENCY_ESTIMATION = 43004;
parameter LENGTH_key = 56;
parameter LENGTH_key_size = 1;
parameter LENGTH_P = 18;
parameter LENGTH_S = 1024;

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
wire [5 : 0] key_address0;
wire  key_ce0;
wire [7 : 0] key_q0;
wire [63 : 0] key_size;
wire [4 : 0] P_address0;
wire  P_ce0;
wire  P_we0;
wire [31 : 0] P_d0;
wire [31 : 0] P_q0;
wire [4 : 0] P_address1;
wire  P_ce1;
wire  P_we1;
wire [31 : 0] P_d1;
wire [31 : 0] P_q1;
wire [9 : 0] S_address0;
wire  S_ce0;
wire  S_we0;
wire [31 : 0] S_d0;
wire [31 : 0] S_q0;
wire [9 : 0] S_address1;
wire  S_ce1;
wire  S_we1;
wire [31 : 0] S_d1;
wire [31 : 0] S_q1;
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
    .key_address0(key_address0),
    .key_ce0(key_ce0),
    .key_q0(key_q0),
    .key_size(key_size),
    .P_address0(P_address0),
    .P_ce0(P_ce0),
    .P_we0(P_we0),
    .P_d0(P_d0),
    .P_q0(P_q0),
    .P_address1(P_address1),
    .P_ce1(P_ce1),
    .P_we1(P_we1),
    .P_d1(P_d1),
    .P_q1(P_q1),
    .S_address0(S_address0),
    .S_ce0(S_ce0),
    .S_we0(S_we0),
    .S_d0(S_d0),
    .S_q0(S_q0),
    .S_address1(S_address1),
    .S_ce1(S_ce1),
    .S_we1(S_we1),
    .S_d1(S_d1),
    .S_q1(S_q1));

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
//------------------------arraykey Instantiation--------------

// The input and output of arraykey
wire    arraykey_ce0, arraykey_ce1;
wire    arraykey_we0, arraykey_we1;
wire    [5 : 0]    arraykey_address0, arraykey_address1;
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


// The signal of port key_size
reg [63: 0] AESL_REG_key_size = 0;
assign key_size = AESL_REG_key_size;
initial begin : read_file_process_key_size
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
    fp = $fopen(`AUTOTB_TVIN_key_size,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_key_size);
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
            ret = $sscanf(token, "0x%x", AESL_REG_key_size);
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


//------------------------arrayP Instantiation--------------

// The input and output of arrayP
wire    arrayP_ce0, arrayP_ce1;
wire    arrayP_we0, arrayP_we1;
wire    [4 : 0]    arrayP_address0, arrayP_address1;
wire    [31 : 0]    arrayP_din0, arrayP_din1;
wire    [31 : 0]    arrayP_dout0, arrayP_dout1;
wire    arrayP_ready;
wire    arrayP_done;

`AESL_MEM_P `AESL_MEM_INST_P(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayP_ce0),
    .we0        (arrayP_we0),
    .address0   (arrayP_address0),
    .din0       (arrayP_din0),
    .dout0      (arrayP_dout0),
    .ce1        (arrayP_ce1),
    .we1        (arrayP_we1),
    .address1   (arrayP_address1),
    .din1       (arrayP_din1),
    .dout1      (arrayP_dout1),
    .ready      (arrayP_ready),
    .done    (arrayP_done)
);

// Assignment between dut and arrayP
assign arrayP_address0 = P_address0;
assign arrayP_ce0 = P_ce0;
assign P_q0 = arrayP_dout0;
assign arrayP_we0 = P_we0;
assign arrayP_din0 = P_d0;
assign arrayP_address1 = P_address1;
assign arrayP_ce1 = P_ce1;
assign P_q1 = arrayP_dout1;
assign arrayP_we1 = P_we1;
assign arrayP_din1 = P_d1;
assign arrayP_ready= ready;
assign arrayP_done = interface_done;


//------------------------arrayS Instantiation--------------

// The input and output of arrayS
wire    arrayS_ce0, arrayS_ce1;
wire    arrayS_we0, arrayS_we1;
wire    [9 : 0]    arrayS_address0, arrayS_address1;
wire    [31 : 0]    arrayS_din0, arrayS_din1;
wire    [31 : 0]    arrayS_dout0, arrayS_dout1;
wire    arrayS_ready;
wire    arrayS_done;

`AESL_MEM_S `AESL_MEM_INST_S(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayS_ce0),
    .we0        (arrayS_we0),
    .address0   (arrayS_address0),
    .din0       (arrayS_din0),
    .dout0      (arrayS_dout0),
    .ce1        (arrayS_ce1),
    .we1        (arrayS_we1),
    .address1   (arrayS_address1),
    .din1       (arrayS_din1),
    .dout1      (arrayS_dout1),
    .ready      (arrayS_ready),
    .done    (arrayS_done)
);

// Assignment between dut and arrayS
assign arrayS_address0 = S_address0;
assign arrayS_ce0 = S_ce0;
assign S_q0 = arrayS_dout0;
assign arrayS_we0 = S_we0;
assign arrayS_din0 = S_d0;
assign arrayS_address1 = S_address1;
assign arrayS_ce1 = S_ce1;
assign S_q1 = arrayS_dout1;
assign arrayS_we1 = S_we1;
assign arrayS_din1 = S_d1;
assign arrayS_ready= ready;
assign arrayS_done = interface_done;


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
        wait (all_finish == 1);
        // last transaction is saved at negedge right after last done
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        $finish;
    end
    
initial begin
    AESL_clock = 0;
    forever #`AUTOTB_CLOCK_PERIOD_DIV2 AESL_clock = ~AESL_clock;
end


reg end_key;
reg [31:0] size_key;
reg [31:0] size_key_backup;
reg end_key_size;
reg [31:0] size_key_size;
reg [31:0] size_key_size_backup;
reg end_P;
reg [31:0] size_P;
reg [31:0] size_P_backup;
reg end_S;
reg [31:0] size_S;
reg [31:0] size_S_backup;

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

reg dump_tvout_finish_P;

initial begin : dump_tvout_runtime_sign_P
    integer fp;
    dump_tvout_finish_P = 0;
    fp = $fopen(`AUTOTB_TVOUT_P_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_P_out_wrapc);
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
    fp = $fopen(`AUTOTB_TVOUT_P_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_P_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_P = 1;
end


reg dump_tvout_finish_S;

initial begin : dump_tvout_runtime_sign_S
    integer fp;
    dump_tvout_finish_S = 0;
    fp = $fopen(`AUTOTB_TVOUT_S_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_S_out_wrapc);
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
    fp = $fopen(`AUTOTB_TVOUT_S_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_S_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_S = 1;
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

set moduleName aes_encrypt
set isTopModule 0
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {aes_encrypt}
set C_modelType { void 0 }
set C_modelArgList {
	{ input_0_read int 8 regular  }
	{ input_1_read int 8 regular  }
	{ input_2_read int 8 regular  }
	{ input_3_read int 8 regular  }
	{ input_4_read int 8 regular  }
	{ input_5_read int 8 regular  }
	{ input_6_read int 8 regular  }
	{ input_7_read int 8 regular  }
	{ input_8_read int 8 regular  }
	{ input_9_read int 8 regular  }
	{ input_10_read int 8 regular  }
	{ input_11_read int 8 regular  }
	{ input_12_read int 8 regular  }
	{ input_13_read int 8 regular  }
	{ input_14_read int 8 regular  }
	{ input_15_read int 8 regular  }
	{ output_0 int 8 regular {pointer 1}  }
	{ output_1 int 8 regular {pointer 1}  }
	{ output_2 int 8 regular {pointer 1}  }
	{ output_3 int 8 regular {pointer 1}  }
	{ output_4 int 8 regular {pointer 1}  }
	{ output_5 int 8 regular {pointer 1}  }
	{ output_6 int 8 regular {pointer 1}  }
	{ output_7 int 8 regular {pointer 1}  }
	{ output_8 int 8 regular {pointer 1}  }
	{ output_9 int 8 regular {pointer 1}  }
	{ output_10 int 8 regular {pointer 1}  }
	{ output_11 int 8 regular {pointer 1}  }
	{ output_12 int 8 regular {pointer 1}  }
	{ output_13 int 8 regular {pointer 1}  }
	{ output_14 int 8 regular {pointer 1}  }
	{ output_15 int 8 regular {pointer 1}  }
	{ key_0_read int 8 regular  }
	{ key_1_read int 8 regular  }
	{ key_2_read int 8 regular  }
	{ key_3_read int 8 regular  }
	{ key_4_read int 8 regular  }
	{ key_5_read int 8 regular  }
	{ key_6_read int 8 regular  }
	{ key_7_read int 8 regular  }
	{ key_8_read int 8 regular  }
	{ key_9_read int 8 regular  }
	{ key_10_read int 8 regular  }
	{ key_11_read int 8 regular  }
	{ key_12_read int 8 regular  }
	{ key_13_read int 8 regular  }
	{ key_14_read int 8 regular  }
	{ key_15_read int 8 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "input_0_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "input_1_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "input_2_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "input_3_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "input_4_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "input_5_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "input_6_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "input_7_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "input_8_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "input_9_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "input_10_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "input_11_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "input_12_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "input_13_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "input_14_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "input_15_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "output_0", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_1", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_2", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_3", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_4", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_5", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_6", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_7", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_8", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_9", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_10", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_11", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_12", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_13", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_14", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_15", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "key_0_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "key_1_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "key_2_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "key_3_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "key_4_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "key_5_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "key_6_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "key_7_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "key_8_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "key_9_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "key_10_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "key_11_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "key_12_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "key_13_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "key_14_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "key_15_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 70
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ input_0_read sc_in sc_lv 8 signal 0 } 
	{ input_1_read sc_in sc_lv 8 signal 1 } 
	{ input_2_read sc_in sc_lv 8 signal 2 } 
	{ input_3_read sc_in sc_lv 8 signal 3 } 
	{ input_4_read sc_in sc_lv 8 signal 4 } 
	{ input_5_read sc_in sc_lv 8 signal 5 } 
	{ input_6_read sc_in sc_lv 8 signal 6 } 
	{ input_7_read sc_in sc_lv 8 signal 7 } 
	{ input_8_read sc_in sc_lv 8 signal 8 } 
	{ input_9_read sc_in sc_lv 8 signal 9 } 
	{ input_10_read sc_in sc_lv 8 signal 10 } 
	{ input_11_read sc_in sc_lv 8 signal 11 } 
	{ input_12_read sc_in sc_lv 8 signal 12 } 
	{ input_13_read sc_in sc_lv 8 signal 13 } 
	{ input_14_read sc_in sc_lv 8 signal 14 } 
	{ input_15_read sc_in sc_lv 8 signal 15 } 
	{ output_0 sc_out sc_lv 8 signal 16 } 
	{ output_0_ap_vld sc_out sc_logic 1 outvld 16 } 
	{ output_1 sc_out sc_lv 8 signal 17 } 
	{ output_1_ap_vld sc_out sc_logic 1 outvld 17 } 
	{ output_2 sc_out sc_lv 8 signal 18 } 
	{ output_2_ap_vld sc_out sc_logic 1 outvld 18 } 
	{ output_3 sc_out sc_lv 8 signal 19 } 
	{ output_3_ap_vld sc_out sc_logic 1 outvld 19 } 
	{ output_4 sc_out sc_lv 8 signal 20 } 
	{ output_4_ap_vld sc_out sc_logic 1 outvld 20 } 
	{ output_5 sc_out sc_lv 8 signal 21 } 
	{ output_5_ap_vld sc_out sc_logic 1 outvld 21 } 
	{ output_6 sc_out sc_lv 8 signal 22 } 
	{ output_6_ap_vld sc_out sc_logic 1 outvld 22 } 
	{ output_7 sc_out sc_lv 8 signal 23 } 
	{ output_7_ap_vld sc_out sc_logic 1 outvld 23 } 
	{ output_8 sc_out sc_lv 8 signal 24 } 
	{ output_8_ap_vld sc_out sc_logic 1 outvld 24 } 
	{ output_9 sc_out sc_lv 8 signal 25 } 
	{ output_9_ap_vld sc_out sc_logic 1 outvld 25 } 
	{ output_10 sc_out sc_lv 8 signal 26 } 
	{ output_10_ap_vld sc_out sc_logic 1 outvld 26 } 
	{ output_11 sc_out sc_lv 8 signal 27 } 
	{ output_11_ap_vld sc_out sc_logic 1 outvld 27 } 
	{ output_12 sc_out sc_lv 8 signal 28 } 
	{ output_12_ap_vld sc_out sc_logic 1 outvld 28 } 
	{ output_13 sc_out sc_lv 8 signal 29 } 
	{ output_13_ap_vld sc_out sc_logic 1 outvld 29 } 
	{ output_14 sc_out sc_lv 8 signal 30 } 
	{ output_14_ap_vld sc_out sc_logic 1 outvld 30 } 
	{ output_15 sc_out sc_lv 8 signal 31 } 
	{ output_15_ap_vld sc_out sc_logic 1 outvld 31 } 
	{ key_0_read sc_in sc_lv 8 signal 32 } 
	{ key_1_read sc_in sc_lv 8 signal 33 } 
	{ key_2_read sc_in sc_lv 8 signal 34 } 
	{ key_3_read sc_in sc_lv 8 signal 35 } 
	{ key_4_read sc_in sc_lv 8 signal 36 } 
	{ key_5_read sc_in sc_lv 8 signal 37 } 
	{ key_6_read sc_in sc_lv 8 signal 38 } 
	{ key_7_read sc_in sc_lv 8 signal 39 } 
	{ key_8_read sc_in sc_lv 8 signal 40 } 
	{ key_9_read sc_in sc_lv 8 signal 41 } 
	{ key_10_read sc_in sc_lv 8 signal 42 } 
	{ key_11_read sc_in sc_lv 8 signal 43 } 
	{ key_12_read sc_in sc_lv 8 signal 44 } 
	{ key_13_read sc_in sc_lv 8 signal 45 } 
	{ key_14_read sc_in sc_lv 8 signal 46 } 
	{ key_15_read sc_in sc_lv 8 signal 47 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "input_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_0_read", "role": "default" }} , 
 	{ "name": "input_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_1_read", "role": "default" }} , 
 	{ "name": "input_2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_2_read", "role": "default" }} , 
 	{ "name": "input_3_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_3_read", "role": "default" }} , 
 	{ "name": "input_4_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_4_read", "role": "default" }} , 
 	{ "name": "input_5_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_5_read", "role": "default" }} , 
 	{ "name": "input_6_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_6_read", "role": "default" }} , 
 	{ "name": "input_7_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_7_read", "role": "default" }} , 
 	{ "name": "input_8_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_8_read", "role": "default" }} , 
 	{ "name": "input_9_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_9_read", "role": "default" }} , 
 	{ "name": "input_10_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_10_read", "role": "default" }} , 
 	{ "name": "input_11_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_11_read", "role": "default" }} , 
 	{ "name": "input_12_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_12_read", "role": "default" }} , 
 	{ "name": "input_13_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_13_read", "role": "default" }} , 
 	{ "name": "input_14_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_14_read", "role": "default" }} , 
 	{ "name": "input_15_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_15_read", "role": "default" }} , 
 	{ "name": "output_0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_0", "role": "default" }} , 
 	{ "name": "output_0_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_0", "role": "ap_vld" }} , 
 	{ "name": "output_1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_1", "role": "default" }} , 
 	{ "name": "output_1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_1", "role": "ap_vld" }} , 
 	{ "name": "output_2", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_2", "role": "default" }} , 
 	{ "name": "output_2_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_2", "role": "ap_vld" }} , 
 	{ "name": "output_3", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_3", "role": "default" }} , 
 	{ "name": "output_3_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_3", "role": "ap_vld" }} , 
 	{ "name": "output_4", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_4", "role": "default" }} , 
 	{ "name": "output_4_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_4", "role": "ap_vld" }} , 
 	{ "name": "output_5", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_5", "role": "default" }} , 
 	{ "name": "output_5_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_5", "role": "ap_vld" }} , 
 	{ "name": "output_6", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_6", "role": "default" }} , 
 	{ "name": "output_6_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_6", "role": "ap_vld" }} , 
 	{ "name": "output_7", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_7", "role": "default" }} , 
 	{ "name": "output_7_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_7", "role": "ap_vld" }} , 
 	{ "name": "output_8", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_8", "role": "default" }} , 
 	{ "name": "output_8_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_8", "role": "ap_vld" }} , 
 	{ "name": "output_9", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_9", "role": "default" }} , 
 	{ "name": "output_9_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_9", "role": "ap_vld" }} , 
 	{ "name": "output_10", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_10", "role": "default" }} , 
 	{ "name": "output_10_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_10", "role": "ap_vld" }} , 
 	{ "name": "output_11", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_11", "role": "default" }} , 
 	{ "name": "output_11_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_11", "role": "ap_vld" }} , 
 	{ "name": "output_12", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_12", "role": "default" }} , 
 	{ "name": "output_12_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_12", "role": "ap_vld" }} , 
 	{ "name": "output_13", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_13", "role": "default" }} , 
 	{ "name": "output_13_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_13", "role": "ap_vld" }} , 
 	{ "name": "output_14", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_14", "role": "default" }} , 
 	{ "name": "output_14_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_14", "role": "ap_vld" }} , 
 	{ "name": "output_15", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_15", "role": "default" }} , 
 	{ "name": "output_15_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_15", "role": "ap_vld" }} , 
 	{ "name": "key_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "key_0_read", "role": "default" }} , 
 	{ "name": "key_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "key_1_read", "role": "default" }} , 
 	{ "name": "key_2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "key_2_read", "role": "default" }} , 
 	{ "name": "key_3_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "key_3_read", "role": "default" }} , 
 	{ "name": "key_4_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "key_4_read", "role": "default" }} , 
 	{ "name": "key_5_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "key_5_read", "role": "default" }} , 
 	{ "name": "key_6_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "key_6_read", "role": "default" }} , 
 	{ "name": "key_7_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "key_7_read", "role": "default" }} , 
 	{ "name": "key_8_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "key_8_read", "role": "default" }} , 
 	{ "name": "key_9_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "key_9_read", "role": "default" }} , 
 	{ "name": "key_10_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "key_10_read", "role": "default" }} , 
 	{ "name": "key_11_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "key_11_read", "role": "default" }} , 
 	{ "name": "key_12_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "key_12_read", "role": "default" }} , 
 	{ "name": "key_13_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "key_13_read", "role": "default" }} , 
 	{ "name": "key_14_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "key_14_read", "role": "default" }} , 
 	{ "name": "key_15_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "key_15_read", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "29", "33"],
		"CDFG" : "aes_encrypt",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "487", "EstimateLatencyMax" : "487",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aes_main_fu_561"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_expandKey_fu_572"}],
		"Port" : [
			{"Name" : "input_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_8_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_9_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_10_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_11_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_12_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_13_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_14_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_15_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_0", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "output_1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "output_2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "output_3", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "output_4", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "output_5", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "output_6", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "output_7", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "output_8", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "output_9", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "output_10", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "output_11", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "output_12", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "output_13", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "output_14", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "output_15", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "key_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "key_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "key_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "key_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "key_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "key_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "key_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "key_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "key_8_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "key_9_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "key_10_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "key_11_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "key_12_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "key_13_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "key_14_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "key_15_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_aes_main_fu_561", "Port" : "sbox"},
					{"ID" : "29", "SubInstance" : "grp_expandKey_fu_572", "Port" : "sbox"}]},
			{"Name" : "Rcon", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "grp_expandKey_fu_572", "Port" : "Rcon"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.block_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.expandedKey_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.expandedKey_1_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.expandedKey_2_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.expandedKey_3_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_aes_main_fu_561", "Parent" : "0", "Child" : ["7", "8", "23", "28"],
		"CDFG" : "aes_main",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "238", "EstimateLatencyMax" : "238",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_addRoundKey_fu_425"},
			{"State" : "ap_ST_fsm_state57", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_addRoundKey_fu_425"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_aes_round_fu_386", "Port" : "state"},
					{"ID" : "28", "SubInstance" : "grp_addRoundKey_fu_425", "Port" : "state"}]},
			{"Name" : "expandedKey_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_createRoundKey_fu_410", "Port" : "expandedKey_0"}]},
			{"Name" : "expandedKey_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_createRoundKey_fu_410", "Port" : "expandedKey_1"}]},
			{"Name" : "expandedKey_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_createRoundKey_fu_410", "Port" : "expandedKey_2"}]},
			{"Name" : "expandedKey_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_createRoundKey_fu_410", "Port" : "expandedKey_3"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_aes_round_fu_386", "Port" : "sbox"}]}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_main_fu_561.sbox_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_main_fu_561.grp_aes_round_fu_386", "Parent" : "6", "Child" : ["9", "10"],
		"CDFG" : "aes_round",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "19",
		"VariableLatency" : "0", "ExactLatency" : "18", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "roundKey_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "roundKey_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "roundKey_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "roundKey_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "roundKey_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "roundKey_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "roundKey_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "roundKey_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "roundKey_8_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "roundKey_9_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "roundKey_10_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "roundKey_11_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "roundKey_12_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "roundKey_13_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "roundKey_14_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "roundKey_15_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_aes_main_fu_561.grp_aes_round_fu_386.sbox_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_aes_main_fu_561.grp_aes_round_fu_386.grp_mixColumn_fu_454", "Parent" : "8", "Child" : ["11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22"],
		"CDFG" : "mixColumn",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "column_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "column_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "column_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "column_3_read", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "11", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_aes_main_fu_561.grp_aes_round_fu_386.grp_mixColumn_fu_454.tmp_galois_multiplicatio_fu_44", "Parent" : "10",
		"CDFG" : "galois_multiplicatio",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "12", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_aes_main_fu_561.grp_aes_round_fu_386.grp_mixColumn_fu_454.tmp_3_galois_multiplicatio_fu_52", "Parent" : "10",
		"CDFG" : "galois_multiplicatio",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "13", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_aes_main_fu_561.grp_aes_round_fu_386.grp_mixColumn_fu_454.tmp_4_galois_multiplicatio_fu_60", "Parent" : "10",
		"CDFG" : "galois_multiplicatio",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "14", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_aes_main_fu_561.grp_aes_round_fu_386.grp_mixColumn_fu_454.tmp_5_galois_multiplicatio_fu_68", "Parent" : "10",
		"CDFG" : "galois_multiplicatio",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "15", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_aes_main_fu_561.grp_aes_round_fu_386.grp_mixColumn_fu_454.tmp_6_galois_multiplicatio_fu_76", "Parent" : "10",
		"CDFG" : "galois_multiplicatio",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "16", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_aes_main_fu_561.grp_aes_round_fu_386.grp_mixColumn_fu_454.tmp_7_galois_multiplicatio_fu_84", "Parent" : "10",
		"CDFG" : "galois_multiplicatio",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "17", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_aes_main_fu_561.grp_aes_round_fu_386.grp_mixColumn_fu_454.tmp_9_galois_multiplicatio_fu_92", "Parent" : "10",
		"CDFG" : "galois_multiplicatio",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "18", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_aes_main_fu_561.grp_aes_round_fu_386.grp_mixColumn_fu_454.tmp_s_galois_multiplicatio_fu_100", "Parent" : "10",
		"CDFG" : "galois_multiplicatio",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "19", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_aes_main_fu_561.grp_aes_round_fu_386.grp_mixColumn_fu_454.tmp_1_galois_multiplicatio_fu_108", "Parent" : "10",
		"CDFG" : "galois_multiplicatio",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "20", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_aes_main_fu_561.grp_aes_round_fu_386.grp_mixColumn_fu_454.tmp_2_galois_multiplicatio_fu_116", "Parent" : "10",
		"CDFG" : "galois_multiplicatio",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "21", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_aes_main_fu_561.grp_aes_round_fu_386.grp_mixColumn_fu_454.tmp_8_galois_multiplicatio_fu_124", "Parent" : "10",
		"CDFG" : "galois_multiplicatio",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "22", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_aes_main_fu_561.grp_aes_round_fu_386.grp_mixColumn_fu_454.tmp_10_galois_multiplicatio_fu_132", "Parent" : "10",
		"CDFG" : "galois_multiplicatio",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_main_fu_561.grp_createRoundKey_fu_410", "Parent" : "6", "Child" : ["24", "25", "26", "27"],
		"CDFG" : "createRoundKey",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "8",
		"VariableLatency" : "0", "ExactLatency" : "8", "EstimateLatencyMin" : "8", "EstimateLatencyMax" : "8",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "expandedKey_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "expandedKey_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "expandedKey_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "expandedKey_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ptr", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_aes_main_fu_561.grp_createRoundKey_fu_410.encrypt_dut_mux_4cud_U25", "Parent" : "23"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_aes_main_fu_561.grp_createRoundKey_fu_410.encrypt_dut_mux_4cud_U26", "Parent" : "23"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_aes_main_fu_561.grp_createRoundKey_fu_410.encrypt_dut_mux_4cud_U27", "Parent" : "23"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_aes_main_fu_561.grp_createRoundKey_fu_410.encrypt_dut_mux_4cud_U28", "Parent" : "23"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_main_fu_561.grp_addRoundKey_fu_425", "Parent" : "6",
		"CDFG" : "addRoundKey",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "15", "EstimateLatencyMax" : "15",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "roundKey_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "roundKey_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "roundKey_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "roundKey_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "roundKey_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "roundKey_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "roundKey_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "roundKey_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "roundKey_8_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "roundKey_9_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "roundKey_10_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "roundKey_11_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "roundKey_12_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "roundKey_13_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "roundKey_14_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "roundKey_15_read", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_expandKey_fu_572", "Parent" : "0", "Child" : ["30", "31", "32"],
		"CDFG" : "expandKey",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "180", "EstimateLatencyMax" : "180",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "expandedKey_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "expandedKey_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "expandedKey_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "expandedKey_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "key_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "key_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "key_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "key_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "key_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "key_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "key_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "key_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "key_8_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "key_9_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "key_10_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "key_11_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "key_12_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "key_13_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "key_14_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "key_15_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Rcon", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_expandKey_fu_572.sbox_U", "Parent" : "29"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_expandKey_fu_572.Rcon_U", "Parent" : "29"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_expandKey_fu_572.encrypt_dut_mux_1bkb_U1", "Parent" : "29"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.encrypt_dut_mux_1bkb_U81", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	aes_encrypt {
		input_0_read {Type I LastRead 0 FirstWrite -1}
		input_1_read {Type I LastRead 0 FirstWrite -1}
		input_2_read {Type I LastRead 0 FirstWrite -1}
		input_3_read {Type I LastRead 0 FirstWrite -1}
		input_4_read {Type I LastRead 0 FirstWrite -1}
		input_5_read {Type I LastRead 0 FirstWrite -1}
		input_6_read {Type I LastRead 0 FirstWrite -1}
		input_7_read {Type I LastRead 0 FirstWrite -1}
		input_8_read {Type I LastRead 0 FirstWrite -1}
		input_9_read {Type I LastRead 0 FirstWrite -1}
		input_10_read {Type I LastRead 0 FirstWrite -1}
		input_11_read {Type I LastRead 0 FirstWrite -1}
		input_12_read {Type I LastRead 0 FirstWrite -1}
		input_13_read {Type I LastRead 0 FirstWrite -1}
		input_14_read {Type I LastRead 0 FirstWrite -1}
		input_15_read {Type I LastRead 0 FirstWrite -1}
		output_0 {Type O LastRead -1 FirstWrite 7}
		output_1 {Type O LastRead -1 FirstWrite 7}
		output_2 {Type O LastRead -1 FirstWrite 7}
		output_3 {Type O LastRead -1 FirstWrite 7}
		output_4 {Type O LastRead -1 FirstWrite 7}
		output_5 {Type O LastRead -1 FirstWrite 7}
		output_6 {Type O LastRead -1 FirstWrite 7}
		output_7 {Type O LastRead -1 FirstWrite 7}
		output_8 {Type O LastRead -1 FirstWrite 7}
		output_9 {Type O LastRead -1 FirstWrite 7}
		output_10 {Type O LastRead -1 FirstWrite 7}
		output_11 {Type O LastRead -1 FirstWrite 7}
		output_12 {Type O LastRead -1 FirstWrite 7}
		output_13 {Type O LastRead -1 FirstWrite 7}
		output_14 {Type O LastRead -1 FirstWrite 7}
		output_15 {Type O LastRead -1 FirstWrite 7}
		key_0_read {Type I LastRead 0 FirstWrite -1}
		key_1_read {Type I LastRead 0 FirstWrite -1}
		key_2_read {Type I LastRead 0 FirstWrite -1}
		key_3_read {Type I LastRead 0 FirstWrite -1}
		key_4_read {Type I LastRead 0 FirstWrite -1}
		key_5_read {Type I LastRead 0 FirstWrite -1}
		key_6_read {Type I LastRead 0 FirstWrite -1}
		key_7_read {Type I LastRead 0 FirstWrite -1}
		key_8_read {Type I LastRead 0 FirstWrite -1}
		key_9_read {Type I LastRead 0 FirstWrite -1}
		key_10_read {Type I LastRead 0 FirstWrite -1}
		key_11_read {Type I LastRead 0 FirstWrite -1}
		key_12_read {Type I LastRead 0 FirstWrite -1}
		key_13_read {Type I LastRead 0 FirstWrite -1}
		key_14_read {Type I LastRead 0 FirstWrite -1}
		key_15_read {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		Rcon {Type I LastRead -1 FirstWrite -1}}
	aes_main {
		state {Type IO LastRead 20 FirstWrite 5}
		expandedKey_0 {Type I LastRead 8 FirstWrite -1}
		expandedKey_1 {Type I LastRead 8 FirstWrite -1}
		expandedKey_2 {Type I LastRead 8 FirstWrite -1}
		expandedKey_3 {Type I LastRead 8 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}
	aes_round {
		state {Type IO LastRead 8 FirstWrite 5}
		roundKey_0_read {Type I LastRead 5 FirstWrite -1}
		roundKey_1_read {Type I LastRead 17 FirstWrite -1}
		roundKey_2_read {Type I LastRead 13 FirstWrite -1}
		roundKey_3_read {Type I LastRead 9 FirstWrite -1}
		roundKey_4_read {Type I LastRead 5 FirstWrite -1}
		roundKey_5_read {Type I LastRead 17 FirstWrite -1}
		roundKey_6_read {Type I LastRead 13 FirstWrite -1}
		roundKey_7_read {Type I LastRead 9 FirstWrite -1}
		roundKey_8_read {Type I LastRead 5 FirstWrite -1}
		roundKey_9_read {Type I LastRead 17 FirstWrite -1}
		roundKey_10_read {Type I LastRead 13 FirstWrite -1}
		roundKey_11_read {Type I LastRead 9 FirstWrite -1}
		roundKey_12_read {Type I LastRead 5 FirstWrite -1}
		roundKey_13_read {Type I LastRead 17 FirstWrite -1}
		roundKey_14_read {Type I LastRead 13 FirstWrite -1}
		roundKey_15_read {Type I LastRead 9 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}
	mixColumn {
		column_0_read {Type I LastRead 0 FirstWrite -1}
		column_1_read {Type I LastRead 0 FirstWrite -1}
		column_2_read {Type I LastRead 0 FirstWrite -1}
		column_3_read {Type I LastRead 0 FirstWrite -1}}
	galois_multiplicatio {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	galois_multiplicatio {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	galois_multiplicatio {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	galois_multiplicatio {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	galois_multiplicatio {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	galois_multiplicatio {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	galois_multiplicatio {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	galois_multiplicatio {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	galois_multiplicatio {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	galois_multiplicatio {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	galois_multiplicatio {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	galois_multiplicatio {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	createRoundKey {
		expandedKey_0 {Type I LastRead 8 FirstWrite -1}
		expandedKey_1 {Type I LastRead 8 FirstWrite -1}
		expandedKey_2 {Type I LastRead 8 FirstWrite -1}
		expandedKey_3 {Type I LastRead 8 FirstWrite -1}
		ptr {Type I LastRead 0 FirstWrite -1}}
	addRoundKey {
		state {Type IO LastRead 8 FirstWrite 8}
		roundKey_0_read {Type I LastRead 8 FirstWrite -1}
		roundKey_1_read {Type I LastRead 8 FirstWrite -1}
		roundKey_2_read {Type I LastRead 9 FirstWrite -1}
		roundKey_3_read {Type I LastRead 9 FirstWrite -1}
		roundKey_4_read {Type I LastRead 10 FirstWrite -1}
		roundKey_5_read {Type I LastRead 10 FirstWrite -1}
		roundKey_6_read {Type I LastRead 11 FirstWrite -1}
		roundKey_7_read {Type I LastRead 11 FirstWrite -1}
		roundKey_8_read {Type I LastRead 12 FirstWrite -1}
		roundKey_9_read {Type I LastRead 12 FirstWrite -1}
		roundKey_10_read {Type I LastRead 13 FirstWrite -1}
		roundKey_11_read {Type I LastRead 13 FirstWrite -1}
		roundKey_12_read {Type I LastRead 14 FirstWrite -1}
		roundKey_13_read {Type I LastRead 14 FirstWrite -1}
		roundKey_14_read {Type I LastRead 15 FirstWrite -1}
		roundKey_15_read {Type I LastRead 15 FirstWrite -1}}
	expandKey {
		expandedKey_0 {Type IO LastRead 3 FirstWrite 1}
		expandedKey_1 {Type IO LastRead 3 FirstWrite 1}
		expandedKey_2 {Type IO LastRead 6 FirstWrite 1}
		expandedKey_3 {Type IO LastRead 3 FirstWrite 1}
		key_0_read {Type I LastRead 0 FirstWrite -1}
		key_1_read {Type I LastRead 0 FirstWrite -1}
		key_2_read {Type I LastRead 0 FirstWrite -1}
		key_3_read {Type I LastRead 0 FirstWrite -1}
		key_4_read {Type I LastRead 0 FirstWrite -1}
		key_5_read {Type I LastRead 0 FirstWrite -1}
		key_6_read {Type I LastRead 0 FirstWrite -1}
		key_7_read {Type I LastRead 0 FirstWrite -1}
		key_8_read {Type I LastRead 0 FirstWrite -1}
		key_9_read {Type I LastRead 0 FirstWrite -1}
		key_10_read {Type I LastRead 0 FirstWrite -1}
		key_11_read {Type I LastRead 0 FirstWrite -1}
		key_12_read {Type I LastRead 0 FirstWrite -1}
		key_13_read {Type I LastRead 0 FirstWrite -1}
		key_14_read {Type I LastRead 0 FirstWrite -1}
		key_15_read {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		Rcon {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "487", "Max" : "487"}
	, {"Name" : "Interval", "Min" : "487", "Max" : "487"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	input_0_read { ap_none {  { input_0_read in_data 0 8 } } }
	input_1_read { ap_none {  { input_1_read in_data 0 8 } } }
	input_2_read { ap_none {  { input_2_read in_data 0 8 } } }
	input_3_read { ap_none {  { input_3_read in_data 0 8 } } }
	input_4_read { ap_none {  { input_4_read in_data 0 8 } } }
	input_5_read { ap_none {  { input_5_read in_data 0 8 } } }
	input_6_read { ap_none {  { input_6_read in_data 0 8 } } }
	input_7_read { ap_none {  { input_7_read in_data 0 8 } } }
	input_8_read { ap_none {  { input_8_read in_data 0 8 } } }
	input_9_read { ap_none {  { input_9_read in_data 0 8 } } }
	input_10_read { ap_none {  { input_10_read in_data 0 8 } } }
	input_11_read { ap_none {  { input_11_read in_data 0 8 } } }
	input_12_read { ap_none {  { input_12_read in_data 0 8 } } }
	input_13_read { ap_none {  { input_13_read in_data 0 8 } } }
	input_14_read { ap_none {  { input_14_read in_data 0 8 } } }
	input_15_read { ap_none {  { input_15_read in_data 0 8 } } }
	output_0 { ap_vld {  { output_0 out_data 1 8 }  { output_0_ap_vld out_vld 1 1 } } }
	output_1 { ap_vld {  { output_1 out_data 1 8 }  { output_1_ap_vld out_vld 1 1 } } }
	output_2 { ap_vld {  { output_2 out_data 1 8 }  { output_2_ap_vld out_vld 1 1 } } }
	output_3 { ap_vld {  { output_3 out_data 1 8 }  { output_3_ap_vld out_vld 1 1 } } }
	output_4 { ap_vld {  { output_4 out_data 1 8 }  { output_4_ap_vld out_vld 1 1 } } }
	output_5 { ap_vld {  { output_5 out_data 1 8 }  { output_5_ap_vld out_vld 1 1 } } }
	output_6 { ap_vld {  { output_6 out_data 1 8 }  { output_6_ap_vld out_vld 1 1 } } }
	output_7 { ap_vld {  { output_7 out_data 1 8 }  { output_7_ap_vld out_vld 1 1 } } }
	output_8 { ap_vld {  { output_8 out_data 1 8 }  { output_8_ap_vld out_vld 1 1 } } }
	output_9 { ap_vld {  { output_9 out_data 1 8 }  { output_9_ap_vld out_vld 1 1 } } }
	output_10 { ap_vld {  { output_10 out_data 1 8 }  { output_10_ap_vld out_vld 1 1 } } }
	output_11 { ap_vld {  { output_11 out_data 1 8 }  { output_11_ap_vld out_vld 1 1 } } }
	output_12 { ap_vld {  { output_12 out_data 1 8 }  { output_12_ap_vld out_vld 1 1 } } }
	output_13 { ap_vld {  { output_13 out_data 1 8 }  { output_13_ap_vld out_vld 1 1 } } }
	output_14 { ap_vld {  { output_14 out_data 1 8 }  { output_14_ap_vld out_vld 1 1 } } }
	output_15 { ap_vld {  { output_15 out_data 1 8 }  { output_15_ap_vld out_vld 1 1 } } }
	key_0_read { ap_none {  { key_0_read in_data 0 8 } } }
	key_1_read { ap_none {  { key_1_read in_data 0 8 } } }
	key_2_read { ap_none {  { key_2_read in_data 0 8 } } }
	key_3_read { ap_none {  { key_3_read in_data 0 8 } } }
	key_4_read { ap_none {  { key_4_read in_data 0 8 } } }
	key_5_read { ap_none {  { key_5_read in_data 0 8 } } }
	key_6_read { ap_none {  { key_6_read in_data 0 8 } } }
	key_7_read { ap_none {  { key_7_read in_data 0 8 } } }
	key_8_read { ap_none {  { key_8_read in_data 0 8 } } }
	key_9_read { ap_none {  { key_9_read in_data 0 8 } } }
	key_10_read { ap_none {  { key_10_read in_data 0 8 } } }
	key_11_read { ap_none {  { key_11_read in_data 0 8 } } }
	key_12_read { ap_none {  { key_12_read in_data 0 8 } } }
	key_13_read { ap_none {  { key_13_read in_data 0 8 } } }
	key_14_read { ap_none {  { key_14_read in_data 0 8 } } }
	key_15_read { ap_none {  { key_15_read in_data 0 8 } } }
}

set moduleName Blowfish_SetKey
set isTopModule 1
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
set C_modelName {Blowfish_SetKey}
set C_modelType { void 0 }
set C_modelArgList {
	{ key int 8 regular {array 56 { 1 3 } 1 1 }  }
	{ key_size int 64 regular  }
	{ P_0 int 32 regular {pointer 1}  }
	{ P_1 int 32 regular {pointer 1}  }
	{ P_2 int 32 regular {pointer 1}  }
	{ P_3 int 32 regular {pointer 1}  }
	{ P_4 int 32 regular {pointer 1}  }
	{ P_5 int 32 regular {pointer 1}  }
	{ P_6 int 32 regular {pointer 1}  }
	{ P_7 int 32 regular {pointer 1}  }
	{ P_8 int 32 regular {pointer 1}  }
	{ P_9 int 32 regular {pointer 1}  }
	{ P_10 int 32 regular {pointer 1}  }
	{ P_11 int 32 regular {pointer 1}  }
	{ P_12 int 32 regular {pointer 1}  }
	{ P_13 int 32 regular {pointer 1}  }
	{ P_14 int 32 regular {pointer 1}  }
	{ P_15 int 32 regular {pointer 1}  }
	{ P_16 int 32 regular {pointer 1}  }
	{ P_17 int 32 regular {pointer 1}  }
	{ S_0 int 32 regular {array 256 { 2 0 } 1 1 }  }
	{ S_1 int 32 regular {array 256 { 2 0 } 1 1 }  }
	{ S_2 int 32 regular {array 256 { 2 0 } 1 1 }  }
	{ S_3 int 32 regular {array 256 { 2 0 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "key", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "key","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 55,"step" : 1}]}]}]} , 
 	{ "Name" : "key_size", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "key_size","cData": "long unsigned int","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "P_0", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "P","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 2}]}]}]} , 
 	{ "Name" : "P_1", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "P","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 1,"up" : 1,"step" : 2}]}]}]} , 
 	{ "Name" : "P_2", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "P","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 2,"up" : 2,"step" : 2}]}]}]} , 
 	{ "Name" : "P_3", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "P","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 3,"up" : 3,"step" : 2}]}]}]} , 
 	{ "Name" : "P_4", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "P","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 4,"up" : 4,"step" : 2}]}]}]} , 
 	{ "Name" : "P_5", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "P","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 5,"up" : 5,"step" : 2}]}]}]} , 
 	{ "Name" : "P_6", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "P","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 6,"up" : 6,"step" : 2}]}]}]} , 
 	{ "Name" : "P_7", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "P","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 7,"up" : 7,"step" : 2}]}]}]} , 
 	{ "Name" : "P_8", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "P","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 8,"up" : 8,"step" : 2}]}]}]} , 
 	{ "Name" : "P_9", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "P","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 9,"up" : 9,"step" : 2}]}]}]} , 
 	{ "Name" : "P_10", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "P","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 10,"up" : 10,"step" : 2}]}]}]} , 
 	{ "Name" : "P_11", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "P","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 11,"up" : 11,"step" : 2}]}]}]} , 
 	{ "Name" : "P_12", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "P","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 12,"up" : 12,"step" : 2}]}]}]} , 
 	{ "Name" : "P_13", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "P","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 13,"up" : 13,"step" : 2}]}]}]} , 
 	{ "Name" : "P_14", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "P","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 14,"up" : 14,"step" : 2}]}]}]} , 
 	{ "Name" : "P_15", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "P","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 15,"up" : 15,"step" : 2}]}]}]} , 
 	{ "Name" : "P_16", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "P","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 16,"up" : 16,"step" : 2}]}]}]} , 
 	{ "Name" : "P_17", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "P","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 17,"up" : 17,"step" : 2}]}]}]} , 
 	{ "Name" : "S_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "S","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 2},{"low" : 0,"up" : 255,"step" : 1}]}]}]} , 
 	{ "Name" : "S_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "S","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 1,"up" : 1,"step" : 2},{"low" : 0,"up" : 255,"step" : 1}]}]}]} , 
 	{ "Name" : "S_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "S","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 2,"up" : 2,"step" : 2},{"low" : 0,"up" : 255,"step" : 1}]}]}]} , 
 	{ "Name" : "S_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "S","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 3,"up" : 3,"step" : 2},{"low" : 0,"up" : 255,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 82
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ key_address0 sc_out sc_lv 6 signal 0 } 
	{ key_ce0 sc_out sc_logic 1 signal 0 } 
	{ key_q0 sc_in sc_lv 8 signal 0 } 
	{ key_size sc_in sc_lv 64 signal 1 } 
	{ P_0 sc_out sc_lv 32 signal 2 } 
	{ P_0_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ P_1 sc_out sc_lv 32 signal 3 } 
	{ P_1_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ P_2 sc_out sc_lv 32 signal 4 } 
	{ P_2_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ P_3 sc_out sc_lv 32 signal 5 } 
	{ P_3_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ P_4 sc_out sc_lv 32 signal 6 } 
	{ P_4_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ P_5 sc_out sc_lv 32 signal 7 } 
	{ P_5_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ P_6 sc_out sc_lv 32 signal 8 } 
	{ P_6_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ P_7 sc_out sc_lv 32 signal 9 } 
	{ P_7_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ P_8 sc_out sc_lv 32 signal 10 } 
	{ P_8_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ P_9 sc_out sc_lv 32 signal 11 } 
	{ P_9_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ P_10 sc_out sc_lv 32 signal 12 } 
	{ P_10_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ P_11 sc_out sc_lv 32 signal 13 } 
	{ P_11_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ P_12 sc_out sc_lv 32 signal 14 } 
	{ P_12_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ P_13 sc_out sc_lv 32 signal 15 } 
	{ P_13_ap_vld sc_out sc_logic 1 outvld 15 } 
	{ P_14 sc_out sc_lv 32 signal 16 } 
	{ P_14_ap_vld sc_out sc_logic 1 outvld 16 } 
	{ P_15 sc_out sc_lv 32 signal 17 } 
	{ P_15_ap_vld sc_out sc_logic 1 outvld 17 } 
	{ P_16 sc_out sc_lv 32 signal 18 } 
	{ P_16_ap_vld sc_out sc_logic 1 outvld 18 } 
	{ P_17 sc_out sc_lv 32 signal 19 } 
	{ P_17_ap_vld sc_out sc_logic 1 outvld 19 } 
	{ S_0_address0 sc_out sc_lv 8 signal 20 } 
	{ S_0_ce0 sc_out sc_logic 1 signal 20 } 
	{ S_0_we0 sc_out sc_logic 1 signal 20 } 
	{ S_0_d0 sc_out sc_lv 32 signal 20 } 
	{ S_0_q0 sc_in sc_lv 32 signal 20 } 
	{ S_0_address1 sc_out sc_lv 8 signal 20 } 
	{ S_0_ce1 sc_out sc_logic 1 signal 20 } 
	{ S_0_we1 sc_out sc_logic 1 signal 20 } 
	{ S_0_d1 sc_out sc_lv 32 signal 20 } 
	{ S_1_address0 sc_out sc_lv 8 signal 21 } 
	{ S_1_ce0 sc_out sc_logic 1 signal 21 } 
	{ S_1_we0 sc_out sc_logic 1 signal 21 } 
	{ S_1_d0 sc_out sc_lv 32 signal 21 } 
	{ S_1_q0 sc_in sc_lv 32 signal 21 } 
	{ S_1_address1 sc_out sc_lv 8 signal 21 } 
	{ S_1_ce1 sc_out sc_logic 1 signal 21 } 
	{ S_1_we1 sc_out sc_logic 1 signal 21 } 
	{ S_1_d1 sc_out sc_lv 32 signal 21 } 
	{ S_2_address0 sc_out sc_lv 8 signal 22 } 
	{ S_2_ce0 sc_out sc_logic 1 signal 22 } 
	{ S_2_we0 sc_out sc_logic 1 signal 22 } 
	{ S_2_d0 sc_out sc_lv 32 signal 22 } 
	{ S_2_q0 sc_in sc_lv 32 signal 22 } 
	{ S_2_address1 sc_out sc_lv 8 signal 22 } 
	{ S_2_ce1 sc_out sc_logic 1 signal 22 } 
	{ S_2_we1 sc_out sc_logic 1 signal 22 } 
	{ S_2_d1 sc_out sc_lv 32 signal 22 } 
	{ S_3_address0 sc_out sc_lv 8 signal 23 } 
	{ S_3_ce0 sc_out sc_logic 1 signal 23 } 
	{ S_3_we0 sc_out sc_logic 1 signal 23 } 
	{ S_3_d0 sc_out sc_lv 32 signal 23 } 
	{ S_3_q0 sc_in sc_lv 32 signal 23 } 
	{ S_3_address1 sc_out sc_lv 8 signal 23 } 
	{ S_3_ce1 sc_out sc_logic 1 signal 23 } 
	{ S_3_we1 sc_out sc_logic 1 signal 23 } 
	{ S_3_d1 sc_out sc_lv 32 signal 23 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "key_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "key", "role": "address0" }} , 
 	{ "name": "key_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "key", "role": "ce0" }} , 
 	{ "name": "key_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "key", "role": "q0" }} , 
 	{ "name": "key_size", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "key_size", "role": "default" }} , 
 	{ "name": "P_0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_0", "role": "default" }} , 
 	{ "name": "P_0_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "P_0", "role": "ap_vld" }} , 
 	{ "name": "P_1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_1", "role": "default" }} , 
 	{ "name": "P_1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "P_1", "role": "ap_vld" }} , 
 	{ "name": "P_2", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_2", "role": "default" }} , 
 	{ "name": "P_2_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "P_2", "role": "ap_vld" }} , 
 	{ "name": "P_3", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_3", "role": "default" }} , 
 	{ "name": "P_3_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "P_3", "role": "ap_vld" }} , 
 	{ "name": "P_4", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_4", "role": "default" }} , 
 	{ "name": "P_4_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "P_4", "role": "ap_vld" }} , 
 	{ "name": "P_5", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_5", "role": "default" }} , 
 	{ "name": "P_5_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "P_5", "role": "ap_vld" }} , 
 	{ "name": "P_6", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_6", "role": "default" }} , 
 	{ "name": "P_6_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "P_6", "role": "ap_vld" }} , 
 	{ "name": "P_7", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_7", "role": "default" }} , 
 	{ "name": "P_7_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "P_7", "role": "ap_vld" }} , 
 	{ "name": "P_8", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_8", "role": "default" }} , 
 	{ "name": "P_8_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "P_8", "role": "ap_vld" }} , 
 	{ "name": "P_9", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_9", "role": "default" }} , 
 	{ "name": "P_9_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "P_9", "role": "ap_vld" }} , 
 	{ "name": "P_10", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_10", "role": "default" }} , 
 	{ "name": "P_10_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "P_10", "role": "ap_vld" }} , 
 	{ "name": "P_11", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_11", "role": "default" }} , 
 	{ "name": "P_11_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "P_11", "role": "ap_vld" }} , 
 	{ "name": "P_12", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_12", "role": "default" }} , 
 	{ "name": "P_12_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "P_12", "role": "ap_vld" }} , 
 	{ "name": "P_13", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_13", "role": "default" }} , 
 	{ "name": "P_13_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "P_13", "role": "ap_vld" }} , 
 	{ "name": "P_14", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_14", "role": "default" }} , 
 	{ "name": "P_14_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "P_14", "role": "ap_vld" }} , 
 	{ "name": "P_15", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_15", "role": "default" }} , 
 	{ "name": "P_15_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "P_15", "role": "ap_vld" }} , 
 	{ "name": "P_16", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_16", "role": "default" }} , 
 	{ "name": "P_16_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "P_16", "role": "ap_vld" }} , 
 	{ "name": "P_17", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_17", "role": "default" }} , 
 	{ "name": "P_17_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "P_17", "role": "ap_vld" }} , 
 	{ "name": "S_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "S_0", "role": "address0" }} , 
 	{ "name": "S_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "S_0", "role": "ce0" }} , 
 	{ "name": "S_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "S_0", "role": "we0" }} , 
 	{ "name": "S_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "S_0", "role": "d0" }} , 
 	{ "name": "S_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "S_0", "role": "q0" }} , 
 	{ "name": "S_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "S_0", "role": "address1" }} , 
 	{ "name": "S_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "S_0", "role": "ce1" }} , 
 	{ "name": "S_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "S_0", "role": "we1" }} , 
 	{ "name": "S_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "S_0", "role": "d1" }} , 
 	{ "name": "S_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "S_1", "role": "address0" }} , 
 	{ "name": "S_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "S_1", "role": "ce0" }} , 
 	{ "name": "S_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "S_1", "role": "we0" }} , 
 	{ "name": "S_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "S_1", "role": "d0" }} , 
 	{ "name": "S_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "S_1", "role": "q0" }} , 
 	{ "name": "S_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "S_1", "role": "address1" }} , 
 	{ "name": "S_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "S_1", "role": "ce1" }} , 
 	{ "name": "S_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "S_1", "role": "we1" }} , 
 	{ "name": "S_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "S_1", "role": "d1" }} , 
 	{ "name": "S_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "S_2", "role": "address0" }} , 
 	{ "name": "S_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "S_2", "role": "ce0" }} , 
 	{ "name": "S_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "S_2", "role": "we0" }} , 
 	{ "name": "S_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "S_2", "role": "d0" }} , 
 	{ "name": "S_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "S_2", "role": "q0" }} , 
 	{ "name": "S_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "S_2", "role": "address1" }} , 
 	{ "name": "S_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "S_2", "role": "ce1" }} , 
 	{ "name": "S_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "S_2", "role": "we1" }} , 
 	{ "name": "S_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "S_2", "role": "d1" }} , 
 	{ "name": "S_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "S_3", "role": "address0" }} , 
 	{ "name": "S_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "S_3", "role": "ce0" }} , 
 	{ "name": "S_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "S_3", "role": "we0" }} , 
 	{ "name": "S_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "S_3", "role": "d0" }} , 
 	{ "name": "S_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "S_3", "role": "q0" }} , 
 	{ "name": "S_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "S_3", "role": "address1" }} , 
 	{ "name": "S_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "S_3", "role": "ce1" }} , 
 	{ "name": "S_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "S_3", "role": "we1" }} , 
 	{ "name": "S_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "S_3", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "7", "8"],
		"CDFG" : "Blowfish_SetKey",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "20914", "EstimateLatencyMax" : "20914",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state30", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Encrypt_SetKey_fu_1137"},
			{"State" : "ap_ST_fsm_state35", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Encrypt_SetKey_fu_1137"}],
		"Port" : [
			{"Name" : "key", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "key_size", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_0", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "P_1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "P_2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "P_3", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "P_4", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "P_5", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "P_6", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "P_7", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "P_8", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "P_9", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "P_10", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "P_11", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "P_12", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "P_13", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "P_14", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "P_15", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "P_16", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "P_17", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "S_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_Encrypt_SetKey_fu_1137", "Port" : "S_0"}]},
			{"Name" : "S_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_Encrypt_SetKey_fu_1137", "Port" : "S_1"}]},
			{"Name" : "S_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_Encrypt_SetKey_fu_1137", "Port" : "S_2"}]},
			{"Name" : "S_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_Encrypt_SetKey_fu_1137", "Port" : "S_3"}]},
			{"Name" : "initial_sbox_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "initial_sbox_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "initial_sbox_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "initial_sbox_3", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.initial_sbox_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.initial_sbox_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.initial_sbox_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.initial_sbox_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Encrypt_SetKey_fu_1137", "Parent" : "0", "Child" : ["6"],
		"CDFG" : "Encrypt_SetKey",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "35", "EstimateLatencyMax" : "35",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "left_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "right_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_8_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_9_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_10_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_11_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_12_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_13_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_14_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_15_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_16_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_17_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "S_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_feistel_fu_297", "Port" : "S_0"}]},
			{"Name" : "S_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_feistel_fu_297", "Port" : "S_1"}]},
			{"Name" : "S_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_feistel_fu_297", "Port" : "S_2"}]},
			{"Name" : "S_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_feistel_fu_297", "Port" : "S_3"}]}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Encrypt_SetKey_fu_1137.grp_feistel_fu_297", "Parent" : "5",
		"CDFG" : "feistel",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "S_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "S_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "S_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "S_3", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Blowfish_SetKey_ufYi_U30", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Blowfish_SetKey_mg8j_U31", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	Blowfish_SetKey {
		key {Type I LastRead 16 FirstWrite -1}
		key_size {Type I LastRead 0 FirstWrite -1}
		P_0 {Type O LastRead -1 FirstWrite 0}
		P_1 {Type O LastRead -1 FirstWrite 0}
		P_2 {Type O LastRead -1 FirstWrite 0}
		P_3 {Type O LastRead -1 FirstWrite 0}
		P_4 {Type O LastRead -1 FirstWrite 0}
		P_5 {Type O LastRead -1 FirstWrite 0}
		P_6 {Type O LastRead -1 FirstWrite 0}
		P_7 {Type O LastRead -1 FirstWrite 0}
		P_8 {Type O LastRead -1 FirstWrite 0}
		P_9 {Type O LastRead -1 FirstWrite 0}
		P_10 {Type O LastRead -1 FirstWrite 0}
		P_11 {Type O LastRead -1 FirstWrite 0}
		P_12 {Type O LastRead -1 FirstWrite 0}
		P_13 {Type O LastRead -1 FirstWrite 0}
		P_14 {Type O LastRead -1 FirstWrite 0}
		P_15 {Type O LastRead -1 FirstWrite 0}
		P_16 {Type O LastRead -1 FirstWrite 0}
		P_17 {Type O LastRead -1 FirstWrite 0}
		S_0 {Type IO LastRead 0 FirstWrite -1}
		S_1 {Type IO LastRead 0 FirstWrite -1}
		S_2 {Type IO LastRead 0 FirstWrite -1}
		S_3 {Type IO LastRead 0 FirstWrite -1}
		initial_sbox_0 {Type I LastRead -1 FirstWrite -1}
		initial_sbox_1 {Type I LastRead -1 FirstWrite -1}
		initial_sbox_2 {Type I LastRead -1 FirstWrite -1}
		initial_sbox_3 {Type I LastRead -1 FirstWrite -1}}
	Encrypt_SetKey {
		left_read {Type I LastRead 0 FirstWrite -1}
		right_read {Type I LastRead 0 FirstWrite -1}
		P_0_read {Type I LastRead 0 FirstWrite -1}
		P_1_read {Type I LastRead 0 FirstWrite -1}
		P_2_read {Type I LastRead 0 FirstWrite -1}
		P_3_read {Type I LastRead 0 FirstWrite -1}
		P_4_read {Type I LastRead 0 FirstWrite -1}
		P_5_read {Type I LastRead 0 FirstWrite -1}
		P_6_read {Type I LastRead 0 FirstWrite -1}
		P_7_read {Type I LastRead 0 FirstWrite -1}
		P_8_read {Type I LastRead 0 FirstWrite -1}
		P_9_read {Type I LastRead 0 FirstWrite -1}
		P_10_read {Type I LastRead 0 FirstWrite -1}
		P_11_read {Type I LastRead 0 FirstWrite -1}
		P_12_read {Type I LastRead 0 FirstWrite -1}
		P_13_read {Type I LastRead 0 FirstWrite -1}
		P_14_read {Type I LastRead 0 FirstWrite -1}
		P_15_read {Type I LastRead 0 FirstWrite -1}
		P_16_read {Type I LastRead 0 FirstWrite -1}
		P_17_read {Type I LastRead 0 FirstWrite -1}
		S_0 {Type I LastRead 0 FirstWrite -1}
		S_1 {Type I LastRead 0 FirstWrite -1}
		S_2 {Type I LastRead 0 FirstWrite -1}
		S_3 {Type I LastRead 0 FirstWrite -1}}
	feistel {
		x {Type I LastRead 0 FirstWrite -1}
		S_0 {Type I LastRead 0 FirstWrite -1}
		S_1 {Type I LastRead 0 FirstWrite -1}
		S_2 {Type I LastRead 0 FirstWrite -1}
		S_3 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "20914", "Max" : "20914"}
	, {"Name" : "Interval", "Min" : "20915", "Max" : "20915"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	key { ap_memory {  { key_address0 mem_address 1 6 }  { key_ce0 mem_ce 1 1 }  { key_q0 mem_dout 0 8 } } }
	key_size { ap_none {  { key_size in_data 0 64 } } }
	P_0 { ap_vld {  { P_0 out_data 1 32 }  { P_0_ap_vld out_vld 1 1 } } }
	P_1 { ap_vld {  { P_1 out_data 1 32 }  { P_1_ap_vld out_vld 1 1 } } }
	P_2 { ap_vld {  { P_2 out_data 1 32 }  { P_2_ap_vld out_vld 1 1 } } }
	P_3 { ap_vld {  { P_3 out_data 1 32 }  { P_3_ap_vld out_vld 1 1 } } }
	P_4 { ap_vld {  { P_4 out_data 1 32 }  { P_4_ap_vld out_vld 1 1 } } }
	P_5 { ap_vld {  { P_5 out_data 1 32 }  { P_5_ap_vld out_vld 1 1 } } }
	P_6 { ap_vld {  { P_6 out_data 1 32 }  { P_6_ap_vld out_vld 1 1 } } }
	P_7 { ap_vld {  { P_7 out_data 1 32 }  { P_7_ap_vld out_vld 1 1 } } }
	P_8 { ap_vld {  { P_8 out_data 1 32 }  { P_8_ap_vld out_vld 1 1 } } }
	P_9 { ap_vld {  { P_9 out_data 1 32 }  { P_9_ap_vld out_vld 1 1 } } }
	P_10 { ap_vld {  { P_10 out_data 1 32 }  { P_10_ap_vld out_vld 1 1 } } }
	P_11 { ap_vld {  { P_11 out_data 1 32 }  { P_11_ap_vld out_vld 1 1 } } }
	P_12 { ap_vld {  { P_12 out_data 1 32 }  { P_12_ap_vld out_vld 1 1 } } }
	P_13 { ap_vld {  { P_13 out_data 1 32 }  { P_13_ap_vld out_vld 1 1 } } }
	P_14 { ap_vld {  { P_14 out_data 1 32 }  { P_14_ap_vld out_vld 1 1 } } }
	P_15 { ap_vld {  { P_15 out_data 1 32 }  { P_15_ap_vld out_vld 1 1 } } }
	P_16 { ap_vld {  { P_16 out_data 1 32 }  { P_16_ap_vld out_vld 1 1 } } }
	P_17 { ap_vld {  { P_17 out_data 1 32 }  { P_17_ap_vld out_vld 1 1 } } }
	S_0 { ap_memory {  { S_0_address0 mem_address 1 8 }  { S_0_ce0 mem_ce 1 1 }  { S_0_we0 mem_we 1 1 }  { S_0_d0 mem_din 1 32 }  { S_0_q0 mem_dout 0 32 }  { S_0_address1 MemPortADDR2 1 8 }  { S_0_ce1 MemPortCE2 1 1 }  { S_0_we1 MemPortWE2 1 1 }  { S_0_d1 MemPortDIN2 1 32 } } }
	S_1 { ap_memory {  { S_1_address0 mem_address 1 8 }  { S_1_ce0 mem_ce 1 1 }  { S_1_we0 mem_we 1 1 }  { S_1_d0 mem_din 1 32 }  { S_1_q0 mem_dout 0 32 }  { S_1_address1 MemPortADDR2 1 8 }  { S_1_ce1 MemPortCE2 1 1 }  { S_1_we1 MemPortWE2 1 1 }  { S_1_d1 MemPortDIN2 1 32 } } }
	S_2 { ap_memory {  { S_2_address0 mem_address 1 8 }  { S_2_ce0 mem_ce 1 1 }  { S_2_we0 mem_we 1 1 }  { S_2_d0 mem_din 1 32 }  { S_2_q0 mem_dout 0 32 }  { S_2_address1 MemPortADDR2 1 8 }  { S_2_ce1 MemPortCE2 1 1 }  { S_2_we1 MemPortWE2 1 1 }  { S_2_d1 MemPortDIN2 1 32 } } }
	S_3 { ap_memory {  { S_3_address0 mem_address 1 8 }  { S_3_ce0 mem_ce 1 1 }  { S_3_we0 mem_we 1 1 }  { S_3_d0 mem_din 1 32 }  { S_3_q0 mem_dout 0 32 }  { S_3_address1 MemPortADDR2 1 8 }  { S_3_ce1 MemPortCE2 1 1 }  { S_3_we1 MemPortWE2 1 1 }  { S_3_d1 MemPortDIN2 1 32 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}

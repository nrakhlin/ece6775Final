set moduleName Blowfish_SetKey_Encrypt_Decrypt
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
set C_modelName {Blowfish_SetKey_Encrypt_Decrypt}
set C_modelType { void 0 }
set C_modelArgList {
	{ set_key uint 1 regular  }
	{ key int 8 regular {array 56 { 1 1 } 1 1 }  }
	{ key_size int 64 regular  }
	{ plaintext int 8 regular {array 8 { 1 1 } 1 1 }  }
	{ decryptedtext int 8 regular {array 8 { 0 0 } 0 1 }  }
	{ P_0 int 32 regular {pointer 2}  }
	{ P_1 int 32 regular {pointer 2}  }
	{ P_2 int 32 regular {pointer 2}  }
	{ P_3 int 32 regular {pointer 2}  }
	{ P_4 int 32 regular {pointer 2}  }
	{ P_5 int 32 regular {pointer 2}  }
	{ P_6 int 32 regular {pointer 2}  }
	{ P_7 int 32 regular {pointer 2}  }
	{ P_8 int 32 regular {pointer 2}  }
	{ P_9 int 32 regular {pointer 2}  }
	{ P_10 int 32 regular {pointer 2}  }
	{ P_11 int 32 regular {pointer 2}  }
	{ P_12 int 32 regular {pointer 2}  }
	{ P_13 int 32 regular {pointer 2}  }
	{ P_14 int 32 regular {pointer 2}  }
	{ P_15 int 32 regular {pointer 2}  }
	{ P_16 int 32 regular {pointer 2}  }
	{ P_17 int 32 regular {pointer 2}  }
	{ S_0 int 32 regular {array 256 { 2 0 } 1 1 }  }
	{ S_1 int 32 regular {array 256 { 2 0 } 1 1 }  }
	{ S_2 int 32 regular {array 256 { 2 0 } 1 1 }  }
	{ S_3 int 32 regular {array 256 { 2 0 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "set_key", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "set_key","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "key", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "key","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 55,"step" : 1}]}]}]} , 
 	{ "Name" : "key_size", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "key_size","cData": "long unsigned int","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "plaintext", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "plaintext","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 7,"step" : 1}]}]}]} , 
 	{ "Name" : "decryptedtext", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "decryptedtext","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 7,"step" : 1}]}]}]} , 
 	{ "Name" : "P_0", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "P","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 2}]}]}]} , 
 	{ "Name" : "P_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "P","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 1,"up" : 1,"step" : 2}]}]}]} , 
 	{ "Name" : "P_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "P","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 2,"up" : 2,"step" : 2}]}]}]} , 
 	{ "Name" : "P_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "P","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 3,"up" : 3,"step" : 2}]}]}]} , 
 	{ "Name" : "P_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "P","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 4,"up" : 4,"step" : 2}]}]}]} , 
 	{ "Name" : "P_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "P","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 5,"up" : 5,"step" : 2}]}]}]} , 
 	{ "Name" : "P_6", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "P","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 6,"up" : 6,"step" : 2}]}]}]} , 
 	{ "Name" : "P_7", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "P","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 7,"up" : 7,"step" : 2}]}]}]} , 
 	{ "Name" : "P_8", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "P","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 8,"up" : 8,"step" : 2}]}]}]} , 
 	{ "Name" : "P_9", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "P","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 9,"up" : 9,"step" : 2}]}]}]} , 
 	{ "Name" : "P_10", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "P","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 10,"up" : 10,"step" : 2}]}]}]} , 
 	{ "Name" : "P_11", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "P","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 11,"up" : 11,"step" : 2}]}]}]} , 
 	{ "Name" : "P_12", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "P","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 12,"up" : 12,"step" : 2}]}]}]} , 
 	{ "Name" : "P_13", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "P","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 13,"up" : 13,"step" : 2}]}]}]} , 
 	{ "Name" : "P_14", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "P","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 14,"up" : 14,"step" : 2}]}]}]} , 
 	{ "Name" : "P_15", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "P","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 15,"up" : 15,"step" : 2}]}]}]} , 
 	{ "Name" : "P_16", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "P","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 16,"up" : 16,"step" : 2}]}]}]} , 
 	{ "Name" : "P_17", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "P","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 17,"up" : 17,"step" : 2}]}]}]} , 
 	{ "Name" : "S_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "S","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 2},{"low" : 0,"up" : 255,"step" : 1}]}]}]} , 
 	{ "Name" : "S_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "S","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 1,"up" : 1,"step" : 2},{"low" : 0,"up" : 255,"step" : 1}]}]}]} , 
 	{ "Name" : "S_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "S","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 2,"up" : 2,"step" : 2},{"low" : 0,"up" : 255,"step" : 1}]}]}]} , 
 	{ "Name" : "S_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "S","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 3,"up" : 3,"step" : 2},{"low" : 0,"up" : 255,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 118
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ set_key sc_in sc_logic 1 signal 0 } 
	{ key_address0 sc_out sc_lv 6 signal 1 } 
	{ key_ce0 sc_out sc_logic 1 signal 1 } 
	{ key_q0 sc_in sc_lv 8 signal 1 } 
	{ key_address1 sc_out sc_lv 6 signal 1 } 
	{ key_ce1 sc_out sc_logic 1 signal 1 } 
	{ key_q1 sc_in sc_lv 8 signal 1 } 
	{ key_size sc_in sc_lv 64 signal 2 } 
	{ plaintext_address0 sc_out sc_lv 3 signal 3 } 
	{ plaintext_ce0 sc_out sc_logic 1 signal 3 } 
	{ plaintext_q0 sc_in sc_lv 8 signal 3 } 
	{ plaintext_address1 sc_out sc_lv 3 signal 3 } 
	{ plaintext_ce1 sc_out sc_logic 1 signal 3 } 
	{ plaintext_q1 sc_in sc_lv 8 signal 3 } 
	{ decryptedtext_address0 sc_out sc_lv 3 signal 4 } 
	{ decryptedtext_ce0 sc_out sc_logic 1 signal 4 } 
	{ decryptedtext_we0 sc_out sc_logic 1 signal 4 } 
	{ decryptedtext_d0 sc_out sc_lv 8 signal 4 } 
	{ decryptedtext_address1 sc_out sc_lv 3 signal 4 } 
	{ decryptedtext_ce1 sc_out sc_logic 1 signal 4 } 
	{ decryptedtext_we1 sc_out sc_logic 1 signal 4 } 
	{ decryptedtext_d1 sc_out sc_lv 8 signal 4 } 
	{ P_0_i sc_in sc_lv 32 signal 5 } 
	{ P_0_o sc_out sc_lv 32 signal 5 } 
	{ P_0_o_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ P_1_i sc_in sc_lv 32 signal 6 } 
	{ P_1_o sc_out sc_lv 32 signal 6 } 
	{ P_1_o_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ P_2_i sc_in sc_lv 32 signal 7 } 
	{ P_2_o sc_out sc_lv 32 signal 7 } 
	{ P_2_o_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ P_3_i sc_in sc_lv 32 signal 8 } 
	{ P_3_o sc_out sc_lv 32 signal 8 } 
	{ P_3_o_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ P_4_i sc_in sc_lv 32 signal 9 } 
	{ P_4_o sc_out sc_lv 32 signal 9 } 
	{ P_4_o_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ P_5_i sc_in sc_lv 32 signal 10 } 
	{ P_5_o sc_out sc_lv 32 signal 10 } 
	{ P_5_o_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ P_6_i sc_in sc_lv 32 signal 11 } 
	{ P_6_o sc_out sc_lv 32 signal 11 } 
	{ P_6_o_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ P_7_i sc_in sc_lv 32 signal 12 } 
	{ P_7_o sc_out sc_lv 32 signal 12 } 
	{ P_7_o_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ P_8_i sc_in sc_lv 32 signal 13 } 
	{ P_8_o sc_out sc_lv 32 signal 13 } 
	{ P_8_o_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ P_9_i sc_in sc_lv 32 signal 14 } 
	{ P_9_o sc_out sc_lv 32 signal 14 } 
	{ P_9_o_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ P_10_i sc_in sc_lv 32 signal 15 } 
	{ P_10_o sc_out sc_lv 32 signal 15 } 
	{ P_10_o_ap_vld sc_out sc_logic 1 outvld 15 } 
	{ P_11_i sc_in sc_lv 32 signal 16 } 
	{ P_11_o sc_out sc_lv 32 signal 16 } 
	{ P_11_o_ap_vld sc_out sc_logic 1 outvld 16 } 
	{ P_12_i sc_in sc_lv 32 signal 17 } 
	{ P_12_o sc_out sc_lv 32 signal 17 } 
	{ P_12_o_ap_vld sc_out sc_logic 1 outvld 17 } 
	{ P_13_i sc_in sc_lv 32 signal 18 } 
	{ P_13_o sc_out sc_lv 32 signal 18 } 
	{ P_13_o_ap_vld sc_out sc_logic 1 outvld 18 } 
	{ P_14_i sc_in sc_lv 32 signal 19 } 
	{ P_14_o sc_out sc_lv 32 signal 19 } 
	{ P_14_o_ap_vld sc_out sc_logic 1 outvld 19 } 
	{ P_15_i sc_in sc_lv 32 signal 20 } 
	{ P_15_o sc_out sc_lv 32 signal 20 } 
	{ P_15_o_ap_vld sc_out sc_logic 1 outvld 20 } 
	{ P_16_i sc_in sc_lv 32 signal 21 } 
	{ P_16_o sc_out sc_lv 32 signal 21 } 
	{ P_16_o_ap_vld sc_out sc_logic 1 outvld 21 } 
	{ P_17_i sc_in sc_lv 32 signal 22 } 
	{ P_17_o sc_out sc_lv 32 signal 22 } 
	{ P_17_o_ap_vld sc_out sc_logic 1 outvld 22 } 
	{ S_0_address0 sc_out sc_lv 8 signal 23 } 
	{ S_0_ce0 sc_out sc_logic 1 signal 23 } 
	{ S_0_we0 sc_out sc_logic 1 signal 23 } 
	{ S_0_d0 sc_out sc_lv 32 signal 23 } 
	{ S_0_q0 sc_in sc_lv 32 signal 23 } 
	{ S_0_address1 sc_out sc_lv 8 signal 23 } 
	{ S_0_ce1 sc_out sc_logic 1 signal 23 } 
	{ S_0_we1 sc_out sc_logic 1 signal 23 } 
	{ S_0_d1 sc_out sc_lv 32 signal 23 } 
	{ S_1_address0 sc_out sc_lv 8 signal 24 } 
	{ S_1_ce0 sc_out sc_logic 1 signal 24 } 
	{ S_1_we0 sc_out sc_logic 1 signal 24 } 
	{ S_1_d0 sc_out sc_lv 32 signal 24 } 
	{ S_1_q0 sc_in sc_lv 32 signal 24 } 
	{ S_1_address1 sc_out sc_lv 8 signal 24 } 
	{ S_1_ce1 sc_out sc_logic 1 signal 24 } 
	{ S_1_we1 sc_out sc_logic 1 signal 24 } 
	{ S_1_d1 sc_out sc_lv 32 signal 24 } 
	{ S_2_address0 sc_out sc_lv 8 signal 25 } 
	{ S_2_ce0 sc_out sc_logic 1 signal 25 } 
	{ S_2_we0 sc_out sc_logic 1 signal 25 } 
	{ S_2_d0 sc_out sc_lv 32 signal 25 } 
	{ S_2_q0 sc_in sc_lv 32 signal 25 } 
	{ S_2_address1 sc_out sc_lv 8 signal 25 } 
	{ S_2_ce1 sc_out sc_logic 1 signal 25 } 
	{ S_2_we1 sc_out sc_logic 1 signal 25 } 
	{ S_2_d1 sc_out sc_lv 32 signal 25 } 
	{ S_3_address0 sc_out sc_lv 8 signal 26 } 
	{ S_3_ce0 sc_out sc_logic 1 signal 26 } 
	{ S_3_we0 sc_out sc_logic 1 signal 26 } 
	{ S_3_d0 sc_out sc_lv 32 signal 26 } 
	{ S_3_q0 sc_in sc_lv 32 signal 26 } 
	{ S_3_address1 sc_out sc_lv 8 signal 26 } 
	{ S_3_ce1 sc_out sc_logic 1 signal 26 } 
	{ S_3_we1 sc_out sc_logic 1 signal 26 } 
	{ S_3_d1 sc_out sc_lv 32 signal 26 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "set_key", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "set_key", "role": "default" }} , 
 	{ "name": "key_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "key", "role": "address0" }} , 
 	{ "name": "key_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "key", "role": "ce0" }} , 
 	{ "name": "key_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "key", "role": "q0" }} , 
 	{ "name": "key_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "key", "role": "address1" }} , 
 	{ "name": "key_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "key", "role": "ce1" }} , 
 	{ "name": "key_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "key", "role": "q1" }} , 
 	{ "name": "key_size", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "key_size", "role": "default" }} , 
 	{ "name": "plaintext_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "plaintext", "role": "address0" }} , 
 	{ "name": "plaintext_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "plaintext", "role": "ce0" }} , 
 	{ "name": "plaintext_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "plaintext", "role": "q0" }} , 
 	{ "name": "plaintext_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "plaintext", "role": "address1" }} , 
 	{ "name": "plaintext_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "plaintext", "role": "ce1" }} , 
 	{ "name": "plaintext_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "plaintext", "role": "q1" }} , 
 	{ "name": "decryptedtext_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "decryptedtext", "role": "address0" }} , 
 	{ "name": "decryptedtext_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "decryptedtext", "role": "ce0" }} , 
 	{ "name": "decryptedtext_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "decryptedtext", "role": "we0" }} , 
 	{ "name": "decryptedtext_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "decryptedtext", "role": "d0" }} , 
 	{ "name": "decryptedtext_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "decryptedtext", "role": "address1" }} , 
 	{ "name": "decryptedtext_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "decryptedtext", "role": "ce1" }} , 
 	{ "name": "decryptedtext_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "decryptedtext", "role": "we1" }} , 
 	{ "name": "decryptedtext_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "decryptedtext", "role": "d1" }} , 
 	{ "name": "P_0_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_0", "role": "i" }} , 
 	{ "name": "P_0_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_0", "role": "o" }} , 
 	{ "name": "P_0_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "P_0", "role": "o_ap_vld" }} , 
 	{ "name": "P_1_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_1", "role": "i" }} , 
 	{ "name": "P_1_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_1", "role": "o" }} , 
 	{ "name": "P_1_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "P_1", "role": "o_ap_vld" }} , 
 	{ "name": "P_2_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_2", "role": "i" }} , 
 	{ "name": "P_2_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_2", "role": "o" }} , 
 	{ "name": "P_2_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "P_2", "role": "o_ap_vld" }} , 
 	{ "name": "P_3_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_3", "role": "i" }} , 
 	{ "name": "P_3_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_3", "role": "o" }} , 
 	{ "name": "P_3_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "P_3", "role": "o_ap_vld" }} , 
 	{ "name": "P_4_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_4", "role": "i" }} , 
 	{ "name": "P_4_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_4", "role": "o" }} , 
 	{ "name": "P_4_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "P_4", "role": "o_ap_vld" }} , 
 	{ "name": "P_5_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_5", "role": "i" }} , 
 	{ "name": "P_5_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_5", "role": "o" }} , 
 	{ "name": "P_5_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "P_5", "role": "o_ap_vld" }} , 
 	{ "name": "P_6_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_6", "role": "i" }} , 
 	{ "name": "P_6_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_6", "role": "o" }} , 
 	{ "name": "P_6_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "P_6", "role": "o_ap_vld" }} , 
 	{ "name": "P_7_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_7", "role": "i" }} , 
 	{ "name": "P_7_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_7", "role": "o" }} , 
 	{ "name": "P_7_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "P_7", "role": "o_ap_vld" }} , 
 	{ "name": "P_8_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_8", "role": "i" }} , 
 	{ "name": "P_8_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_8", "role": "o" }} , 
 	{ "name": "P_8_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "P_8", "role": "o_ap_vld" }} , 
 	{ "name": "P_9_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_9", "role": "i" }} , 
 	{ "name": "P_9_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_9", "role": "o" }} , 
 	{ "name": "P_9_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "P_9", "role": "o_ap_vld" }} , 
 	{ "name": "P_10_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_10", "role": "i" }} , 
 	{ "name": "P_10_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_10", "role": "o" }} , 
 	{ "name": "P_10_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "P_10", "role": "o_ap_vld" }} , 
 	{ "name": "P_11_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_11", "role": "i" }} , 
 	{ "name": "P_11_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_11", "role": "o" }} , 
 	{ "name": "P_11_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "P_11", "role": "o_ap_vld" }} , 
 	{ "name": "P_12_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_12", "role": "i" }} , 
 	{ "name": "P_12_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_12", "role": "o" }} , 
 	{ "name": "P_12_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "P_12", "role": "o_ap_vld" }} , 
 	{ "name": "P_13_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_13", "role": "i" }} , 
 	{ "name": "P_13_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_13", "role": "o" }} , 
 	{ "name": "P_13_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "P_13", "role": "o_ap_vld" }} , 
 	{ "name": "P_14_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_14", "role": "i" }} , 
 	{ "name": "P_14_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_14", "role": "o" }} , 
 	{ "name": "P_14_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "P_14", "role": "o_ap_vld" }} , 
 	{ "name": "P_15_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_15", "role": "i" }} , 
 	{ "name": "P_15_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_15", "role": "o" }} , 
 	{ "name": "P_15_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "P_15", "role": "o_ap_vld" }} , 
 	{ "name": "P_16_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_16", "role": "i" }} , 
 	{ "name": "P_16_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_16", "role": "o" }} , 
 	{ "name": "P_16_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "P_16", "role": "o_ap_vld" }} , 
 	{ "name": "P_17_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_17", "role": "i" }} , 
 	{ "name": "P_17_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_17", "role": "o" }} , 
 	{ "name": "P_17_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "P_17", "role": "o_ap_vld" }} , 
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "47", "49"],
		"CDFG" : "Blowfish_SetKey_Encrypt_Decrypt",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "76", "EstimateLatencyMax" : "19313",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Blowfish_SetKey_fu_328"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Blowfish_Encrypt_fu_346"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Blowfish_Decrypt_fu_397"}],
		"Port" : [
			{"Name" : "set_key", "Type" : "None", "Direction" : "I"},
			{"Name" : "key", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_Blowfish_SetKey_fu_328", "Port" : "key"}]},
			{"Name" : "key_size", "Type" : "None", "Direction" : "I"},
			{"Name" : "plaintext", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_Blowfish_Encrypt_fu_346", "Port" : "plaintext"}]},
			{"Name" : "decryptedtext", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "49", "SubInstance" : "grp_Blowfish_Decrypt_fu_397", "Port" : "decryptedtext"}]},
			{"Name" : "P_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "P_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "P_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "P_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "P_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "P_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "P_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "P_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "P_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "P_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "P_10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "P_11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "P_12", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "P_13", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "P_14", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "P_15", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "P_16", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "P_17", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "S_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_Blowfish_SetKey_fu_328", "Port" : "S_0"},
					{"ID" : "47", "SubInstance" : "grp_Blowfish_Encrypt_fu_346", "Port" : "S_0"},
					{"ID" : "49", "SubInstance" : "grp_Blowfish_Decrypt_fu_397", "Port" : "S_0"}]},
			{"Name" : "S_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_Blowfish_SetKey_fu_328", "Port" : "S_1"},
					{"ID" : "47", "SubInstance" : "grp_Blowfish_Encrypt_fu_346", "Port" : "S_1"},
					{"ID" : "49", "SubInstance" : "grp_Blowfish_Decrypt_fu_397", "Port" : "S_1"}]},
			{"Name" : "S_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_Blowfish_SetKey_fu_328", "Port" : "S_2"},
					{"ID" : "47", "SubInstance" : "grp_Blowfish_Encrypt_fu_346", "Port" : "S_2"},
					{"ID" : "49", "SubInstance" : "grp_Blowfish_Decrypt_fu_397", "Port" : "S_2"}]},
			{"Name" : "S_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_Blowfish_SetKey_fu_328", "Port" : "S_3"},
					{"ID" : "47", "SubInstance" : "grp_Blowfish_Encrypt_fu_346", "Port" : "S_3"},
					{"ID" : "49", "SubInstance" : "grp_Blowfish_Decrypt_fu_397", "Port" : "S_3"}]},
			{"Name" : "initial_sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_Blowfish_SetKey_fu_328", "Port" : "initial_sbox"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ciphertext_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Blowfish_SetKey_fu_328", "Parent" : "0", "Child" : ["3", "4", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46"],
		"CDFG" : "Blowfish_SetKey",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "19236", "EstimateLatencyMax" : "19236",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Encrypt_SetKey_fu_1172"},
			{"State" : "ap_ST_fsm_state29", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Encrypt_SetKey_fu_1172"},
			{"State" : "ap_ST_fsm_state31", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Encrypt_SetKey_fu_1172"},
			{"State" : "ap_ST_fsm_state33", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Encrypt_SetKey_fu_1172"},
			{"State" : "ap_ST_fsm_state35", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Encrypt_SetKey_fu_1172"},
			{"State" : "ap_ST_fsm_state37", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Encrypt_SetKey_fu_1172"},
			{"State" : "ap_ST_fsm_state39", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Encrypt_SetKey_fu_1172"},
			{"State" : "ap_ST_fsm_state41", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Encrypt_SetKey_fu_1172"},
			{"State" : "ap_ST_fsm_state43", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Encrypt_SetKey_fu_1172"},
			{"State" : "ap_ST_fsm_state45", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Encrypt_SetKey_fu_1172"},
			{"State" : "ap_ST_fsm_state48", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Encrypt_SetKey_fu_1172"},
			{"State" : "ap_ST_fsm_state51", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Encrypt_SetKey_fu_1172"},
			{"State" : "ap_ST_fsm_state54", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Encrypt_SetKey_fu_1172"}],
		"Port" : [
			{"Name" : "key", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "key_size", "Type" : "None", "Direction" : "I"},
			{"Name" : "S_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_Encrypt_SetKey_fu_1172", "Port" : "S_0"}]},
			{"Name" : "S_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_Encrypt_SetKey_fu_1172", "Port" : "S_1"}]},
			{"Name" : "S_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_Encrypt_SetKey_fu_1172", "Port" : "S_2"}]},
			{"Name" : "S_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_Encrypt_SetKey_fu_1172", "Port" : "S_3"}]},
			{"Name" : "initial_sbox", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Blowfish_SetKey_fu_328.initial_sbox_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Blowfish_SetKey_fu_328.grp_Encrypt_SetKey_fu_1172", "Parent" : "2", "Child" : ["5"],
		"CDFG" : "Encrypt_SetKey",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "32", "EstimateLatencyMax" : "32",
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
					{"ID" : "5", "SubInstance" : "grp_feistel_fu_174", "Port" : "S_0"}]},
			{"Name" : "S_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_feistel_fu_174", "Port" : "S_1"}]},
			{"Name" : "S_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_feistel_fu_174", "Port" : "S_2"}]},
			{"Name" : "S_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_feistel_fu_174", "Port" : "S_3"}]}]},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Blowfish_SetKey_fu_328.grp_Encrypt_SetKey_fu_1172.grp_feistel_fu_174", "Parent" : "4",
		"CDFG" : "feistel",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "S_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "S_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "S_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "S_3", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Blowfish_SetKey_fu_328.Blowfish_SetKey_Ecud_U30", "Parent" : "2"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Blowfish_SetKey_fu_328.Blowfish_SetKey_Ecud_U31", "Parent" : "2"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Blowfish_SetKey_fu_328.Blowfish_SetKey_Ecud_U32", "Parent" : "2"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Blowfish_SetKey_fu_328.Blowfish_SetKey_Ecud_U33", "Parent" : "2"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Blowfish_SetKey_fu_328.Blowfish_SetKey_EdEe_U34", "Parent" : "2"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Blowfish_SetKey_fu_328.Blowfish_SetKey_EeOg_U35", "Parent" : "2"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Blowfish_SetKey_fu_328.Blowfish_SetKey_EeOg_U36", "Parent" : "2"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Blowfish_SetKey_fu_328.Blowfish_SetKey_EeOg_U37", "Parent" : "2"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Blowfish_SetKey_fu_328.Blowfish_SetKey_EeOg_U38", "Parent" : "2"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Blowfish_SetKey_fu_328.Blowfish_SetKey_EeOg_U39", "Parent" : "2"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Blowfish_SetKey_fu_328.Blowfish_SetKey_EeOg_U40", "Parent" : "2"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Blowfish_SetKey_fu_328.Blowfish_SetKey_EeOg_U41", "Parent" : "2"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Blowfish_SetKey_fu_328.Blowfish_SetKey_EeOg_U42", "Parent" : "2"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Blowfish_SetKey_fu_328.Blowfish_SetKey_EeOg_U43", "Parent" : "2"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Blowfish_SetKey_fu_328.Blowfish_SetKey_EeOg_U44", "Parent" : "2"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Blowfish_SetKey_fu_328.Blowfish_SetKey_EeOg_U45", "Parent" : "2"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Blowfish_SetKey_fu_328.Blowfish_SetKey_EeOg_U46", "Parent" : "2"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Blowfish_SetKey_fu_328.Blowfish_SetKey_EeOg_U47", "Parent" : "2"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Blowfish_SetKey_fu_328.Blowfish_SetKey_EeOg_U48", "Parent" : "2"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Blowfish_SetKey_fu_328.Blowfish_SetKey_EeOg_U49", "Parent" : "2"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Blowfish_SetKey_fu_328.Blowfish_SetKey_EeOg_U50", "Parent" : "2"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Blowfish_SetKey_fu_328.Blowfish_SetKey_EeOg_U51", "Parent" : "2"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Blowfish_SetKey_fu_328.Blowfish_SetKey_EeOg_U52", "Parent" : "2"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Blowfish_SetKey_fu_328.Blowfish_SetKey_EeOg_U53", "Parent" : "2"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Blowfish_SetKey_fu_328.Blowfish_SetKey_EeOg_U54", "Parent" : "2"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Blowfish_SetKey_fu_328.Blowfish_SetKey_EeOg_U55", "Parent" : "2"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Blowfish_SetKey_fu_328.Blowfish_SetKey_EeOg_U56", "Parent" : "2"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Blowfish_SetKey_fu_328.Blowfish_SetKey_EeOg_U57", "Parent" : "2"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Blowfish_SetKey_fu_328.Blowfish_SetKey_EeOg_U58", "Parent" : "2"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Blowfish_SetKey_fu_328.Blowfish_SetKey_EeOg_U59", "Parent" : "2"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Blowfish_SetKey_fu_328.Blowfish_SetKey_EeOg_U60", "Parent" : "2"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Blowfish_SetKey_fu_328.Blowfish_SetKey_EeOg_U61", "Parent" : "2"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Blowfish_SetKey_fu_328.Blowfish_SetKey_EeOg_U62", "Parent" : "2"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Blowfish_SetKey_fu_328.Blowfish_SetKey_EeOg_U63", "Parent" : "2"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Blowfish_SetKey_fu_328.Blowfish_SetKey_EeOg_U64", "Parent" : "2"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Blowfish_SetKey_fu_328.Blowfish_SetKey_EeOg_U65", "Parent" : "2"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Blowfish_SetKey_fu_328.Blowfish_SetKey_EeOg_U66", "Parent" : "2"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Blowfish_SetKey_fu_328.Blowfish_SetKey_EeOg_U67", "Parent" : "2"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Blowfish_SetKey_fu_328.Blowfish_SetKey_EeOg_U68", "Parent" : "2"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Blowfish_SetKey_fu_328.Blowfish_SetKey_EeOg_U69", "Parent" : "2"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Blowfish_SetKey_fu_328.Blowfish_SetKey_EeOg_U70", "Parent" : "2"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Blowfish_Encrypt_fu_346", "Parent" : "0", "Child" : ["48"],
		"CDFG" : "Blowfish_Encrypt",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "36", "EstimateLatencyMax" : "36",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "plaintext", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ciphertext", "Type" : "Memory", "Direction" : "O"},
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
					{"ID" : "48", "SubInstance" : "grp_feistel_fu_362", "Port" : "S_0"}]},
			{"Name" : "S_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_feistel_fu_362", "Port" : "S_1"}]},
			{"Name" : "S_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_feistel_fu_362", "Port" : "S_2"}]},
			{"Name" : "S_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_feistel_fu_362", "Port" : "S_3"}]}]},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Blowfish_Encrypt_fu_346.grp_feistel_fu_362", "Parent" : "47",
		"CDFG" : "feistel",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "S_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "S_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "S_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "S_3", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Blowfish_Decrypt_fu_397", "Parent" : "0", "Child" : ["50"],
		"CDFG" : "Blowfish_Decrypt",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "36", "EstimateLatencyMax" : "36",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "ciphertext", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "decryptedtext", "Type" : "Memory", "Direction" : "O"},
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
					{"ID" : "50", "SubInstance" : "grp_feistel_fu_362", "Port" : "S_0"}]},
			{"Name" : "S_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "50", "SubInstance" : "grp_feistel_fu_362", "Port" : "S_1"}]},
			{"Name" : "S_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "50", "SubInstance" : "grp_feistel_fu_362", "Port" : "S_2"}]},
			{"Name" : "S_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "50", "SubInstance" : "grp_feistel_fu_362", "Port" : "S_3"}]}]},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Blowfish_Decrypt_fu_397.grp_feistel_fu_362", "Parent" : "49",
		"CDFG" : "feistel",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "S_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "S_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "S_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "S_3", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	Blowfish_SetKey_Encrypt_Decrypt {
		set_key {Type I LastRead 0 FirstWrite -1}
		key {Type I LastRead 17 FirstWrite -1}
		key_size {Type I LastRead 0 FirstWrite -1}
		plaintext {Type I LastRead 4 FirstWrite -1}
		decryptedtext {Type O LastRead -1 FirstWrite 33}
		P_0 {Type IO LastRead 4 FirstWrite 1}
		P_1 {Type IO LastRead 4 FirstWrite 1}
		P_2 {Type IO LastRead 4 FirstWrite 1}
		P_3 {Type IO LastRead 4 FirstWrite 1}
		P_4 {Type IO LastRead 4 FirstWrite 1}
		P_5 {Type IO LastRead 4 FirstWrite 1}
		P_6 {Type IO LastRead 4 FirstWrite 1}
		P_7 {Type IO LastRead 4 FirstWrite 1}
		P_8 {Type IO LastRead 4 FirstWrite 1}
		P_9 {Type IO LastRead 4 FirstWrite 1}
		P_10 {Type IO LastRead 4 FirstWrite 1}
		P_11 {Type IO LastRead 4 FirstWrite 1}
		P_12 {Type IO LastRead 4 FirstWrite 1}
		P_13 {Type IO LastRead 4 FirstWrite 1}
		P_14 {Type IO LastRead 4 FirstWrite 1}
		P_15 {Type IO LastRead 4 FirstWrite 1}
		P_16 {Type IO LastRead 4 FirstWrite 1}
		P_17 {Type IO LastRead 4 FirstWrite 1}
		S_0 {Type IO LastRead 0 FirstWrite -1}
		S_1 {Type IO LastRead 0 FirstWrite -1}
		S_2 {Type IO LastRead 0 FirstWrite -1}
		S_3 {Type IO LastRead 0 FirstWrite -1}
		initial_sbox {Type I LastRead -1 FirstWrite -1}}
	Blowfish_SetKey {
		key {Type I LastRead 17 FirstWrite -1}
		key_size {Type I LastRead 0 FirstWrite -1}
		S_0 {Type IO LastRead 0 FirstWrite -1}
		S_1 {Type IO LastRead 0 FirstWrite -1}
		S_2 {Type IO LastRead 0 FirstWrite -1}
		S_3 {Type IO LastRead 0 FirstWrite -1}
		initial_sbox {Type I LastRead -1 FirstWrite -1}}
	Encrypt_SetKey {
		left_read {Type I LastRead 0 FirstWrite -1}
		right_read {Type I LastRead 2 FirstWrite -1}
		P_0_read {Type I LastRead 0 FirstWrite -1}
		P_1_read {Type I LastRead 2 FirstWrite -1}
		P_2_read {Type I LastRead 4 FirstWrite -1}
		P_3_read {Type I LastRead 6 FirstWrite -1}
		P_4_read {Type I LastRead 8 FirstWrite -1}
		P_5_read {Type I LastRead 10 FirstWrite -1}
		P_6_read {Type I LastRead 12 FirstWrite -1}
		P_7_read {Type I LastRead 14 FirstWrite -1}
		P_8_read {Type I LastRead 16 FirstWrite -1}
		P_9_read {Type I LastRead 18 FirstWrite -1}
		P_10_read {Type I LastRead 20 FirstWrite -1}
		P_11_read {Type I LastRead 22 FirstWrite -1}
		P_12_read {Type I LastRead 24 FirstWrite -1}
		P_13_read {Type I LastRead 26 FirstWrite -1}
		P_14_read {Type I LastRead 28 FirstWrite -1}
		P_15_read {Type I LastRead 30 FirstWrite -1}
		P_16_read {Type I LastRead 32 FirstWrite -1}
		P_17_read {Type I LastRead 32 FirstWrite -1}
		S_0 {Type I LastRead 0 FirstWrite -1}
		S_1 {Type I LastRead 0 FirstWrite -1}
		S_2 {Type I LastRead 0 FirstWrite -1}
		S_3 {Type I LastRead 0 FirstWrite -1}}
	feistel {
		x {Type I LastRead 0 FirstWrite -1}
		S_0 {Type I LastRead 0 FirstWrite -1}
		S_1 {Type I LastRead 0 FirstWrite -1}
		S_2 {Type I LastRead 0 FirstWrite -1}
		S_3 {Type I LastRead 0 FirstWrite -1}}
	Blowfish_Encrypt {
		plaintext {Type I LastRead 4 FirstWrite -1}
		ciphertext {Type O LastRead -1 FirstWrite 33}
		P_0_read {Type I LastRead 3 FirstWrite -1}
		P_1_read {Type I LastRead 5 FirstWrite -1}
		P_2_read {Type I LastRead 7 FirstWrite -1}
		P_3_read {Type I LastRead 9 FirstWrite -1}
		P_4_read {Type I LastRead 11 FirstWrite -1}
		P_5_read {Type I LastRead 13 FirstWrite -1}
		P_6_read {Type I LastRead 15 FirstWrite -1}
		P_7_read {Type I LastRead 17 FirstWrite -1}
		P_8_read {Type I LastRead 19 FirstWrite -1}
		P_9_read {Type I LastRead 21 FirstWrite -1}
		P_10_read {Type I LastRead 23 FirstWrite -1}
		P_11_read {Type I LastRead 25 FirstWrite -1}
		P_12_read {Type I LastRead 27 FirstWrite -1}
		P_13_read {Type I LastRead 29 FirstWrite -1}
		P_14_read {Type I LastRead 31 FirstWrite -1}
		P_15_read {Type I LastRead 33 FirstWrite -1}
		P_16_read {Type I LastRead 35 FirstWrite -1}
		P_17_read {Type I LastRead 33 FirstWrite -1}
		S_0 {Type I LastRead 0 FirstWrite -1}
		S_1 {Type I LastRead 0 FirstWrite -1}
		S_2 {Type I LastRead 0 FirstWrite -1}
		S_3 {Type I LastRead 0 FirstWrite -1}}
	feistel {
		x {Type I LastRead 0 FirstWrite -1}
		S_0 {Type I LastRead 0 FirstWrite -1}
		S_1 {Type I LastRead 0 FirstWrite -1}
		S_2 {Type I LastRead 0 FirstWrite -1}
		S_3 {Type I LastRead 0 FirstWrite -1}}
	Blowfish_Decrypt {
		ciphertext {Type I LastRead 4 FirstWrite -1}
		decryptedtext {Type O LastRead -1 FirstWrite 33}
		P_0_read {Type I LastRead 33 FirstWrite -1}
		P_1_read {Type I LastRead 35 FirstWrite -1}
		P_2_read {Type I LastRead 33 FirstWrite -1}
		P_3_read {Type I LastRead 31 FirstWrite -1}
		P_4_read {Type I LastRead 29 FirstWrite -1}
		P_5_read {Type I LastRead 27 FirstWrite -1}
		P_6_read {Type I LastRead 25 FirstWrite -1}
		P_7_read {Type I LastRead 23 FirstWrite -1}
		P_8_read {Type I LastRead 21 FirstWrite -1}
		P_9_read {Type I LastRead 19 FirstWrite -1}
		P_10_read {Type I LastRead 17 FirstWrite -1}
		P_11_read {Type I LastRead 15 FirstWrite -1}
		P_12_read {Type I LastRead 13 FirstWrite -1}
		P_13_read {Type I LastRead 11 FirstWrite -1}
		P_14_read {Type I LastRead 9 FirstWrite -1}
		P_15_read {Type I LastRead 7 FirstWrite -1}
		P_16_read {Type I LastRead 5 FirstWrite -1}
		P_17_read {Type I LastRead 3 FirstWrite -1}
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
	{"Name" : "Latency", "Min" : "76", "Max" : "19313"}
	, {"Name" : "Interval", "Min" : "77", "Max" : "19314"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	set_key { ap_none {  { set_key in_data 0 1 } } }
	key { ap_memory {  { key_address0 mem_address 1 6 }  { key_ce0 mem_ce 1 1 }  { key_q0 mem_dout 0 8 }  { key_address1 MemPortADDR2 1 6 }  { key_ce1 MemPortCE2 1 1 }  { key_q1 MemPortDOUT2 0 8 } } }
	key_size { ap_none {  { key_size in_data 0 64 } } }
	plaintext { ap_memory {  { plaintext_address0 mem_address 1 3 }  { plaintext_ce0 mem_ce 1 1 }  { plaintext_q0 mem_dout 0 8 }  { plaintext_address1 MemPortADDR2 1 3 }  { plaintext_ce1 MemPortCE2 1 1 }  { plaintext_q1 MemPortDOUT2 0 8 } } }
	decryptedtext { ap_memory {  { decryptedtext_address0 mem_address 1 3 }  { decryptedtext_ce0 mem_ce 1 1 }  { decryptedtext_we0 mem_we 1 1 }  { decryptedtext_d0 mem_din 1 8 }  { decryptedtext_address1 MemPortADDR2 1 3 }  { decryptedtext_ce1 MemPortCE2 1 1 }  { decryptedtext_we1 MemPortWE2 1 1 }  { decryptedtext_d1 MemPortDIN2 1 8 } } }
	P_0 { ap_ovld {  { P_0_i in_data 0 32 }  { P_0_o out_data 1 32 }  { P_0_o_ap_vld out_vld 1 1 } } }
	P_1 { ap_ovld {  { P_1_i in_data 0 32 }  { P_1_o out_data 1 32 }  { P_1_o_ap_vld out_vld 1 1 } } }
	P_2 { ap_ovld {  { P_2_i in_data 0 32 }  { P_2_o out_data 1 32 }  { P_2_o_ap_vld out_vld 1 1 } } }
	P_3 { ap_ovld {  { P_3_i in_data 0 32 }  { P_3_o out_data 1 32 }  { P_3_o_ap_vld out_vld 1 1 } } }
	P_4 { ap_ovld {  { P_4_i in_data 0 32 }  { P_4_o out_data 1 32 }  { P_4_o_ap_vld out_vld 1 1 } } }
	P_5 { ap_ovld {  { P_5_i in_data 0 32 }  { P_5_o out_data 1 32 }  { P_5_o_ap_vld out_vld 1 1 } } }
	P_6 { ap_ovld {  { P_6_i in_data 0 32 }  { P_6_o out_data 1 32 }  { P_6_o_ap_vld out_vld 1 1 } } }
	P_7 { ap_ovld {  { P_7_i in_data 0 32 }  { P_7_o out_data 1 32 }  { P_7_o_ap_vld out_vld 1 1 } } }
	P_8 { ap_ovld {  { P_8_i in_data 0 32 }  { P_8_o out_data 1 32 }  { P_8_o_ap_vld out_vld 1 1 } } }
	P_9 { ap_ovld {  { P_9_i in_data 0 32 }  { P_9_o out_data 1 32 }  { P_9_o_ap_vld out_vld 1 1 } } }
	P_10 { ap_ovld {  { P_10_i in_data 0 32 }  { P_10_o out_data 1 32 }  { P_10_o_ap_vld out_vld 1 1 } } }
	P_11 { ap_ovld {  { P_11_i in_data 0 32 }  { P_11_o out_data 1 32 }  { P_11_o_ap_vld out_vld 1 1 } } }
	P_12 { ap_ovld {  { P_12_i in_data 0 32 }  { P_12_o out_data 1 32 }  { P_12_o_ap_vld out_vld 1 1 } } }
	P_13 { ap_ovld {  { P_13_i in_data 0 32 }  { P_13_o out_data 1 32 }  { P_13_o_ap_vld out_vld 1 1 } } }
	P_14 { ap_ovld {  { P_14_i in_data 0 32 }  { P_14_o out_data 1 32 }  { P_14_o_ap_vld out_vld 1 1 } } }
	P_15 { ap_ovld {  { P_15_i in_data 0 32 }  { P_15_o out_data 1 32 }  { P_15_o_ap_vld out_vld 1 1 } } }
	P_16 { ap_ovld {  { P_16_i in_data 0 32 }  { P_16_o out_data 1 32 }  { P_16_o_ap_vld out_vld 1 1 } } }
	P_17 { ap_ovld {  { P_17_i in_data 0 32 }  { P_17_o out_data 1 32 }  { P_17_o_ap_vld out_vld 1 1 } } }
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

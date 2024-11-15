set moduleName Blowfish_Encrypt_Decrypt_SetKey
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
set C_modelName {Blowfish::Encrypt_Decrypt_SetKey}
set C_modelType { void 0 }
set C_modelArgList {
	{ Blowfish_pary_s int 32 regular {array 18 { 2 2 } 1 1 }  }
	{ Blowfish_sbox_s int 32 regular {array 1024 { 2 2 } 1 1 }  }
	{ set_key uint 1 regular  }
	{ key int 8 regular {array 56 { 1 1 } 1 1 }  }
	{ key_byte_length int 32 regular  }
	{ decrypted int 8 regular {array 8 { 2 2 } 1 1 }  }
	{ encrypted int 8 regular {array 8 { 2 2 } 1 1 }  }
	{ plaintext int 8 regular {array 8 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "Blowfish_pary_s", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "Blowfish.pary_","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 17,"step" : 1}]}]}]} , 
 	{ "Name" : "Blowfish_sbox_s", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "Blowfish.sbox_","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 3,"step" : 1},{"low" : 0,"up" : 255,"step" : 1}]}]}]} , 
 	{ "Name" : "set_key", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "set_key","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "key", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "key","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 55,"step" : 1}]}]}]} , 
 	{ "Name" : "key_byte_length", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "key_byte_length","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "decrypted", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "decrypted","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 7,"step" : 1}]}]}]} , 
 	{ "Name" : "encrypted", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "encrypted","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 7,"step" : 1}]}]}]} , 
 	{ "Name" : "plaintext", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "plaintext","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 7,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 57
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ Blowfish_pary_s_address0 sc_out sc_lv 5 signal 0 } 
	{ Blowfish_pary_s_ce0 sc_out sc_logic 1 signal 0 } 
	{ Blowfish_pary_s_we0 sc_out sc_logic 1 signal 0 } 
	{ Blowfish_pary_s_d0 sc_out sc_lv 32 signal 0 } 
	{ Blowfish_pary_s_q0 sc_in sc_lv 32 signal 0 } 
	{ Blowfish_pary_s_address1 sc_out sc_lv 5 signal 0 } 
	{ Blowfish_pary_s_ce1 sc_out sc_logic 1 signal 0 } 
	{ Blowfish_pary_s_we1 sc_out sc_logic 1 signal 0 } 
	{ Blowfish_pary_s_d1 sc_out sc_lv 32 signal 0 } 
	{ Blowfish_pary_s_q1 sc_in sc_lv 32 signal 0 } 
	{ Blowfish_sbox_s_address0 sc_out sc_lv 10 signal 1 } 
	{ Blowfish_sbox_s_ce0 sc_out sc_logic 1 signal 1 } 
	{ Blowfish_sbox_s_we0 sc_out sc_logic 1 signal 1 } 
	{ Blowfish_sbox_s_d0 sc_out sc_lv 32 signal 1 } 
	{ Blowfish_sbox_s_q0 sc_in sc_lv 32 signal 1 } 
	{ Blowfish_sbox_s_address1 sc_out sc_lv 10 signal 1 } 
	{ Blowfish_sbox_s_ce1 sc_out sc_logic 1 signal 1 } 
	{ Blowfish_sbox_s_we1 sc_out sc_logic 1 signal 1 } 
	{ Blowfish_sbox_s_d1 sc_out sc_lv 32 signal 1 } 
	{ Blowfish_sbox_s_q1 sc_in sc_lv 32 signal 1 } 
	{ set_key sc_in sc_logic 1 signal 2 } 
	{ key_address0 sc_out sc_lv 6 signal 3 } 
	{ key_ce0 sc_out sc_logic 1 signal 3 } 
	{ key_q0 sc_in sc_lv 8 signal 3 } 
	{ key_address1 sc_out sc_lv 6 signal 3 } 
	{ key_ce1 sc_out sc_logic 1 signal 3 } 
	{ key_q1 sc_in sc_lv 8 signal 3 } 
	{ key_byte_length sc_in sc_lv 32 signal 4 } 
	{ decrypted_address0 sc_out sc_lv 3 signal 5 } 
	{ decrypted_ce0 sc_out sc_logic 1 signal 5 } 
	{ decrypted_we0 sc_out sc_logic 1 signal 5 } 
	{ decrypted_d0 sc_out sc_lv 8 signal 5 } 
	{ decrypted_q0 sc_in sc_lv 8 signal 5 } 
	{ decrypted_address1 sc_out sc_lv 3 signal 5 } 
	{ decrypted_ce1 sc_out sc_logic 1 signal 5 } 
	{ decrypted_we1 sc_out sc_logic 1 signal 5 } 
	{ decrypted_d1 sc_out sc_lv 8 signal 5 } 
	{ decrypted_q1 sc_in sc_lv 8 signal 5 } 
	{ encrypted_address0 sc_out sc_lv 3 signal 6 } 
	{ encrypted_ce0 sc_out sc_logic 1 signal 6 } 
	{ encrypted_we0 sc_out sc_logic 1 signal 6 } 
	{ encrypted_d0 sc_out sc_lv 8 signal 6 } 
	{ encrypted_q0 sc_in sc_lv 8 signal 6 } 
	{ encrypted_address1 sc_out sc_lv 3 signal 6 } 
	{ encrypted_ce1 sc_out sc_logic 1 signal 6 } 
	{ encrypted_we1 sc_out sc_logic 1 signal 6 } 
	{ encrypted_d1 sc_out sc_lv 8 signal 6 } 
	{ encrypted_q1 sc_in sc_lv 8 signal 6 } 
	{ plaintext_address0 sc_out sc_lv 3 signal 7 } 
	{ plaintext_ce0 sc_out sc_logic 1 signal 7 } 
	{ plaintext_q0 sc_in sc_lv 8 signal 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "Blowfish_pary_s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Blowfish_pary_s", "role": "address0" }} , 
 	{ "name": "Blowfish_pary_s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Blowfish_pary_s", "role": "ce0" }} , 
 	{ "name": "Blowfish_pary_s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Blowfish_pary_s", "role": "we0" }} , 
 	{ "name": "Blowfish_pary_s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Blowfish_pary_s", "role": "d0" }} , 
 	{ "name": "Blowfish_pary_s_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Blowfish_pary_s", "role": "q0" }} , 
 	{ "name": "Blowfish_pary_s_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Blowfish_pary_s", "role": "address1" }} , 
 	{ "name": "Blowfish_pary_s_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Blowfish_pary_s", "role": "ce1" }} , 
 	{ "name": "Blowfish_pary_s_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Blowfish_pary_s", "role": "we1" }} , 
 	{ "name": "Blowfish_pary_s_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Blowfish_pary_s", "role": "d1" }} , 
 	{ "name": "Blowfish_pary_s_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Blowfish_pary_s", "role": "q1" }} , 
 	{ "name": "Blowfish_sbox_s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "Blowfish_sbox_s", "role": "address0" }} , 
 	{ "name": "Blowfish_sbox_s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Blowfish_sbox_s", "role": "ce0" }} , 
 	{ "name": "Blowfish_sbox_s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Blowfish_sbox_s", "role": "we0" }} , 
 	{ "name": "Blowfish_sbox_s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Blowfish_sbox_s", "role": "d0" }} , 
 	{ "name": "Blowfish_sbox_s_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Blowfish_sbox_s", "role": "q0" }} , 
 	{ "name": "Blowfish_sbox_s_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "Blowfish_sbox_s", "role": "address1" }} , 
 	{ "name": "Blowfish_sbox_s_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Blowfish_sbox_s", "role": "ce1" }} , 
 	{ "name": "Blowfish_sbox_s_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Blowfish_sbox_s", "role": "we1" }} , 
 	{ "name": "Blowfish_sbox_s_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Blowfish_sbox_s", "role": "d1" }} , 
 	{ "name": "Blowfish_sbox_s_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Blowfish_sbox_s", "role": "q1" }} , 
 	{ "name": "set_key", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "set_key", "role": "default" }} , 
 	{ "name": "key_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "key", "role": "address0" }} , 
 	{ "name": "key_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "key", "role": "ce0" }} , 
 	{ "name": "key_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "key", "role": "q0" }} , 
 	{ "name": "key_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "key", "role": "address1" }} , 
 	{ "name": "key_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "key", "role": "ce1" }} , 
 	{ "name": "key_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "key", "role": "q1" }} , 
 	{ "name": "key_byte_length", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "key_byte_length", "role": "default" }} , 
 	{ "name": "decrypted_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "decrypted", "role": "address0" }} , 
 	{ "name": "decrypted_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "decrypted", "role": "ce0" }} , 
 	{ "name": "decrypted_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "decrypted", "role": "we0" }} , 
 	{ "name": "decrypted_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "decrypted", "role": "d0" }} , 
 	{ "name": "decrypted_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "decrypted", "role": "q0" }} , 
 	{ "name": "decrypted_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "decrypted", "role": "address1" }} , 
 	{ "name": "decrypted_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "decrypted", "role": "ce1" }} , 
 	{ "name": "decrypted_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "decrypted", "role": "we1" }} , 
 	{ "name": "decrypted_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "decrypted", "role": "d1" }} , 
 	{ "name": "decrypted_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "decrypted", "role": "q1" }} , 
 	{ "name": "encrypted_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "encrypted", "role": "address0" }} , 
 	{ "name": "encrypted_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "encrypted", "role": "ce0" }} , 
 	{ "name": "encrypted_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "encrypted", "role": "we0" }} , 
 	{ "name": "encrypted_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "encrypted", "role": "d0" }} , 
 	{ "name": "encrypted_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "encrypted", "role": "q0" }} , 
 	{ "name": "encrypted_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "encrypted", "role": "address1" }} , 
 	{ "name": "encrypted_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "encrypted", "role": "ce1" }} , 
 	{ "name": "encrypted_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "encrypted", "role": "we1" }} , 
 	{ "name": "encrypted_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "encrypted", "role": "d1" }} , 
 	{ "name": "encrypted_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "encrypted", "role": "q1" }} , 
 	{ "name": "plaintext_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "plaintext", "role": "address0" }} , 
 	{ "name": "plaintext_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "plaintext", "role": "ce0" }} , 
 	{ "name": "plaintext_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "plaintext", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "11", "12"],
		"CDFG" : "Blowfish_Encrypt_Decrypt_SetKey",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "184", "EstimateLatencyMax" : "38612",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_SetKey_fu_48"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Decrypt_fu_64"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Encrypt_fu_76"}],
		"Port" : [
			{"Name" : "Blowfish_pary_s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_Encrypt_fu_76", "Port" : "Blowfish_pary_s"},
					{"ID" : "1", "SubInstance" : "grp_SetKey_fu_48", "Port" : "Blowfish_pary_s"},
					{"ID" : "11", "SubInstance" : "grp_Decrypt_fu_64", "Port" : "Blowfish_pary_s"}]},
			{"Name" : "Blowfish_sbox_s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_Encrypt_fu_76", "Port" : "Blowfish_sbox_s"},
					{"ID" : "1", "SubInstance" : "grp_SetKey_fu_48", "Port" : "Blowfish_sbox_s"},
					{"ID" : "11", "SubInstance" : "grp_Decrypt_fu_64", "Port" : "Blowfish_sbox_s"}]},
			{"Name" : "set_key", "Type" : "None", "Direction" : "I"},
			{"Name" : "key", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_SetKey_fu_48", "Port" : "key"}]},
			{"Name" : "key_byte_length", "Type" : "None", "Direction" : "I"},
			{"Name" : "decrypted", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_Decrypt_fu_64", "Port" : "dst"}]},
			{"Name" : "encrypted", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_Encrypt_fu_76", "Port" : "dst"},
					{"ID" : "11", "SubInstance" : "grp_Decrypt_fu_64", "Port" : "src"}]},
			{"Name" : "plaintext", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_Encrypt_fu_76", "Port" : "src"}]},
			{"Name" : "initial_parray", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_SetKey_fu_48", "Port" : "initial_parray"}]},
			{"Name" : "initial_sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_SetKey_fu_48", "Port" : "initial_sbox"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_SetKey_fu_48", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10"],
		"CDFG" : "SetKey",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "38273", "EstimateLatencyMax" : "38427",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state32", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sEncryptBlock_fu_403"},
			{"State" : "ap_ST_fsm_state35", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sEncryptBlock_fu_403"}],
		"Port" : [
			{"Name" : "Blowfish_pary_s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_sEncryptBlock_fu_403", "Port" : "Blowfish_pary_s"}]},
			{"Name" : "Blowfish_sbox_s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_sEncryptBlock_fu_403", "Port" : "Blowfish_sbox_s"}]},
			{"Name" : "key", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "key_byte_length", "Type" : "None", "Direction" : "I"},
			{"Name" : "initial_parray", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "initial_sbox", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_SetKey_fu_48.initial_parray_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_SetKey_fu_48.initial_sbox_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_SetKey_fu_48.key_buffer_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_SetKey_fu_48.grp_sEncryptBlock_fu_403", "Parent" : "1",
		"CDFG" : "sEncryptBlock",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "66", "EstimateLatencyMax" : "66",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "Blowfish_pary_s", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Blowfish_sbox_s", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "left_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "right_r", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_SetKey_fu_48.Blowfish_Encrypt_cud_U5", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_SetKey_fu_48.Blowfish_Encrypt_cud_U6", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_SetKey_fu_48.Blowfish_Encrypt_cud_U7", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_SetKey_fu_48.Blowfish_Encrypt_cud_U8", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_SetKey_fu_48.Blowfish_Encrypt_dEe_U9", "Parent" : "1"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Decrypt_fu_64", "Parent" : "0",
		"CDFG" : "Decrypt",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "90", "EstimateLatencyMax" : "90",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "Blowfish_pary_s", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Blowfish_sbox_s", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dst", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "src", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Encrypt_fu_76", "Parent" : "0",
		"CDFG" : "Encrypt",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "90", "EstimateLatencyMax" : "90",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "Blowfish_pary_s", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Blowfish_sbox_s", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dst", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "src", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	Blowfish_Encrypt_Decrypt_SetKey {
		Blowfish_pary_s {Type IO LastRead 13 FirstWrite -1}
		Blowfish_sbox_s {Type IO LastRead 9 FirstWrite -1}
		set_key {Type I LastRead 0 FirstWrite -1}
		key {Type I LastRead 15 FirstWrite -1}
		key_byte_length {Type I LastRead 0 FirstWrite -1}
		decrypted {Type IO LastRead 5 FirstWrite 2}
		encrypted {Type IO LastRead 5 FirstWrite -1}
		plaintext {Type I LastRead 1 FirstWrite -1}
		initial_parray {Type I LastRead -1 FirstWrite -1}
		initial_sbox {Type I LastRead -1 FirstWrite -1}}
	SetKey {
		Blowfish_pary_s {Type IO LastRead 13 FirstWrite -1}
		Blowfish_sbox_s {Type IO LastRead 4 FirstWrite -1}
		key {Type I LastRead 15 FirstWrite -1}
		key_byte_length {Type I LastRead 0 FirstWrite -1}
		initial_parray {Type I LastRead -1 FirstWrite -1}
		initial_sbox {Type I LastRead -1 FirstWrite -1}}
	sEncryptBlock {
		Blowfish_pary_s {Type I LastRead 2 FirstWrite -1}
		Blowfish_sbox_s {Type I LastRead 4 FirstWrite -1}
		left_r {Type I LastRead 0 FirstWrite -1}
		right_r {Type I LastRead 0 FirstWrite -1}}
	Decrypt {
		Blowfish_pary_s {Type I LastRead 8 FirstWrite -1}
		Blowfish_sbox_s {Type I LastRead 9 FirstWrite -1}
		dst {Type IO LastRead 5 FirstWrite 2}
		src {Type I LastRead 1 FirstWrite -1}}
	Encrypt {
		Blowfish_pary_s {Type I LastRead 8 FirstWrite -1}
		Blowfish_sbox_s {Type I LastRead 9 FirstWrite -1}
		dst {Type IO LastRead 5 FirstWrite 2}
		src {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "184", "Max" : "38612"}
	, {"Name" : "Interval", "Min" : "185", "Max" : "38613"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	Blowfish_pary_s { ap_memory {  { Blowfish_pary_s_address0 mem_address 1 5 }  { Blowfish_pary_s_ce0 mem_ce 1 1 }  { Blowfish_pary_s_we0 mem_we 1 1 }  { Blowfish_pary_s_d0 mem_din 1 32 }  { Blowfish_pary_s_q0 mem_dout 0 32 }  { Blowfish_pary_s_address1 MemPortADDR2 1 5 }  { Blowfish_pary_s_ce1 MemPortCE2 1 1 }  { Blowfish_pary_s_we1 MemPortWE2 1 1 }  { Blowfish_pary_s_d1 MemPortDIN2 1 32 }  { Blowfish_pary_s_q1 MemPortDOUT2 0 32 } } }
	Blowfish_sbox_s { ap_memory {  { Blowfish_sbox_s_address0 mem_address 1 10 }  { Blowfish_sbox_s_ce0 mem_ce 1 1 }  { Blowfish_sbox_s_we0 mem_we 1 1 }  { Blowfish_sbox_s_d0 mem_din 1 32 }  { Blowfish_sbox_s_q0 mem_dout 0 32 }  { Blowfish_sbox_s_address1 MemPortADDR2 1 10 }  { Blowfish_sbox_s_ce1 MemPortCE2 1 1 }  { Blowfish_sbox_s_we1 MemPortWE2 1 1 }  { Blowfish_sbox_s_d1 MemPortDIN2 1 32 }  { Blowfish_sbox_s_q1 MemPortDOUT2 0 32 } } }
	set_key { ap_none {  { set_key in_data 0 1 } } }
	key { ap_memory {  { key_address0 mem_address 1 6 }  { key_ce0 mem_ce 1 1 }  { key_q0 mem_dout 0 8 }  { key_address1 MemPortADDR2 1 6 }  { key_ce1 MemPortCE2 1 1 }  { key_q1 MemPortDOUT2 0 8 } } }
	key_byte_length { ap_none {  { key_byte_length in_data 0 32 } } }
	decrypted { ap_memory {  { decrypted_address0 mem_address 1 3 }  { decrypted_ce0 mem_ce 1 1 }  { decrypted_we0 mem_we 1 1 }  { decrypted_d0 mem_din 1 8 }  { decrypted_q0 mem_dout 0 8 }  { decrypted_address1 MemPortADDR2 1 3 }  { decrypted_ce1 MemPortCE2 1 1 }  { decrypted_we1 MemPortWE2 1 1 }  { decrypted_d1 MemPortDIN2 1 8 }  { decrypted_q1 MemPortDOUT2 0 8 } } }
	encrypted { ap_memory {  { encrypted_address0 mem_address 1 3 }  { encrypted_ce0 mem_ce 1 1 }  { encrypted_we0 mem_we 1 1 }  { encrypted_d0 mem_din 1 8 }  { encrypted_q0 mem_dout 0 8 }  { encrypted_address1 MemPortADDR2 1 3 }  { encrypted_ce1 MemPortCE2 1 1 }  { encrypted_we1 MemPortWE2 1 1 }  { encrypted_d1 MemPortDIN2 1 8 }  { encrypted_q1 MemPortDOUT2 0 8 } } }
	plaintext { ap_memory {  { plaintext_address0 mem_address 1 3 }  { plaintext_ce0 mem_ce 1 1 }  { plaintext_q0 mem_dout 0 8 } } }
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

set moduleName Blowfish_SetKey_Encrypt
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
set C_modelName {Blowfish_SetKey_Encrypt}
set C_modelType { void 0 }
set C_modelArgList {
	{ set_key uint 1 regular  }
	{ key int 8 regular {array 56 { 1 3 } 1 1 }  }
	{ key_size int 64 regular  }
	{ plaintext int 8 regular {array 9 { 1 1 } 1 1 }  }
	{ ciphertext int 8 regular {array 9 { 0 0 } 0 1 }  }
	{ P int 32 regular {array 18 { 2 2 } 1 1 }  }
	{ S int 32 regular {array 1024 { 2 2 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "set_key", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "set_key","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "key", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "key","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 55,"step" : 1}]}]}]} , 
 	{ "Name" : "key_size", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "key_size","cData": "long unsigned int","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "plaintext", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "plaintext","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 8,"step" : 1}]}]}]} , 
 	{ "Name" : "ciphertext", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "ciphertext","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 8,"step" : 1}]}]}]} , 
 	{ "Name" : "P", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "P","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 17,"step" : 1}]}]}]} , 
 	{ "Name" : "S", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "S","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 3,"step" : 1},{"low" : 0,"up" : 255,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 45
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
	{ key_size sc_in sc_lv 64 signal 2 } 
	{ plaintext_address0 sc_out sc_lv 4 signal 3 } 
	{ plaintext_ce0 sc_out sc_logic 1 signal 3 } 
	{ plaintext_q0 sc_in sc_lv 8 signal 3 } 
	{ plaintext_address1 sc_out sc_lv 4 signal 3 } 
	{ plaintext_ce1 sc_out sc_logic 1 signal 3 } 
	{ plaintext_q1 sc_in sc_lv 8 signal 3 } 
	{ ciphertext_address0 sc_out sc_lv 4 signal 4 } 
	{ ciphertext_ce0 sc_out sc_logic 1 signal 4 } 
	{ ciphertext_we0 sc_out sc_logic 1 signal 4 } 
	{ ciphertext_d0 sc_out sc_lv 8 signal 4 } 
	{ ciphertext_address1 sc_out sc_lv 4 signal 4 } 
	{ ciphertext_ce1 sc_out sc_logic 1 signal 4 } 
	{ ciphertext_we1 sc_out sc_logic 1 signal 4 } 
	{ ciphertext_d1 sc_out sc_lv 8 signal 4 } 
	{ P_address0 sc_out sc_lv 5 signal 5 } 
	{ P_ce0 sc_out sc_logic 1 signal 5 } 
	{ P_we0 sc_out sc_logic 1 signal 5 } 
	{ P_d0 sc_out sc_lv 32 signal 5 } 
	{ P_q0 sc_in sc_lv 32 signal 5 } 
	{ P_address1 sc_out sc_lv 5 signal 5 } 
	{ P_ce1 sc_out sc_logic 1 signal 5 } 
	{ P_we1 sc_out sc_logic 1 signal 5 } 
	{ P_d1 sc_out sc_lv 32 signal 5 } 
	{ P_q1 sc_in sc_lv 32 signal 5 } 
	{ S_address0 sc_out sc_lv 10 signal 6 } 
	{ S_ce0 sc_out sc_logic 1 signal 6 } 
	{ S_we0 sc_out sc_logic 1 signal 6 } 
	{ S_d0 sc_out sc_lv 32 signal 6 } 
	{ S_q0 sc_in sc_lv 32 signal 6 } 
	{ S_address1 sc_out sc_lv 10 signal 6 } 
	{ S_ce1 sc_out sc_logic 1 signal 6 } 
	{ S_we1 sc_out sc_logic 1 signal 6 } 
	{ S_d1 sc_out sc_lv 32 signal 6 } 
	{ S_q1 sc_in sc_lv 32 signal 6 } 
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
 	{ "name": "key_size", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "key_size", "role": "default" }} , 
 	{ "name": "plaintext_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "plaintext", "role": "address0" }} , 
 	{ "name": "plaintext_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "plaintext", "role": "ce0" }} , 
 	{ "name": "plaintext_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "plaintext", "role": "q0" }} , 
 	{ "name": "plaintext_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "plaintext", "role": "address1" }} , 
 	{ "name": "plaintext_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "plaintext", "role": "ce1" }} , 
 	{ "name": "plaintext_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "plaintext", "role": "q1" }} , 
 	{ "name": "ciphertext_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ciphertext", "role": "address0" }} , 
 	{ "name": "ciphertext_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ciphertext", "role": "ce0" }} , 
 	{ "name": "ciphertext_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ciphertext", "role": "we0" }} , 
 	{ "name": "ciphertext_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ciphertext", "role": "d0" }} , 
 	{ "name": "ciphertext_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ciphertext", "role": "address1" }} , 
 	{ "name": "ciphertext_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ciphertext", "role": "ce1" }} , 
 	{ "name": "ciphertext_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ciphertext", "role": "we1" }} , 
 	{ "name": "ciphertext_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ciphertext", "role": "d1" }} , 
 	{ "name": "P_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "P", "role": "address0" }} , 
 	{ "name": "P_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P", "role": "ce0" }} , 
 	{ "name": "P_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P", "role": "we0" }} , 
 	{ "name": "P_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P", "role": "d0" }} , 
 	{ "name": "P_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P", "role": "q0" }} , 
 	{ "name": "P_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "P", "role": "address1" }} , 
 	{ "name": "P_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P", "role": "ce1" }} , 
 	{ "name": "P_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P", "role": "we1" }} , 
 	{ "name": "P_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P", "role": "d1" }} , 
 	{ "name": "P_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P", "role": "q1" }} , 
 	{ "name": "S_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "S", "role": "address0" }} , 
 	{ "name": "S_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "S", "role": "ce0" }} , 
 	{ "name": "S_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "S", "role": "we0" }} , 
 	{ "name": "S_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "S", "role": "d0" }} , 
 	{ "name": "S_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "S", "role": "q0" }} , 
 	{ "name": "S_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "S", "role": "address1" }} , 
 	{ "name": "S_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "S", "role": "ce1" }} , 
 	{ "name": "S_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "S", "role": "we1" }} , 
 	{ "name": "S_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "S", "role": "d1" }} , 
 	{ "name": "S_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "S", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "6"],
		"CDFG" : "Blowfish_SetKey_Encrypt",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "75", "EstimateLatencyMax" : "43080",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Blowfish_SetKey_fu_44"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Blowfish_Encrypt_fu_60"}],
		"Port" : [
			{"Name" : "set_key", "Type" : "None", "Direction" : "I"},
			{"Name" : "key", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Blowfish_SetKey_fu_44", "Port" : "key"}]},
			{"Name" : "key_size", "Type" : "None", "Direction" : "I"},
			{"Name" : "plaintext", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_Blowfish_Encrypt_fu_60", "Port" : "plaintext"}]},
			{"Name" : "ciphertext", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_Blowfish_Encrypt_fu_60", "Port" : "ciphertext"}]},
			{"Name" : "P", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Blowfish_SetKey_fu_44", "Port" : "P"},
					{"ID" : "6", "SubInstance" : "grp_Blowfish_Encrypt_fu_60", "Port" : "P"}]},
			{"Name" : "S", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Blowfish_SetKey_fu_44", "Port" : "S"},
					{"ID" : "6", "SubInstance" : "grp_Blowfish_Encrypt_fu_60", "Port" : "S"}]},
			{"Name" : "initial_parray", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Blowfish_SetKey_fu_44", "Port" : "initial_parray"}]},
			{"Name" : "initial_sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Blowfish_SetKey_fu_44", "Port" : "initial_sbox"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Blowfish_SetKey_fu_44", "Parent" : "0", "Child" : ["2", "3", "4", "5"],
		"CDFG" : "Blowfish_SetKey",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "43004", "EstimateLatencyMax" : "43004",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state78", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Encrypt_SetKey_fu_330"},
			{"State" : "ap_ST_fsm_state82", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Encrypt_SetKey_fu_330"}],
		"Port" : [
			{"Name" : "key", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "key_size", "Type" : "None", "Direction" : "I"},
			{"Name" : "P", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_Encrypt_SetKey_fu_330", "Port" : "P"}]},
			{"Name" : "S", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_Encrypt_SetKey_fu_330", "Port" : "S"}]},
			{"Name" : "initial_parray", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "initial_sbox", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Blowfish_SetKey_fu_44.initial_parray_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Blowfish_SetKey_fu_44.initial_sbox_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Blowfish_SetKey_fu_44.grp_Encrypt_SetKey_fu_330", "Parent" : "1",
		"CDFG" : "Encrypt_SetKey",
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
			{"Name" : "left_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "right_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "P", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "S", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Blowfish_SetKey_fu_44.Blowfish_SetKey_EdEe_U5", "Parent" : "1"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Blowfish_Encrypt_fu_60", "Parent" : "0",
		"CDFG" : "Blowfish_Encrypt",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "73", "EstimateLatencyMax" : "73",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "plaintext", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ciphertext", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "P", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "S", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	Blowfish_SetKey_Encrypt {
		set_key {Type I LastRead 0 FirstWrite -1}
		key {Type I LastRead 4 FirstWrite -1}
		key_size {Type I LastRead 0 FirstWrite -1}
		plaintext {Type I LastRead 4 FirstWrite -1}
		ciphertext {Type O LastRead -1 FirstWrite 6}
		P {Type IO LastRead 7 FirstWrite -1}
		S {Type IO LastRead 8 FirstWrite -1}
		initial_parray {Type I LastRead -1 FirstWrite -1}
		initial_sbox {Type I LastRead -1 FirstWrite -1}}
	Blowfish_SetKey {
		key {Type I LastRead 4 FirstWrite -1}
		key_size {Type I LastRead 0 FirstWrite -1}
		P {Type IO LastRead 4 FirstWrite -1}
		S {Type IO LastRead 4 FirstWrite -1}
		initial_parray {Type I LastRead -1 FirstWrite -1}
		initial_sbox {Type I LastRead -1 FirstWrite -1}}
	Encrypt_SetKey {
		left_read {Type I LastRead 0 FirstWrite -1}
		right_read {Type I LastRead 0 FirstWrite -1}
		P {Type I LastRead 2 FirstWrite -1}
		S {Type I LastRead 4 FirstWrite -1}}
	Blowfish_Encrypt {
		plaintext {Type I LastRead 4 FirstWrite -1}
		ciphertext {Type O LastRead -1 FirstWrite 6}
		P {Type I LastRead 7 FirstWrite -1}
		S {Type I LastRead 8 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "75", "Max" : "43080"}
	, {"Name" : "Interval", "Min" : "76", "Max" : "43081"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	set_key { ap_none {  { set_key in_data 0 1 } } }
	key { ap_memory {  { key_address0 mem_address 1 6 }  { key_ce0 mem_ce 1 1 }  { key_q0 mem_dout 0 8 } } }
	key_size { ap_none {  { key_size in_data 0 64 } } }
	plaintext { ap_memory {  { plaintext_address0 mem_address 1 4 }  { plaintext_ce0 mem_ce 1 1 }  { plaintext_q0 mem_dout 0 8 }  { plaintext_address1 MemPortADDR2 1 4 }  { plaintext_ce1 MemPortCE2 1 1 }  { plaintext_q1 MemPortDOUT2 0 8 } } }
	ciphertext { ap_memory {  { ciphertext_address0 mem_address 1 4 }  { ciphertext_ce0 mem_ce 1 1 }  { ciphertext_we0 mem_we 1 1 }  { ciphertext_d0 mem_din 1 8 }  { ciphertext_address1 MemPortADDR2 1 4 }  { ciphertext_ce1 MemPortCE2 1 1 }  { ciphertext_we1 MemPortWE2 1 1 }  { ciphertext_d1 MemPortDIN2 1 8 } } }
	P { ap_memory {  { P_address0 mem_address 1 5 }  { P_ce0 mem_ce 1 1 }  { P_we0 mem_we 1 1 }  { P_d0 mem_din 1 32 }  { P_q0 mem_dout 0 32 }  { P_address1 MemPortADDR2 1 5 }  { P_ce1 MemPortCE2 1 1 }  { P_we1 MemPortWE2 1 1 }  { P_d1 MemPortDIN2 1 32 }  { P_q1 MemPortDOUT2 0 32 } } }
	S { ap_memory {  { S_address0 mem_address 1 10 }  { S_ce0 mem_ce 1 1 }  { S_we0 mem_we 1 1 }  { S_d0 mem_din 1 32 }  { S_q0 mem_dout 0 32 }  { S_address1 MemPortADDR2 1 10 }  { S_ce1 MemPortCE2 1 1 }  { S_we1 MemPortWE2 1 1 }  { S_d1 MemPortDIN2 1 32 }  { S_q1 MemPortDOUT2 0 32 } } }
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

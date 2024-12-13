set moduleName encrypt_bf
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
set C_modelName {encrypt_bf}
set C_modelType { int 128 }
set C_modelArgList {
	{ plaintext_V int 128 regular  }
	{ P_0 int 32 regular {pointer 0} {global 0}  }
	{ P_1 int 32 regular {pointer 0} {global 0}  }
	{ P_2 int 32 regular {pointer 0} {global 0}  }
	{ P_3 int 32 regular {pointer 0} {global 0}  }
	{ P_4 int 32 regular {pointer 0} {global 0}  }
	{ P_5 int 32 regular {pointer 0} {global 0}  }
	{ P_6 int 32 regular {pointer 0} {global 0}  }
	{ P_7 int 32 regular {pointer 0} {global 0}  }
	{ P_8 int 32 regular {pointer 0} {global 0}  }
	{ P_9 int 32 regular {pointer 0} {global 0}  }
	{ P_10 int 32 regular {pointer 0} {global 0}  }
	{ P_11 int 32 regular {pointer 0} {global 0}  }
	{ P_12 int 32 regular {pointer 0} {global 0}  }
	{ P_13 int 32 regular {pointer 0} {global 0}  }
	{ P_14 int 32 regular {pointer 0} {global 0}  }
	{ P_15 int 32 regular {pointer 0} {global 0}  }
	{ P_16 int 32 regular {pointer 0} {global 0}  }
	{ P_17 int 32 regular {pointer 0} {global 0}  }
	{ S_0 int 32 regular {array 256 { 1 3 } 1 1 } {global 0}  }
	{ S_1 int 32 regular {array 256 { 1 3 } 1 1 } {global 0}  }
	{ S_2 int 32 regular {array 256 { 1 3 } 1 1 } {global 0}  }
	{ S_3 int 32 regular {array 256 { 1 3 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "plaintext_V", "interface" : "wire", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "P_0", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "P","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "P_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "P","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 1,"up" : 1,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "P_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "P","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 2,"up" : 2,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "P_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "P","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 3,"up" : 3,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "P_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "P","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 4,"up" : 4,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "P_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "P","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 5,"up" : 5,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "P_6", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "P","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 6,"up" : 6,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "P_7", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "P","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 7,"up" : 7,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "P_8", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "P","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 8,"up" : 8,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "P_9", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "P","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 9,"up" : 9,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "P_10", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "P","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 10,"up" : 10,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "P_11", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "P","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 11,"up" : 11,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "P_12", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "P","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 12,"up" : 12,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "P_13", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "P","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 13,"up" : 13,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "P_14", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "P","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 14,"up" : 14,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "P_15", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "P","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 15,"up" : 15,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "P_16", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "P","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 16,"up" : 16,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "P_17", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "P","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 17,"up" : 17,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "S_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "S","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 2},{"low" : 0,"up" : 255,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "S_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "S","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 1,"up" : 1,"step" : 2},{"low" : 0,"up" : 255,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "S_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "S","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 2,"up" : 2,"step" : 2},{"low" : 0,"up" : 255,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "S_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "S","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 3,"up" : 3,"step" : 2},{"low" : 0,"up" : 255,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 128} ]}
# RTL Port declarations: 
set portNum 38
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ plaintext_V sc_in sc_lv 128 signal 0 } 
	{ P_0 sc_in sc_lv 32 signal 1 } 
	{ P_1 sc_in sc_lv 32 signal 2 } 
	{ P_2 sc_in sc_lv 32 signal 3 } 
	{ P_3 sc_in sc_lv 32 signal 4 } 
	{ P_4 sc_in sc_lv 32 signal 5 } 
	{ P_5 sc_in sc_lv 32 signal 6 } 
	{ P_6 sc_in sc_lv 32 signal 7 } 
	{ P_7 sc_in sc_lv 32 signal 8 } 
	{ P_8 sc_in sc_lv 32 signal 9 } 
	{ P_9 sc_in sc_lv 32 signal 10 } 
	{ P_10 sc_in sc_lv 32 signal 11 } 
	{ P_11 sc_in sc_lv 32 signal 12 } 
	{ P_12 sc_in sc_lv 32 signal 13 } 
	{ P_13 sc_in sc_lv 32 signal 14 } 
	{ P_14 sc_in sc_lv 32 signal 15 } 
	{ P_15 sc_in sc_lv 32 signal 16 } 
	{ P_16 sc_in sc_lv 32 signal 17 } 
	{ P_17 sc_in sc_lv 32 signal 18 } 
	{ S_0_address0 sc_out sc_lv 8 signal 19 } 
	{ S_0_ce0 sc_out sc_logic 1 signal 19 } 
	{ S_0_q0 sc_in sc_lv 32 signal 19 } 
	{ S_1_address0 sc_out sc_lv 8 signal 20 } 
	{ S_1_ce0 sc_out sc_logic 1 signal 20 } 
	{ S_1_q0 sc_in sc_lv 32 signal 20 } 
	{ S_2_address0 sc_out sc_lv 8 signal 21 } 
	{ S_2_ce0 sc_out sc_logic 1 signal 21 } 
	{ S_2_q0 sc_in sc_lv 32 signal 21 } 
	{ S_3_address0 sc_out sc_lv 8 signal 22 } 
	{ S_3_ce0 sc_out sc_logic 1 signal 22 } 
	{ S_3_q0 sc_in sc_lv 32 signal 22 } 
	{ ap_return sc_out sc_lv 128 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "plaintext_V", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "plaintext_V", "role": "default" }} , 
 	{ "name": "P_0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_0", "role": "default" }} , 
 	{ "name": "P_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_1", "role": "default" }} , 
 	{ "name": "P_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_2", "role": "default" }} , 
 	{ "name": "P_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_3", "role": "default" }} , 
 	{ "name": "P_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_4", "role": "default" }} , 
 	{ "name": "P_5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_5", "role": "default" }} , 
 	{ "name": "P_6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_6", "role": "default" }} , 
 	{ "name": "P_7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_7", "role": "default" }} , 
 	{ "name": "P_8", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_8", "role": "default" }} , 
 	{ "name": "P_9", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_9", "role": "default" }} , 
 	{ "name": "P_10", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_10", "role": "default" }} , 
 	{ "name": "P_11", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_11", "role": "default" }} , 
 	{ "name": "P_12", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_12", "role": "default" }} , 
 	{ "name": "P_13", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_13", "role": "default" }} , 
 	{ "name": "P_14", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_14", "role": "default" }} , 
 	{ "name": "P_15", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_15", "role": "default" }} , 
 	{ "name": "P_16", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_16", "role": "default" }} , 
 	{ "name": "P_17", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_17", "role": "default" }} , 
 	{ "name": "S_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "S_0", "role": "address0" }} , 
 	{ "name": "S_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "S_0", "role": "ce0" }} , 
 	{ "name": "S_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "S_0", "role": "q0" }} , 
 	{ "name": "S_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "S_1", "role": "address0" }} , 
 	{ "name": "S_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "S_1", "role": "ce0" }} , 
 	{ "name": "S_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "S_1", "role": "q0" }} , 
 	{ "name": "S_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "S_2", "role": "address0" }} , 
 	{ "name": "S_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "S_2", "role": "ce0" }} , 
 	{ "name": "S_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "S_2", "role": "q0" }} , 
 	{ "name": "S_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "S_3", "role": "address0" }} , 
 	{ "name": "S_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "S_3", "role": "ce0" }} , 
 	{ "name": "S_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "S_3", "role": "q0" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
		"CDFG" : "encrypt_bf",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "155", "EstimateLatencyMax" : "155",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Blowfish_Encrypt_fu_237"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Blowfish_Encrypt_fu_237"}],
		"Port" : [
			{"Name" : "plaintext_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "S_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_Blowfish_Encrypt_fu_237", "Port" : "S_0"}]},
			{"Name" : "S_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_Blowfish_Encrypt_fu_237", "Port" : "S_1"}]},
			{"Name" : "S_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_Blowfish_Encrypt_fu_237", "Port" : "S_2"}]},
			{"Name" : "S_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_Blowfish_Encrypt_fu_237", "Port" : "S_3"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.plaintext1_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.plaintext2_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ciphertext1_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ciphertext2_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Blowfish_Encrypt_fu_237", "Parent" : "0", "Child" : ["6"],
		"CDFG" : "Blowfish_Encrypt",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "42", "EstimateLatencyMax" : "42",
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
					{"ID" : "6", "SubInstance" : "grp_feistel_fu_481", "Port" : "S_0"}]},
			{"Name" : "S_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_feistel_fu_481", "Port" : "S_1"}]},
			{"Name" : "S_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_feistel_fu_481", "Port" : "S_2"}]},
			{"Name" : "S_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_feistel_fu_481", "Port" : "S_3"}]}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Blowfish_Encrypt_fu_237.grp_feistel_fu_481", "Parent" : "5",
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
			{"Name" : "S_3", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	encrypt_bf {
		plaintext_V {Type I LastRead 0 FirstWrite -1}
		P_0 {Type I LastRead 4 FirstWrite -1}
		P_1 {Type I LastRead 4 FirstWrite -1}
		P_2 {Type I LastRead 4 FirstWrite -1}
		P_3 {Type I LastRead 4 FirstWrite -1}
		P_4 {Type I LastRead 4 FirstWrite -1}
		P_5 {Type I LastRead 4 FirstWrite -1}
		P_6 {Type I LastRead 4 FirstWrite -1}
		P_7 {Type I LastRead 4 FirstWrite -1}
		P_8 {Type I LastRead 4 FirstWrite -1}
		P_9 {Type I LastRead 4 FirstWrite -1}
		P_10 {Type I LastRead 4 FirstWrite -1}
		P_11 {Type I LastRead 4 FirstWrite -1}
		P_12 {Type I LastRead 4 FirstWrite -1}
		P_13 {Type I LastRead 4 FirstWrite -1}
		P_14 {Type I LastRead 4 FirstWrite -1}
		P_15 {Type I LastRead 4 FirstWrite -1}
		P_16 {Type I LastRead 4 FirstWrite -1}
		P_17 {Type I LastRead 4 FirstWrite -1}
		S_0 {Type I LastRead 0 FirstWrite -1}
		S_1 {Type I LastRead 0 FirstWrite -1}
		S_2 {Type I LastRead 0 FirstWrite -1}
		S_3 {Type I LastRead 0 FirstWrite -1}}
	Blowfish_Encrypt {
		plaintext {Type I LastRead 4 FirstWrite -1}
		ciphertext {Type O LastRead -1 FirstWrite 6}
		P_0_read {Type I LastRead 4 FirstWrite -1}
		P_1_read {Type I LastRead 4 FirstWrite -1}
		P_2_read {Type I LastRead 4 FirstWrite -1}
		P_3_read {Type I LastRead 4 FirstWrite -1}
		P_4_read {Type I LastRead 4 FirstWrite -1}
		P_5_read {Type I LastRead 4 FirstWrite -1}
		P_6_read {Type I LastRead 4 FirstWrite -1}
		P_7_read {Type I LastRead 4 FirstWrite -1}
		P_8_read {Type I LastRead 4 FirstWrite -1}
		P_9_read {Type I LastRead 4 FirstWrite -1}
		P_10_read {Type I LastRead 4 FirstWrite -1}
		P_11_read {Type I LastRead 4 FirstWrite -1}
		P_12_read {Type I LastRead 4 FirstWrite -1}
		P_13_read {Type I LastRead 4 FirstWrite -1}
		P_14_read {Type I LastRead 4 FirstWrite -1}
		P_15_read {Type I LastRead 4 FirstWrite -1}
		P_16_read {Type I LastRead 4 FirstWrite -1}
		P_17_read {Type I LastRead 4 FirstWrite -1}
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
	{"Name" : "Latency", "Min" : "155", "Max" : "155"}
	, {"Name" : "Interval", "Min" : "155", "Max" : "155"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	plaintext_V { ap_none {  { plaintext_V in_data 0 128 } } }
	P_0 { ap_none {  { P_0 in_data 0 32 } } }
	P_1 { ap_none {  { P_1 in_data 0 32 } } }
	P_2 { ap_none {  { P_2 in_data 0 32 } } }
	P_3 { ap_none {  { P_3 in_data 0 32 } } }
	P_4 { ap_none {  { P_4 in_data 0 32 } } }
	P_5 { ap_none {  { P_5 in_data 0 32 } } }
	P_6 { ap_none {  { P_6 in_data 0 32 } } }
	P_7 { ap_none {  { P_7 in_data 0 32 } } }
	P_8 { ap_none {  { P_8 in_data 0 32 } } }
	P_9 { ap_none {  { P_9 in_data 0 32 } } }
	P_10 { ap_none {  { P_10 in_data 0 32 } } }
	P_11 { ap_none {  { P_11 in_data 0 32 } } }
	P_12 { ap_none {  { P_12 in_data 0 32 } } }
	P_13 { ap_none {  { P_13 in_data 0 32 } } }
	P_14 { ap_none {  { P_14 in_data 0 32 } } }
	P_15 { ap_none {  { P_15 in_data 0 32 } } }
	P_16 { ap_none {  { P_16 in_data 0 32 } } }
	P_17 { ap_none {  { P_17 in_data 0 32 } } }
	S_0 { ap_memory {  { S_0_address0 mem_address 1 8 }  { S_0_ce0 mem_ce 1 1 }  { S_0_q0 mem_dout 0 32 } } }
	S_1 { ap_memory {  { S_1_address0 mem_address 1 8 }  { S_1_ce0 mem_ce 1 1 }  { S_1_q0 mem_dout 0 32 } } }
	S_2 { ap_memory {  { S_2_address0 mem_address 1 8 }  { S_2_ce0 mem_ce 1 1 }  { S_2_q0 mem_dout 0 32 } } }
	S_3 { ap_memory {  { S_3_address0 mem_address 1 8 }  { S_3_ce0 mem_ce 1 1 }  { S_3_q0 mem_dout 0 32 } } }
}

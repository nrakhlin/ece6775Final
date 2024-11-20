set moduleName Blowfish_SetKey
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
set C_modelName {Blowfish_SetKey}
set C_modelType { int 576 }
set C_modelArgList {
	{ key int 8 regular {array 56 { 1 3 } 1 1 }  }
	{ key_size int 64 regular  }
	{ S_0 int 32 regular {array 256 { 2 0 } 1 1 }  }
	{ S_1 int 32 regular {array 256 { 2 0 } 1 1 }  }
	{ S_2 int 32 regular {array 256 { 2 0 } 1 1 }  }
	{ S_3 int 32 regular {array 256 { 2 0 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "key", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "key_size", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "S_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "S_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "S_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "S_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 576} ]}
# RTL Port declarations: 
set portNum 64
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
	{ S_0_address0 sc_out sc_lv 8 signal 2 } 
	{ S_0_ce0 sc_out sc_logic 1 signal 2 } 
	{ S_0_we0 sc_out sc_logic 1 signal 2 } 
	{ S_0_d0 sc_out sc_lv 32 signal 2 } 
	{ S_0_q0 sc_in sc_lv 32 signal 2 } 
	{ S_0_address1 sc_out sc_lv 8 signal 2 } 
	{ S_0_ce1 sc_out sc_logic 1 signal 2 } 
	{ S_0_we1 sc_out sc_logic 1 signal 2 } 
	{ S_0_d1 sc_out sc_lv 32 signal 2 } 
	{ S_1_address0 sc_out sc_lv 8 signal 3 } 
	{ S_1_ce0 sc_out sc_logic 1 signal 3 } 
	{ S_1_we0 sc_out sc_logic 1 signal 3 } 
	{ S_1_d0 sc_out sc_lv 32 signal 3 } 
	{ S_1_q0 sc_in sc_lv 32 signal 3 } 
	{ S_1_address1 sc_out sc_lv 8 signal 3 } 
	{ S_1_ce1 sc_out sc_logic 1 signal 3 } 
	{ S_1_we1 sc_out sc_logic 1 signal 3 } 
	{ S_1_d1 sc_out sc_lv 32 signal 3 } 
	{ S_2_address0 sc_out sc_lv 8 signal 4 } 
	{ S_2_ce0 sc_out sc_logic 1 signal 4 } 
	{ S_2_we0 sc_out sc_logic 1 signal 4 } 
	{ S_2_d0 sc_out sc_lv 32 signal 4 } 
	{ S_2_q0 sc_in sc_lv 32 signal 4 } 
	{ S_2_address1 sc_out sc_lv 8 signal 4 } 
	{ S_2_ce1 sc_out sc_logic 1 signal 4 } 
	{ S_2_we1 sc_out sc_logic 1 signal 4 } 
	{ S_2_d1 sc_out sc_lv 32 signal 4 } 
	{ S_3_address0 sc_out sc_lv 8 signal 5 } 
	{ S_3_ce0 sc_out sc_logic 1 signal 5 } 
	{ S_3_we0 sc_out sc_logic 1 signal 5 } 
	{ S_3_d0 sc_out sc_lv 32 signal 5 } 
	{ S_3_q0 sc_in sc_lv 32 signal 5 } 
	{ S_3_address1 sc_out sc_lv 8 signal 5 } 
	{ S_3_ce1 sc_out sc_logic 1 signal 5 } 
	{ S_3_we1 sc_out sc_logic 1 signal 5 } 
	{ S_3_d1 sc_out sc_lv 32 signal 5 } 
	{ ap_return_0 sc_out sc_lv 32 signal -1 } 
	{ ap_return_1 sc_out sc_lv 32 signal -1 } 
	{ ap_return_2 sc_out sc_lv 32 signal -1 } 
	{ ap_return_3 sc_out sc_lv 32 signal -1 } 
	{ ap_return_4 sc_out sc_lv 32 signal -1 } 
	{ ap_return_5 sc_out sc_lv 32 signal -1 } 
	{ ap_return_6 sc_out sc_lv 32 signal -1 } 
	{ ap_return_7 sc_out sc_lv 32 signal -1 } 
	{ ap_return_8 sc_out sc_lv 32 signal -1 } 
	{ ap_return_9 sc_out sc_lv 32 signal -1 } 
	{ ap_return_10 sc_out sc_lv 32 signal -1 } 
	{ ap_return_11 sc_out sc_lv 32 signal -1 } 
	{ ap_return_12 sc_out sc_lv 32 signal -1 } 
	{ ap_return_13 sc_out sc_lv 32 signal -1 } 
	{ ap_return_14 sc_out sc_lv 32 signal -1 } 
	{ ap_return_15 sc_out sc_lv 32 signal -1 } 
	{ ap_return_16 sc_out sc_lv 32 signal -1 } 
	{ ap_return_17 sc_out sc_lv 32 signal -1 } 
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
 	{ "name": "S_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "S_3", "role": "d1" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "ap_return_2", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_2", "role": "default" }} , 
 	{ "name": "ap_return_3", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_3", "role": "default" }} , 
 	{ "name": "ap_return_4", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_4", "role": "default" }} , 
 	{ "name": "ap_return_5", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_5", "role": "default" }} , 
 	{ "name": "ap_return_6", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_6", "role": "default" }} , 
 	{ "name": "ap_return_7", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_7", "role": "default" }} , 
 	{ "name": "ap_return_8", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_8", "role": "default" }} , 
 	{ "name": "ap_return_9", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_9", "role": "default" }} , 
 	{ "name": "ap_return_10", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_10", "role": "default" }} , 
 	{ "name": "ap_return_11", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_11", "role": "default" }} , 
 	{ "name": "ap_return_12", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_12", "role": "default" }} , 
 	{ "name": "ap_return_13", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_13", "role": "default" }} , 
 	{ "name": "ap_return_14", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_14", "role": "default" }} , 
 	{ "name": "ap_return_15", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_15", "role": "default" }} , 
 	{ "name": "ap_return_16", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_16", "role": "default" }} , 
 	{ "name": "ap_return_17", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_17", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98"],
		"CDFG" : "Blowfish_SetKey",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "20878", "EstimateLatencyMax" : "20878",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state29", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Encrypt_SetKey_fu_1753"},
			{"State" : "ap_ST_fsm_state32", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Encrypt_SetKey_fu_1753"}],
		"Port" : [
			{"Name" : "key", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "key_size", "Type" : "None", "Direction" : "I"},
			{"Name" : "S_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_Encrypt_SetKey_fu_1753", "Port" : "S_0"}]},
			{"Name" : "S_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_Encrypt_SetKey_fu_1753", "Port" : "S_1"}]},
			{"Name" : "S_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_Encrypt_SetKey_fu_1753", "Port" : "S_2"}]},
			{"Name" : "S_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_Encrypt_SetKey_fu_1753", "Port" : "S_3"}]},
			{"Name" : "initial_sbox_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "initial_sbox_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "initial_sbox_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "initial_sbox_3", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.initial_sbox_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.initial_sbox_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.initial_sbox_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.initial_sbox_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Encrypt_SetKey_fu_1753", "Parent" : "0", "Child" : ["6"],
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
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Encrypt_SetKey_fu_1753.grp_feistel_fu_297", "Parent" : "5",
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
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Blowfish_SetKey_EfYi_U30", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Blowfish_SetKey_Eg8j_U31", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Blowfish_SetKey_Ehbi_U32", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Blowfish_SetKey_Ehbi_U33", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Blowfish_SetKey_Ehbi_U34", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Blowfish_SetKey_Ehbi_U35", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Blowfish_SetKey_Ehbi_U36", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Blowfish_SetKey_Ehbi_U37", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Blowfish_SetKey_Ehbi_U38", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Blowfish_SetKey_Ehbi_U39", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Blowfish_SetKey_Ehbi_U40", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Blowfish_SetKey_Ehbi_U41", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Blowfish_SetKey_Ehbi_U42", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Blowfish_SetKey_Ehbi_U43", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Blowfish_SetKey_Ehbi_U44", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Blowfish_SetKey_Ehbi_U45", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Blowfish_SetKey_Ehbi_U46", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Blowfish_SetKey_Ehbi_U47", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Blowfish_SetKey_Ehbi_U48", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Blowfish_SetKey_Ehbi_U49", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Blowfish_SetKey_Ehbi_U50", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Blowfish_SetKey_Ehbi_U51", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Blowfish_SetKey_Ehbi_U52", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Blowfish_SetKey_Ehbi_U53", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Blowfish_SetKey_Ehbi_U54", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Blowfish_SetKey_Ehbi_U55", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Blowfish_SetKey_Ehbi_U56", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Blowfish_SetKey_Ehbi_U57", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Blowfish_SetKey_Ehbi_U58", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Blowfish_SetKey_Ehbi_U59", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Blowfish_SetKey_Ehbi_U60", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Blowfish_SetKey_Ehbi_U61", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Blowfish_SetKey_Ehbi_U62", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Blowfish_SetKey_Ehbi_U63", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Blowfish_SetKey_Ehbi_U64", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Blowfish_SetKey_Ehbi_U65", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Blowfish_SetKey_Ehbi_U66", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Blowfish_SetKey_Ehbi_U67", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Blowfish_SetKey_Ehbi_U68", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Blowfish_SetKey_Ehbi_U69", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Blowfish_SetKey_Ehbi_U70", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Blowfish_SetKey_Ehbi_U71", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Blowfish_SetKey_Ehbi_U72", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Blowfish_SetKey_Ehbi_U73", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Blowfish_SetKey_Ehbi_U74", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Blowfish_SetKey_Ehbi_U75", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Blowfish_SetKey_Ehbi_U76", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Blowfish_SetKey_Ehbi_U77", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Blowfish_SetKey_Ehbi_U78", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Blowfish_SetKey_Ehbi_U79", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Blowfish_SetKey_Ehbi_U80", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Blowfish_SetKey_Ehbi_U81", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Blowfish_SetKey_Ehbi_U82", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Blowfish_SetKey_Ehbi_U83", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Blowfish_SetKey_Ehbi_U84", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Blowfish_SetKey_Ehbi_U85", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Blowfish_SetKey_Ehbi_U86", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Blowfish_SetKey_Ehbi_U87", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Blowfish_SetKey_Ehbi_U88", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Blowfish_SetKey_Ehbi_U89", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Blowfish_SetKey_Ehbi_U90", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Blowfish_SetKey_Ehbi_U91", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Blowfish_SetKey_Ehbi_U92", "Parent" : "0"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Blowfish_SetKey_Ehbi_U93", "Parent" : "0"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Blowfish_SetKey_Ehbi_U94", "Parent" : "0"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Blowfish_SetKey_Ehbi_U95", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Blowfish_SetKey_Ehbi_U96", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Blowfish_SetKey_Ehbi_U97", "Parent" : "0"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Blowfish_SetKey_Ehbi_U98", "Parent" : "0"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Blowfish_SetKey_Ehbi_U99", "Parent" : "0"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Blowfish_SetKey_Ehbi_U100", "Parent" : "0"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Blowfish_SetKey_Ehbi_U101", "Parent" : "0"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Blowfish_SetKey_Ehbi_U102", "Parent" : "0"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Blowfish_SetKey_Ehbi_U103", "Parent" : "0"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Blowfish_SetKey_Ehbi_U104", "Parent" : "0"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Blowfish_SetKey_Ehbi_U105", "Parent" : "0"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Blowfish_SetKey_Ehbi_U106", "Parent" : "0"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Blowfish_SetKey_Ehbi_U107", "Parent" : "0"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Blowfish_SetKey_Ehbi_U108", "Parent" : "0"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Blowfish_SetKey_Ehbi_U109", "Parent" : "0"},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Blowfish_SetKey_Ehbi_U110", "Parent" : "0"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Blowfish_SetKey_Ehbi_U111", "Parent" : "0"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Blowfish_SetKey_Ehbi_U112", "Parent" : "0"},
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Blowfish_SetKey_Ehbi_U113", "Parent" : "0"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Blowfish_SetKey_Ehbi_U114", "Parent" : "0"},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Blowfish_SetKey_Ehbi_U115", "Parent" : "0"},
	{"ID" : "93", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Blowfish_SetKey_Ehbi_U116", "Parent" : "0"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Blowfish_SetKey_Ehbi_U117", "Parent" : "0"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Blowfish_SetKey_Ehbi_U118", "Parent" : "0"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Blowfish_SetKey_Ehbi_U119", "Parent" : "0"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Blowfish_SetKey_Ehbi_U120", "Parent" : "0"},
	{"ID" : "98", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Blowfish_SetKey_Ehbi_U121", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	Blowfish_SetKey {
		key {Type I LastRead 16 FirstWrite -1}
		key_size {Type I LastRead 0 FirstWrite -1}
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
	{"Name" : "Latency", "Min" : "20878", "Max" : "20878"}
	, {"Name" : "Interval", "Min" : "20878", "Max" : "20878"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	key { ap_memory {  { key_address0 mem_address 1 6 }  { key_ce0 mem_ce 1 1 }  { key_q0 mem_dout 0 8 } } }
	key_size { ap_none {  { key_size in_data 0 64 } } }
	S_0 { ap_memory {  { S_0_address0 mem_address 1 8 }  { S_0_ce0 mem_ce 1 1 }  { S_0_we0 mem_we 1 1 }  { S_0_d0 mem_din 1 32 }  { S_0_q0 mem_dout 0 32 }  { S_0_address1 MemPortADDR2 1 8 }  { S_0_ce1 MemPortCE2 1 1 }  { S_0_we1 MemPortWE2 1 1 }  { S_0_d1 MemPortDIN2 1 32 } } }
	S_1 { ap_memory {  { S_1_address0 mem_address 1 8 }  { S_1_ce0 mem_ce 1 1 }  { S_1_we0 mem_we 1 1 }  { S_1_d0 mem_din 1 32 }  { S_1_q0 mem_dout 0 32 }  { S_1_address1 MemPortADDR2 1 8 }  { S_1_ce1 MemPortCE2 1 1 }  { S_1_we1 MemPortWE2 1 1 }  { S_1_d1 MemPortDIN2 1 32 } } }
	S_2 { ap_memory {  { S_2_address0 mem_address 1 8 }  { S_2_ce0 mem_ce 1 1 }  { S_2_we0 mem_we 1 1 }  { S_2_d0 mem_din 1 32 }  { S_2_q0 mem_dout 0 32 }  { S_2_address1 MemPortADDR2 1 8 }  { S_2_ce1 MemPortCE2 1 1 }  { S_2_we1 MemPortWE2 1 1 }  { S_2_d1 MemPortDIN2 1 32 } } }
	S_3 { ap_memory {  { S_3_address0 mem_address 1 8 }  { S_3_ce0 mem_ce 1 1 }  { S_3_we0 mem_we 1 1 }  { S_3_d0 mem_din 1 32 }  { S_3_q0 mem_dout 0 32 }  { S_3_address1 MemPortADDR2 1 8 }  { S_3_ce1 MemPortCE2 1 1 }  { S_3_we1 MemPortWE2 1 1 }  { S_3_d1 MemPortDIN2 1 32 } } }
}

set moduleName Blowfish_Decrypt
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
set C_modelName {Blowfish_Decrypt}
set C_modelType { void 0 }
set C_modelArgList {
	{ ciphertext int 8 regular {array 8 { 1 1 } 1 1 }  }
	{ decryptedtext int 8 regular {array 8 { 0 0 } 0 1 }  }
	{ P_0_read int 32 regular  }
	{ P_1_read int 32 regular  }
	{ P_2_read int 32 regular  }
	{ P_3_read int 32 regular  }
	{ P_4_read int 32 regular  }
	{ P_5_read int 32 regular  }
	{ P_6_read int 32 regular  }
	{ P_7_read int 32 regular  }
	{ P_8_read int 32 regular  }
	{ P_9_read int 32 regular  }
	{ P_10_read int 32 regular  }
	{ P_11_read int 32 regular  }
	{ P_12_read int 32 regular  }
	{ P_13_read int 32 regular  }
	{ P_14_read int 32 regular  }
	{ P_15_read int 32 regular  }
	{ P_16_read int 32 regular  }
	{ P_17_read int 32 regular  }
	{ S_0 int 32 regular {array 256 { 1 3 } 1 1 }  }
	{ S_1 int 32 regular {array 256 { 1 3 } 1 1 }  }
	{ S_2 int 32 regular {array 256 { 1 3 } 1 1 }  }
	{ S_3 int 32 regular {array 256 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "ciphertext", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "decryptedtext", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "P_0_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "P_1_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "P_2_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "P_3_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "P_4_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "P_5_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "P_6_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "P_7_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "P_8_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "P_9_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "P_10_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "P_11_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "P_12_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "P_13_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "P_14_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "P_15_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "P_16_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "P_17_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "S_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "S_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "S_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "S_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 50
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ciphertext_address0 sc_out sc_lv 3 signal 0 } 
	{ ciphertext_ce0 sc_out sc_logic 1 signal 0 } 
	{ ciphertext_q0 sc_in sc_lv 8 signal 0 } 
	{ ciphertext_address1 sc_out sc_lv 3 signal 0 } 
	{ ciphertext_ce1 sc_out sc_logic 1 signal 0 } 
	{ ciphertext_q1 sc_in sc_lv 8 signal 0 } 
	{ decryptedtext_address0 sc_out sc_lv 3 signal 1 } 
	{ decryptedtext_ce0 sc_out sc_logic 1 signal 1 } 
	{ decryptedtext_we0 sc_out sc_logic 1 signal 1 } 
	{ decryptedtext_d0 sc_out sc_lv 8 signal 1 } 
	{ decryptedtext_address1 sc_out sc_lv 3 signal 1 } 
	{ decryptedtext_ce1 sc_out sc_logic 1 signal 1 } 
	{ decryptedtext_we1 sc_out sc_logic 1 signal 1 } 
	{ decryptedtext_d1 sc_out sc_lv 8 signal 1 } 
	{ P_0_read sc_in sc_lv 32 signal 2 } 
	{ P_1_read sc_in sc_lv 32 signal 3 } 
	{ P_2_read sc_in sc_lv 32 signal 4 } 
	{ P_3_read sc_in sc_lv 32 signal 5 } 
	{ P_4_read sc_in sc_lv 32 signal 6 } 
	{ P_5_read sc_in sc_lv 32 signal 7 } 
	{ P_6_read sc_in sc_lv 32 signal 8 } 
	{ P_7_read sc_in sc_lv 32 signal 9 } 
	{ P_8_read sc_in sc_lv 32 signal 10 } 
	{ P_9_read sc_in sc_lv 32 signal 11 } 
	{ P_10_read sc_in sc_lv 32 signal 12 } 
	{ P_11_read sc_in sc_lv 32 signal 13 } 
	{ P_12_read sc_in sc_lv 32 signal 14 } 
	{ P_13_read sc_in sc_lv 32 signal 15 } 
	{ P_14_read sc_in sc_lv 32 signal 16 } 
	{ P_15_read sc_in sc_lv 32 signal 17 } 
	{ P_16_read sc_in sc_lv 32 signal 18 } 
	{ P_17_read sc_in sc_lv 32 signal 19 } 
	{ S_0_address0 sc_out sc_lv 8 signal 20 } 
	{ S_0_ce0 sc_out sc_logic 1 signal 20 } 
	{ S_0_q0 sc_in sc_lv 32 signal 20 } 
	{ S_1_address0 sc_out sc_lv 8 signal 21 } 
	{ S_1_ce0 sc_out sc_logic 1 signal 21 } 
	{ S_1_q0 sc_in sc_lv 32 signal 21 } 
	{ S_2_address0 sc_out sc_lv 8 signal 22 } 
	{ S_2_ce0 sc_out sc_logic 1 signal 22 } 
	{ S_2_q0 sc_in sc_lv 32 signal 22 } 
	{ S_3_address0 sc_out sc_lv 8 signal 23 } 
	{ S_3_ce0 sc_out sc_logic 1 signal 23 } 
	{ S_3_q0 sc_in sc_lv 32 signal 23 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ciphertext_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ciphertext", "role": "address0" }} , 
 	{ "name": "ciphertext_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ciphertext", "role": "ce0" }} , 
 	{ "name": "ciphertext_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ciphertext", "role": "q0" }} , 
 	{ "name": "ciphertext_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ciphertext", "role": "address1" }} , 
 	{ "name": "ciphertext_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ciphertext", "role": "ce1" }} , 
 	{ "name": "ciphertext_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ciphertext", "role": "q1" }} , 
 	{ "name": "decryptedtext_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "decryptedtext", "role": "address0" }} , 
 	{ "name": "decryptedtext_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "decryptedtext", "role": "ce0" }} , 
 	{ "name": "decryptedtext_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "decryptedtext", "role": "we0" }} , 
 	{ "name": "decryptedtext_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "decryptedtext", "role": "d0" }} , 
 	{ "name": "decryptedtext_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "decryptedtext", "role": "address1" }} , 
 	{ "name": "decryptedtext_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "decryptedtext", "role": "ce1" }} , 
 	{ "name": "decryptedtext_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "decryptedtext", "role": "we1" }} , 
 	{ "name": "decryptedtext_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "decryptedtext", "role": "d1" }} , 
 	{ "name": "P_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_0_read", "role": "default" }} , 
 	{ "name": "P_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_1_read", "role": "default" }} , 
 	{ "name": "P_2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_2_read", "role": "default" }} , 
 	{ "name": "P_3_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_3_read", "role": "default" }} , 
 	{ "name": "P_4_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_4_read", "role": "default" }} , 
 	{ "name": "P_5_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_5_read", "role": "default" }} , 
 	{ "name": "P_6_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_6_read", "role": "default" }} , 
 	{ "name": "P_7_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_7_read", "role": "default" }} , 
 	{ "name": "P_8_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_8_read", "role": "default" }} , 
 	{ "name": "P_9_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_9_read", "role": "default" }} , 
 	{ "name": "P_10_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_10_read", "role": "default" }} , 
 	{ "name": "P_11_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_11_read", "role": "default" }} , 
 	{ "name": "P_12_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_12_read", "role": "default" }} , 
 	{ "name": "P_13_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_13_read", "role": "default" }} , 
 	{ "name": "P_14_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_14_read", "role": "default" }} , 
 	{ "name": "P_15_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_15_read", "role": "default" }} , 
 	{ "name": "P_16_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_16_read", "role": "default" }} , 
 	{ "name": "P_17_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_17_read", "role": "default" }} , 
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
 	{ "name": "S_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "S_3", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "Blowfish_Decrypt",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "72", "EstimateLatencyMax" : "72",
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
			{"Name" : "S_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "S_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "S_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "S_3", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	Blowfish_Decrypt {
		ciphertext {Type I LastRead 4 FirstWrite -1}
		decryptedtext {Type O LastRead -1 FirstWrite 5}
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
		S_0 {Type I LastRead 6 FirstWrite -1}
		S_1 {Type I LastRead 6 FirstWrite -1}
		S_2 {Type I LastRead 6 FirstWrite -1}
		S_3 {Type I LastRead 6 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "72", "Max" : "72"}
	, {"Name" : "Interval", "Min" : "72", "Max" : "72"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	ciphertext { ap_memory {  { ciphertext_address0 mem_address 1 3 }  { ciphertext_ce0 mem_ce 1 1 }  { ciphertext_q0 mem_dout 0 8 }  { ciphertext_address1 MemPortADDR2 1 3 }  { ciphertext_ce1 MemPortCE2 1 1 }  { ciphertext_q1 MemPortDOUT2 0 8 } } }
	decryptedtext { ap_memory {  { decryptedtext_address0 mem_address 1 3 }  { decryptedtext_ce0 mem_ce 1 1 }  { decryptedtext_we0 mem_we 1 1 }  { decryptedtext_d0 mem_din 1 8 }  { decryptedtext_address1 MemPortADDR2 1 3 }  { decryptedtext_ce1 MemPortCE2 1 1 }  { decryptedtext_we1 MemPortWE2 1 1 }  { decryptedtext_d1 MemPortDIN2 1 8 } } }
	P_0_read { ap_none {  { P_0_read in_data 0 32 } } }
	P_1_read { ap_none {  { P_1_read in_data 0 32 } } }
	P_2_read { ap_none {  { P_2_read in_data 0 32 } } }
	P_3_read { ap_none {  { P_3_read in_data 0 32 } } }
	P_4_read { ap_none {  { P_4_read in_data 0 32 } } }
	P_5_read { ap_none {  { P_5_read in_data 0 32 } } }
	P_6_read { ap_none {  { P_6_read in_data 0 32 } } }
	P_7_read { ap_none {  { P_7_read in_data 0 32 } } }
	P_8_read { ap_none {  { P_8_read in_data 0 32 } } }
	P_9_read { ap_none {  { P_9_read in_data 0 32 } } }
	P_10_read { ap_none {  { P_10_read in_data 0 32 } } }
	P_11_read { ap_none {  { P_11_read in_data 0 32 } } }
	P_12_read { ap_none {  { P_12_read in_data 0 32 } } }
	P_13_read { ap_none {  { P_13_read in_data 0 32 } } }
	P_14_read { ap_none {  { P_14_read in_data 0 32 } } }
	P_15_read { ap_none {  { P_15_read in_data 0 32 } } }
	P_16_read { ap_none {  { P_16_read in_data 0 32 } } }
	P_17_read { ap_none {  { P_17_read in_data 0 32 } } }
	S_0 { ap_memory {  { S_0_address0 mem_address 1 8 }  { S_0_ce0 mem_ce 1 1 }  { S_0_q0 mem_dout 0 32 } } }
	S_1 { ap_memory {  { S_1_address0 mem_address 1 8 }  { S_1_ce0 mem_ce 1 1 }  { S_1_q0 mem_dout 0 32 } } }
	S_2 { ap_memory {  { S_2_address0 mem_address 1 8 }  { S_2_ce0 mem_ce 1 1 }  { S_2_q0 mem_dout 0 32 } } }
	S_3 { ap_memory {  { S_3_address0 mem_address 1 8 }  { S_3_ce0 mem_ce 1 1 }  { S_3_q0 mem_dout 0 32 } } }
}

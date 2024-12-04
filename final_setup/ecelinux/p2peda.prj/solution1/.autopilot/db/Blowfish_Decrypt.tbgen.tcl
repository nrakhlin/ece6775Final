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
}
set C_modelArgMapList {[ 
	{ "Name" : "ciphertext", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "decryptedtext", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 20
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
 	{ "name": "decryptedtext_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "decryptedtext", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
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
			{"Name" : "P", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "S_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "S_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "S_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "S_3", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.P_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.S_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.S_1_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.S_2_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.S_3_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	Blowfish_Decrypt {
		ciphertext {Type I LastRead 4 FirstWrite -1}
		decryptedtext {Type O LastRead -1 FirstWrite 5}
		P {Type I LastRead -1 FirstWrite -1}
		S_0 {Type I LastRead -1 FirstWrite -1}
		S_1 {Type I LastRead -1 FirstWrite -1}
		S_2 {Type I LastRead -1 FirstWrite -1}
		S_3 {Type I LastRead -1 FirstWrite -1}}}

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
}

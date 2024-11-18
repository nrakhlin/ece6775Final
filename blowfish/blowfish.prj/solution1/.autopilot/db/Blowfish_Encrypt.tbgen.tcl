set moduleName Blowfish_Encrypt
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
set C_modelName {Blowfish_Encrypt}
set C_modelType { void 0 }
set C_modelArgList {
	{ plaintext int 8 regular {array 9 { 1 1 } 1 1 }  }
	{ ciphertext int 8 regular {array 9 { 0 0 } 0 1 }  }
	{ P int 32 regular {array 18 { 1 3 } 1 1 }  }
	{ S int 32 regular {array 1024 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "plaintext", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "ciphertext", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "P", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "S", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 29
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ plaintext_address0 sc_out sc_lv 4 signal 0 } 
	{ plaintext_ce0 sc_out sc_logic 1 signal 0 } 
	{ plaintext_q0 sc_in sc_lv 8 signal 0 } 
	{ plaintext_address1 sc_out sc_lv 4 signal 0 } 
	{ plaintext_ce1 sc_out sc_logic 1 signal 0 } 
	{ plaintext_q1 sc_in sc_lv 8 signal 0 } 
	{ ciphertext_address0 sc_out sc_lv 4 signal 1 } 
	{ ciphertext_ce0 sc_out sc_logic 1 signal 1 } 
	{ ciphertext_we0 sc_out sc_logic 1 signal 1 } 
	{ ciphertext_d0 sc_out sc_lv 8 signal 1 } 
	{ ciphertext_address1 sc_out sc_lv 4 signal 1 } 
	{ ciphertext_ce1 sc_out sc_logic 1 signal 1 } 
	{ ciphertext_we1 sc_out sc_logic 1 signal 1 } 
	{ ciphertext_d1 sc_out sc_lv 8 signal 1 } 
	{ P_address0 sc_out sc_lv 5 signal 2 } 
	{ P_ce0 sc_out sc_logic 1 signal 2 } 
	{ P_q0 sc_in sc_lv 32 signal 2 } 
	{ S_address0 sc_out sc_lv 10 signal 3 } 
	{ S_ce0 sc_out sc_logic 1 signal 3 } 
	{ S_q0 sc_in sc_lv 32 signal 3 } 
	{ S_address1 sc_out sc_lv 10 signal 3 } 
	{ S_ce1 sc_out sc_logic 1 signal 3 } 
	{ S_q1 sc_in sc_lv 32 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
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
 	{ "name": "P_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P", "role": "q0" }} , 
 	{ "name": "S_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "S", "role": "address0" }} , 
 	{ "name": "S_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "S", "role": "ce0" }} , 
 	{ "name": "S_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "S", "role": "q0" }} , 
 	{ "name": "S_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "S", "role": "address1" }} , 
 	{ "name": "S_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "S", "role": "ce1" }} , 
 	{ "name": "S_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "S", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
	Blowfish_Encrypt {
		plaintext {Type I LastRead 4 FirstWrite -1}
		ciphertext {Type O LastRead -1 FirstWrite 6}
		P {Type I LastRead 7 FirstWrite -1}
		S {Type I LastRead 8 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "73", "Max" : "73"}
	, {"Name" : "Interval", "Min" : "73", "Max" : "73"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	plaintext { ap_memory {  { plaintext_address0 mem_address 1 4 }  { plaintext_ce0 mem_ce 1 1 }  { plaintext_q0 mem_dout 0 8 }  { plaintext_address1 MemPortADDR2 1 4 }  { plaintext_ce1 MemPortCE2 1 1 }  { plaintext_q1 MemPortDOUT2 0 8 } } }
	ciphertext { ap_memory {  { ciphertext_address0 mem_address 1 4 }  { ciphertext_ce0 mem_ce 1 1 }  { ciphertext_we0 mem_we 1 1 }  { ciphertext_d0 mem_din 1 8 }  { ciphertext_address1 MemPortADDR2 1 4 }  { ciphertext_ce1 MemPortCE2 1 1 }  { ciphertext_we1 MemPortWE2 1 1 }  { ciphertext_d1 MemPortDIN2 1 8 } } }
	P { ap_memory {  { P_address0 mem_address 1 5 }  { P_ce0 mem_ce 1 1 }  { P_q0 mem_dout 0 32 } } }
	S { ap_memory {  { S_address0 mem_address 1 10 }  { S_ce0 mem_ce 1 1 }  { S_q0 mem_dout 0 32 }  { S_address1 MemPortADDR2 1 10 }  { S_ce1 MemPortCE2 1 1 }  { S_q1 MemPortDOUT2 0 32 } } }
}

set moduleName sEncryptBlock
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
set C_modelName {sEncryptBlock}
set C_modelType { int 64 }
set C_modelArgList {
	{ Blowfish_pary_s int 32 regular {array 18 { 1 1 } 1 1 }  }
	{ Blowfish_sbox_s int 32 regular {array 1024 { 1 1 } 1 1 }  }
	{ left_r int 32 regular  }
	{ right_r int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "Blowfish_pary_s", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "Blowfish_sbox_s", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "left_r", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "right_r", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 64} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ Blowfish_pary_s_address0 sc_out sc_lv 5 signal 0 } 
	{ Blowfish_pary_s_ce0 sc_out sc_logic 1 signal 0 } 
	{ Blowfish_pary_s_q0 sc_in sc_lv 32 signal 0 } 
	{ Blowfish_pary_s_address1 sc_out sc_lv 5 signal 0 } 
	{ Blowfish_pary_s_ce1 sc_out sc_logic 1 signal 0 } 
	{ Blowfish_pary_s_q1 sc_in sc_lv 32 signal 0 } 
	{ Blowfish_sbox_s_address0 sc_out sc_lv 10 signal 1 } 
	{ Blowfish_sbox_s_ce0 sc_out sc_logic 1 signal 1 } 
	{ Blowfish_sbox_s_q0 sc_in sc_lv 32 signal 1 } 
	{ Blowfish_sbox_s_address1 sc_out sc_lv 10 signal 1 } 
	{ Blowfish_sbox_s_ce1 sc_out sc_logic 1 signal 1 } 
	{ Blowfish_sbox_s_q1 sc_in sc_lv 32 signal 1 } 
	{ left_r sc_in sc_lv 32 signal 2 } 
	{ right_r sc_in sc_lv 32 signal 3 } 
	{ ap_return_0 sc_out sc_lv 32 signal -1 } 
	{ ap_return_1 sc_out sc_lv 32 signal -1 } 
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
 	{ "name": "Blowfish_pary_s_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Blowfish_pary_s", "role": "q0" }} , 
 	{ "name": "Blowfish_pary_s_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "Blowfish_pary_s", "role": "address1" }} , 
 	{ "name": "Blowfish_pary_s_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Blowfish_pary_s", "role": "ce1" }} , 
 	{ "name": "Blowfish_pary_s_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Blowfish_pary_s", "role": "q1" }} , 
 	{ "name": "Blowfish_sbox_s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "Blowfish_sbox_s", "role": "address0" }} , 
 	{ "name": "Blowfish_sbox_s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Blowfish_sbox_s", "role": "ce0" }} , 
 	{ "name": "Blowfish_sbox_s_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Blowfish_sbox_s", "role": "q0" }} , 
 	{ "name": "Blowfish_sbox_s_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "Blowfish_sbox_s", "role": "address1" }} , 
 	{ "name": "Blowfish_sbox_s_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Blowfish_sbox_s", "role": "ce1" }} , 
 	{ "name": "Blowfish_sbox_s_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Blowfish_sbox_s", "role": "q1" }} , 
 	{ "name": "left_r", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "left_r", "role": "default" }} , 
 	{ "name": "right_r", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "right_r", "role": "default" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
			{"Name" : "right_r", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	sEncryptBlock {
		Blowfish_pary_s {Type I LastRead 2 FirstWrite -1}
		Blowfish_sbox_s {Type I LastRead 4 FirstWrite -1}
		left_r {Type I LastRead 0 FirstWrite -1}
		right_r {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "66", "Max" : "66"}
	, {"Name" : "Interval", "Min" : "66", "Max" : "66"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	Blowfish_pary_s { ap_memory {  { Blowfish_pary_s_address0 mem_address 1 5 }  { Blowfish_pary_s_ce0 mem_ce 1 1 }  { Blowfish_pary_s_q0 mem_dout 0 32 }  { Blowfish_pary_s_address1 MemPortADDR2 1 5 }  { Blowfish_pary_s_ce1 MemPortCE2 1 1 }  { Blowfish_pary_s_q1 MemPortDOUT2 0 32 } } }
	Blowfish_sbox_s { ap_memory {  { Blowfish_sbox_s_address0 mem_address 1 10 }  { Blowfish_sbox_s_ce0 mem_ce 1 1 }  { Blowfish_sbox_s_q0 mem_dout 0 32 }  { Blowfish_sbox_s_address1 MemPortADDR2 1 10 }  { Blowfish_sbox_s_ce1 MemPortCE2 1 1 }  { Blowfish_sbox_s_q1 MemPortDOUT2 0 32 } } }
	left_r { ap_none {  { left_r in_data 0 32 } } }
	right_r { ap_none {  { right_r in_data 0 32 } } }
}

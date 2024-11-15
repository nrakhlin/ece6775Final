set moduleName Decrypt
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
set C_modelName {Decrypt}
set C_modelType { void 0 }
set C_modelArgList {
	{ Blowfish_pary_s int 32 regular {array 18 { 1 3 } 1 1 }  }
	{ Blowfish_sbox_s int 32 regular {array 1024 { 1 1 } 1 1 }  }
	{ dst int 8 regular {array 8 { 2 2 } 1 1 }  }
	{ src int 8 regular {array 8 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "Blowfish_pary_s", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "Blowfish_sbox_s", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "dst", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "src", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 28
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
	{ Blowfish_sbox_s_address0 sc_out sc_lv 10 signal 1 } 
	{ Blowfish_sbox_s_ce0 sc_out sc_logic 1 signal 1 } 
	{ Blowfish_sbox_s_q0 sc_in sc_lv 32 signal 1 } 
	{ Blowfish_sbox_s_address1 sc_out sc_lv 10 signal 1 } 
	{ Blowfish_sbox_s_ce1 sc_out sc_logic 1 signal 1 } 
	{ Blowfish_sbox_s_q1 sc_in sc_lv 32 signal 1 } 
	{ dst_address0 sc_out sc_lv 3 signal 2 } 
	{ dst_ce0 sc_out sc_logic 1 signal 2 } 
	{ dst_we0 sc_out sc_logic 1 signal 2 } 
	{ dst_d0 sc_out sc_lv 8 signal 2 } 
	{ dst_q0 sc_in sc_lv 8 signal 2 } 
	{ dst_address1 sc_out sc_lv 3 signal 2 } 
	{ dst_ce1 sc_out sc_logic 1 signal 2 } 
	{ dst_we1 sc_out sc_logic 1 signal 2 } 
	{ dst_d1 sc_out sc_lv 8 signal 2 } 
	{ dst_q1 sc_in sc_lv 8 signal 2 } 
	{ src_address0 sc_out sc_lv 3 signal 3 } 
	{ src_ce0 sc_out sc_logic 1 signal 3 } 
	{ src_q0 sc_in sc_lv 8 signal 3 } 
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
 	{ "name": "Blowfish_sbox_s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "Blowfish_sbox_s", "role": "address0" }} , 
 	{ "name": "Blowfish_sbox_s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Blowfish_sbox_s", "role": "ce0" }} , 
 	{ "name": "Blowfish_sbox_s_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Blowfish_sbox_s", "role": "q0" }} , 
 	{ "name": "Blowfish_sbox_s_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "Blowfish_sbox_s", "role": "address1" }} , 
 	{ "name": "Blowfish_sbox_s_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Blowfish_sbox_s", "role": "ce1" }} , 
 	{ "name": "Blowfish_sbox_s_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Blowfish_sbox_s", "role": "q1" }} , 
 	{ "name": "dst_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "dst", "role": "address0" }} , 
 	{ "name": "dst_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst", "role": "ce0" }} , 
 	{ "name": "dst_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst", "role": "we0" }} , 
 	{ "name": "dst_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dst", "role": "d0" }} , 
 	{ "name": "dst_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dst", "role": "q0" }} , 
 	{ "name": "dst_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "dst", "role": "address1" }} , 
 	{ "name": "dst_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst", "role": "ce1" }} , 
 	{ "name": "dst_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst", "role": "we1" }} , 
 	{ "name": "dst_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dst", "role": "d1" }} , 
 	{ "name": "dst_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dst", "role": "q1" }} , 
 	{ "name": "src_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "src", "role": "address0" }} , 
 	{ "name": "src_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src", "role": "ce0" }} , 
 	{ "name": "src_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
			{"Name" : "src", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	Decrypt {
		Blowfish_pary_s {Type I LastRead 8 FirstWrite -1}
		Blowfish_sbox_s {Type I LastRead 9 FirstWrite -1}
		dst {Type IO LastRead 5 FirstWrite 2}
		src {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "90", "Max" : "90"}
	, {"Name" : "Interval", "Min" : "90", "Max" : "90"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	Blowfish_pary_s { ap_memory {  { Blowfish_pary_s_address0 mem_address 1 5 }  { Blowfish_pary_s_ce0 mem_ce 1 1 }  { Blowfish_pary_s_q0 mem_dout 0 32 } } }
	Blowfish_sbox_s { ap_memory {  { Blowfish_sbox_s_address0 mem_address 1 10 }  { Blowfish_sbox_s_ce0 mem_ce 1 1 }  { Blowfish_sbox_s_q0 mem_dout 0 32 }  { Blowfish_sbox_s_address1 MemPortADDR2 1 10 }  { Blowfish_sbox_s_ce1 MemPortCE2 1 1 }  { Blowfish_sbox_s_q1 MemPortDOUT2 0 32 } } }
	dst { ap_memory {  { dst_address0 mem_address 1 3 }  { dst_ce0 mem_ce 1 1 }  { dst_we0 mem_we 1 1 }  { dst_d0 mem_din 1 8 }  { dst_q0 mem_dout 0 8 }  { dst_address1 MemPortADDR2 1 3 }  { dst_ce1 MemPortCE2 1 1 }  { dst_we1 MemPortWE2 1 1 }  { dst_d1 MemPortDIN2 1 8 }  { dst_q1 MemPortDOUT2 0 8 } } }
	src { ap_memory {  { src_address0 mem_address 1 3 }  { src_ce0 mem_ce 1 1 }  { src_q0 mem_dout 0 8 } } }
}

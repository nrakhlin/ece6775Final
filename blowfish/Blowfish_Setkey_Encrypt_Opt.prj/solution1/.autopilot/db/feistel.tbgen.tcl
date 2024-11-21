set moduleName feistel
set isTopModule 0
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 1
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {feistel}
set C_modelType { int 32 }
set C_modelArgList {
	{ x int 32 regular  }
	{ S_0 int 32 regular {array 256 { 1 3 } 1 1 }  }
	{ S_1 int 32 regular {array 256 { 1 3 } 1 1 }  }
	{ S_2 int 32 regular {array 256 { 1 3 } 1 1 }  }
	{ S_3 int 32 regular {array 256 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "x", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "S_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "S_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "S_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "S_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 32} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
	{ x sc_in sc_lv 32 signal 0 } 
	{ S_0_address0 sc_out sc_lv 8 signal 1 } 
	{ S_0_ce0 sc_out sc_logic 1 signal 1 } 
	{ S_0_q0 sc_in sc_lv 32 signal 1 } 
	{ S_1_address0 sc_out sc_lv 8 signal 2 } 
	{ S_1_ce0 sc_out sc_logic 1 signal 2 } 
	{ S_1_q0 sc_in sc_lv 32 signal 2 } 
	{ S_2_address0 sc_out sc_lv 8 signal 3 } 
	{ S_2_ce0 sc_out sc_logic 1 signal 3 } 
	{ S_2_q0 sc_in sc_lv 32 signal 3 } 
	{ S_3_address0 sc_out sc_lv 8 signal 4 } 
	{ S_3_ce0 sc_out sc_logic 1 signal 4 } 
	{ S_3_q0 sc_in sc_lv 32 signal 4 } 
	{ ap_return sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }} , 
 	{ "name": "x", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x", "role": "default" }} , 
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
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
	feistel {
		x {Type I LastRead 0 FirstWrite -1}
		S_0 {Type I LastRead 0 FirstWrite -1}
		S_1 {Type I LastRead 0 FirstWrite -1}
		S_2 {Type I LastRead 0 FirstWrite -1}
		S_3 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	x { ap_none {  { x in_data 0 32 } } }
	S_0 { ap_memory {  { S_0_address0 mem_address 1 8 }  { S_0_ce0 mem_ce 1 1 }  { S_0_q0 mem_dout 0 32 } } }
	S_1 { ap_memory {  { S_1_address0 mem_address 1 8 }  { S_1_ce0 mem_ce 1 1 }  { S_1_q0 mem_dout 0 32 } } }
	S_2 { ap_memory {  { S_2_address0 mem_address 1 8 }  { S_2_ce0 mem_ce 1 1 }  { S_2_q0 mem_dout 0 32 } } }
	S_3 { ap_memory {  { S_3_address0 mem_address 1 8 }  { S_3_ce0 mem_ce 1 1 }  { S_3_q0 mem_dout 0 32 } } }
}

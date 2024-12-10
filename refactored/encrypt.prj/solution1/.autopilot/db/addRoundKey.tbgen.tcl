set moduleName addRoundKey
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
set C_modelName {addRoundKey}
set C_modelType { void 0 }
set C_modelArgList {
	{ state int 8 regular {array 16 { 2 2 } 1 1 }  }
	{ roundKey_0_read int 8 regular  }
	{ roundKey_1_read int 8 regular  }
	{ roundKey_2_read int 8 regular  }
	{ roundKey_3_read int 8 regular  }
	{ roundKey_4_read int 8 regular  }
	{ roundKey_5_read int 8 regular  }
	{ roundKey_6_read int 8 regular  }
	{ roundKey_7_read int 8 regular  }
	{ roundKey_8_read int 8 regular  }
	{ roundKey_9_read int 8 regular  }
	{ roundKey_10_read int 8 regular  }
	{ roundKey_11_read int 8 regular  }
	{ roundKey_12_read int 8 regular  }
	{ roundKey_13_read int 8 regular  }
	{ roundKey_14_read int 8 regular  }
	{ roundKey_15_read int 8 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "state", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "roundKey_0_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "roundKey_1_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "roundKey_2_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "roundKey_3_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "roundKey_4_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "roundKey_5_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "roundKey_6_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "roundKey_7_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "roundKey_8_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "roundKey_9_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "roundKey_10_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "roundKey_11_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "roundKey_12_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "roundKey_13_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "roundKey_14_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "roundKey_15_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 32
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ state_address0 sc_out sc_lv 4 signal 0 } 
	{ state_ce0 sc_out sc_logic 1 signal 0 } 
	{ state_we0 sc_out sc_logic 1 signal 0 } 
	{ state_d0 sc_out sc_lv 8 signal 0 } 
	{ state_q0 sc_in sc_lv 8 signal 0 } 
	{ state_address1 sc_out sc_lv 4 signal 0 } 
	{ state_ce1 sc_out sc_logic 1 signal 0 } 
	{ state_we1 sc_out sc_logic 1 signal 0 } 
	{ state_d1 sc_out sc_lv 8 signal 0 } 
	{ state_q1 sc_in sc_lv 8 signal 0 } 
	{ roundKey_0_read sc_in sc_lv 8 signal 1 } 
	{ roundKey_1_read sc_in sc_lv 8 signal 2 } 
	{ roundKey_2_read sc_in sc_lv 8 signal 3 } 
	{ roundKey_3_read sc_in sc_lv 8 signal 4 } 
	{ roundKey_4_read sc_in sc_lv 8 signal 5 } 
	{ roundKey_5_read sc_in sc_lv 8 signal 6 } 
	{ roundKey_6_read sc_in sc_lv 8 signal 7 } 
	{ roundKey_7_read sc_in sc_lv 8 signal 8 } 
	{ roundKey_8_read sc_in sc_lv 8 signal 9 } 
	{ roundKey_9_read sc_in sc_lv 8 signal 10 } 
	{ roundKey_10_read sc_in sc_lv 8 signal 11 } 
	{ roundKey_11_read sc_in sc_lv 8 signal 12 } 
	{ roundKey_12_read sc_in sc_lv 8 signal 13 } 
	{ roundKey_13_read sc_in sc_lv 8 signal 14 } 
	{ roundKey_14_read sc_in sc_lv 8 signal 15 } 
	{ roundKey_15_read sc_in sc_lv 8 signal 16 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "state_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "state", "role": "address0" }} , 
 	{ "name": "state_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state", "role": "ce0" }} , 
 	{ "name": "state_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state", "role": "we0" }} , 
 	{ "name": "state_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "state", "role": "d0" }} , 
 	{ "name": "state_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "state", "role": "q0" }} , 
 	{ "name": "state_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "state", "role": "address1" }} , 
 	{ "name": "state_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state", "role": "ce1" }} , 
 	{ "name": "state_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state", "role": "we1" }} , 
 	{ "name": "state_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "state", "role": "d1" }} , 
 	{ "name": "state_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "state", "role": "q1" }} , 
 	{ "name": "roundKey_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "roundKey_0_read", "role": "default" }} , 
 	{ "name": "roundKey_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "roundKey_1_read", "role": "default" }} , 
 	{ "name": "roundKey_2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "roundKey_2_read", "role": "default" }} , 
 	{ "name": "roundKey_3_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "roundKey_3_read", "role": "default" }} , 
 	{ "name": "roundKey_4_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "roundKey_4_read", "role": "default" }} , 
 	{ "name": "roundKey_5_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "roundKey_5_read", "role": "default" }} , 
 	{ "name": "roundKey_6_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "roundKey_6_read", "role": "default" }} , 
 	{ "name": "roundKey_7_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "roundKey_7_read", "role": "default" }} , 
 	{ "name": "roundKey_8_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "roundKey_8_read", "role": "default" }} , 
 	{ "name": "roundKey_9_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "roundKey_9_read", "role": "default" }} , 
 	{ "name": "roundKey_10_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "roundKey_10_read", "role": "default" }} , 
 	{ "name": "roundKey_11_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "roundKey_11_read", "role": "default" }} , 
 	{ "name": "roundKey_12_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "roundKey_12_read", "role": "default" }} , 
 	{ "name": "roundKey_13_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "roundKey_13_read", "role": "default" }} , 
 	{ "name": "roundKey_14_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "roundKey_14_read", "role": "default" }} , 
 	{ "name": "roundKey_15_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "roundKey_15_read", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "addRoundKey",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "15", "EstimateLatencyMax" : "15",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "roundKey_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "roundKey_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "roundKey_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "roundKey_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "roundKey_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "roundKey_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "roundKey_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "roundKey_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "roundKey_8_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "roundKey_9_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "roundKey_10_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "roundKey_11_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "roundKey_12_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "roundKey_13_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "roundKey_14_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "roundKey_15_read", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	addRoundKey {
		state {Type IO LastRead 8 FirstWrite 8}
		roundKey_0_read {Type I LastRead 8 FirstWrite -1}
		roundKey_1_read {Type I LastRead 8 FirstWrite -1}
		roundKey_2_read {Type I LastRead 9 FirstWrite -1}
		roundKey_3_read {Type I LastRead 9 FirstWrite -1}
		roundKey_4_read {Type I LastRead 10 FirstWrite -1}
		roundKey_5_read {Type I LastRead 10 FirstWrite -1}
		roundKey_6_read {Type I LastRead 11 FirstWrite -1}
		roundKey_7_read {Type I LastRead 11 FirstWrite -1}
		roundKey_8_read {Type I LastRead 12 FirstWrite -1}
		roundKey_9_read {Type I LastRead 12 FirstWrite -1}
		roundKey_10_read {Type I LastRead 13 FirstWrite -1}
		roundKey_11_read {Type I LastRead 13 FirstWrite -1}
		roundKey_12_read {Type I LastRead 14 FirstWrite -1}
		roundKey_13_read {Type I LastRead 14 FirstWrite -1}
		roundKey_14_read {Type I LastRead 15 FirstWrite -1}
		roundKey_15_read {Type I LastRead 15 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "15", "Max" : "15"}
	, {"Name" : "Interval", "Min" : "15", "Max" : "15"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	state { ap_memory {  { state_address0 mem_address 1 4 }  { state_ce0 mem_ce 1 1 }  { state_we0 mem_we 1 1 }  { state_d0 mem_din 1 8 }  { state_q0 mem_dout 0 8 }  { state_address1 MemPortADDR2 1 4 }  { state_ce1 MemPortCE2 1 1 }  { state_we1 MemPortWE2 1 1 }  { state_d1 MemPortDIN2 1 8 }  { state_q1 MemPortDOUT2 0 8 } } }
	roundKey_0_read { ap_none {  { roundKey_0_read in_data 0 8 } } }
	roundKey_1_read { ap_none {  { roundKey_1_read in_data 0 8 } } }
	roundKey_2_read { ap_none {  { roundKey_2_read in_data 0 8 } } }
	roundKey_3_read { ap_none {  { roundKey_3_read in_data 0 8 } } }
	roundKey_4_read { ap_none {  { roundKey_4_read in_data 0 8 } } }
	roundKey_5_read { ap_none {  { roundKey_5_read in_data 0 8 } } }
	roundKey_6_read { ap_none {  { roundKey_6_read in_data 0 8 } } }
	roundKey_7_read { ap_none {  { roundKey_7_read in_data 0 8 } } }
	roundKey_8_read { ap_none {  { roundKey_8_read in_data 0 8 } } }
	roundKey_9_read { ap_none {  { roundKey_9_read in_data 0 8 } } }
	roundKey_10_read { ap_none {  { roundKey_10_read in_data 0 8 } } }
	roundKey_11_read { ap_none {  { roundKey_11_read in_data 0 8 } } }
	roundKey_12_read { ap_none {  { roundKey_12_read in_data 0 8 } } }
	roundKey_13_read { ap_none {  { roundKey_13_read in_data 0 8 } } }
	roundKey_14_read { ap_none {  { roundKey_14_read in_data 0 8 } } }
	roundKey_15_read { ap_none {  { roundKey_15_read in_data 0 8 } } }
}

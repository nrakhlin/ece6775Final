set moduleName Encrypt_SetKey
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
set C_modelName {Encrypt_SetKey}
set C_modelType { int 64 }
set C_modelArgList {
	{ left_read int 32 regular  }
	{ right_read int 32 regular  }
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
	{ "Name" : "left_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "right_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
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
 	{ "Name" : "S_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 64} ]}
# RTL Port declarations: 
set portNum 40
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ left_read sc_in sc_lv 32 signal 0 } 
	{ right_read sc_in sc_lv 32 signal 1 } 
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
 	{ "name": "left_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "left_read", "role": "default" }} , 
 	{ "name": "right_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "right_read", "role": "default" }} , 
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
 	{ "name": "S_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "S_3", "role": "q0" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "Encrypt_SetKey",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "32", "EstimateLatencyMax" : "32",
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
					{"ID" : "1", "SubInstance" : "grp_feistel_fu_174", "Port" : "S_0"}]},
			{"Name" : "S_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_feistel_fu_174", "Port" : "S_1"}]},
			{"Name" : "S_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_feistel_fu_174", "Port" : "S_2"}]},
			{"Name" : "S_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_feistel_fu_174", "Port" : "S_3"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_feistel_fu_174", "Parent" : "0",
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
	Encrypt_SetKey {
		left_read {Type I LastRead 0 FirstWrite -1}
		right_read {Type I LastRead 2 FirstWrite -1}
		P_0_read {Type I LastRead 0 FirstWrite -1}
		P_1_read {Type I LastRead 2 FirstWrite -1}
		P_2_read {Type I LastRead 4 FirstWrite -1}
		P_3_read {Type I LastRead 6 FirstWrite -1}
		P_4_read {Type I LastRead 8 FirstWrite -1}
		P_5_read {Type I LastRead 10 FirstWrite -1}
		P_6_read {Type I LastRead 12 FirstWrite -1}
		P_7_read {Type I LastRead 14 FirstWrite -1}
		P_8_read {Type I LastRead 16 FirstWrite -1}
		P_9_read {Type I LastRead 18 FirstWrite -1}
		P_10_read {Type I LastRead 20 FirstWrite -1}
		P_11_read {Type I LastRead 22 FirstWrite -1}
		P_12_read {Type I LastRead 24 FirstWrite -1}
		P_13_read {Type I LastRead 26 FirstWrite -1}
		P_14_read {Type I LastRead 28 FirstWrite -1}
		P_15_read {Type I LastRead 30 FirstWrite -1}
		P_16_read {Type I LastRead 32 FirstWrite -1}
		P_17_read {Type I LastRead 32 FirstWrite -1}
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
	{"Name" : "Latency", "Min" : "32", "Max" : "32"}
	, {"Name" : "Interval", "Min" : "32", "Max" : "32"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	left_read { ap_none {  { left_read in_data 0 32 } } }
	right_read { ap_none {  { right_read in_data 0 32 } } }
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

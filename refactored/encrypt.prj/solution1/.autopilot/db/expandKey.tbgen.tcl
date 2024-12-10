set moduleName expandKey
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
set C_modelName {expandKey}
set C_modelType { void 0 }
set C_modelArgList {
	{ expandedKey_0 int 8 regular {array 44 { 2 2 } 1 1 }  }
	{ expandedKey_1 int 8 regular {array 44 { 2 2 } 1 1 }  }
	{ expandedKey_2 int 8 regular {array 44 { 2 3 } 1 1 }  }
	{ expandedKey_3 int 8 regular {array 44 { 2 2 } 1 1 }  }
	{ key_0_read int 8 regular  }
	{ key_1_read int 8 regular  }
	{ key_2_read int 8 regular  }
	{ key_3_read int 8 regular  }
	{ key_4_read int 8 regular  }
	{ key_5_read int 8 regular  }
	{ key_6_read int 8 regular  }
	{ key_7_read int 8 regular  }
	{ key_8_read int 8 regular  }
	{ key_9_read int 8 regular  }
	{ key_10_read int 8 regular  }
	{ key_11_read int 8 regular  }
	{ key_12_read int 8 regular  }
	{ key_13_read int 8 regular  }
	{ key_14_read int 8 regular  }
	{ key_15_read int 8 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "expandedKey_0", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "expandedKey_1", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "expandedKey_2", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "expandedKey_3", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "key_0_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "key_1_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "key_2_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "key_3_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "key_4_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "key_5_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "key_6_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "key_7_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "key_8_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "key_9_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "key_10_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "key_11_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "key_12_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "key_13_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "key_14_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "key_15_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 57
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ expandedKey_0_address0 sc_out sc_lv 6 signal 0 } 
	{ expandedKey_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ expandedKey_0_we0 sc_out sc_logic 1 signal 0 } 
	{ expandedKey_0_d0 sc_out sc_lv 8 signal 0 } 
	{ expandedKey_0_q0 sc_in sc_lv 8 signal 0 } 
	{ expandedKey_0_address1 sc_out sc_lv 6 signal 0 } 
	{ expandedKey_0_ce1 sc_out sc_logic 1 signal 0 } 
	{ expandedKey_0_we1 sc_out sc_logic 1 signal 0 } 
	{ expandedKey_0_d1 sc_out sc_lv 8 signal 0 } 
	{ expandedKey_0_q1 sc_in sc_lv 8 signal 0 } 
	{ expandedKey_1_address0 sc_out sc_lv 6 signal 1 } 
	{ expandedKey_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ expandedKey_1_we0 sc_out sc_logic 1 signal 1 } 
	{ expandedKey_1_d0 sc_out sc_lv 8 signal 1 } 
	{ expandedKey_1_q0 sc_in sc_lv 8 signal 1 } 
	{ expandedKey_1_address1 sc_out sc_lv 6 signal 1 } 
	{ expandedKey_1_ce1 sc_out sc_logic 1 signal 1 } 
	{ expandedKey_1_we1 sc_out sc_logic 1 signal 1 } 
	{ expandedKey_1_d1 sc_out sc_lv 8 signal 1 } 
	{ expandedKey_1_q1 sc_in sc_lv 8 signal 1 } 
	{ expandedKey_2_address0 sc_out sc_lv 6 signal 2 } 
	{ expandedKey_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ expandedKey_2_we0 sc_out sc_logic 1 signal 2 } 
	{ expandedKey_2_d0 sc_out sc_lv 8 signal 2 } 
	{ expandedKey_2_q0 sc_in sc_lv 8 signal 2 } 
	{ expandedKey_3_address0 sc_out sc_lv 6 signal 3 } 
	{ expandedKey_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ expandedKey_3_we0 sc_out sc_logic 1 signal 3 } 
	{ expandedKey_3_d0 sc_out sc_lv 8 signal 3 } 
	{ expandedKey_3_q0 sc_in sc_lv 8 signal 3 } 
	{ expandedKey_3_address1 sc_out sc_lv 6 signal 3 } 
	{ expandedKey_3_ce1 sc_out sc_logic 1 signal 3 } 
	{ expandedKey_3_we1 sc_out sc_logic 1 signal 3 } 
	{ expandedKey_3_d1 sc_out sc_lv 8 signal 3 } 
	{ expandedKey_3_q1 sc_in sc_lv 8 signal 3 } 
	{ key_0_read sc_in sc_lv 8 signal 4 } 
	{ key_1_read sc_in sc_lv 8 signal 5 } 
	{ key_2_read sc_in sc_lv 8 signal 6 } 
	{ key_3_read sc_in sc_lv 8 signal 7 } 
	{ key_4_read sc_in sc_lv 8 signal 8 } 
	{ key_5_read sc_in sc_lv 8 signal 9 } 
	{ key_6_read sc_in sc_lv 8 signal 10 } 
	{ key_7_read sc_in sc_lv 8 signal 11 } 
	{ key_8_read sc_in sc_lv 8 signal 12 } 
	{ key_9_read sc_in sc_lv 8 signal 13 } 
	{ key_10_read sc_in sc_lv 8 signal 14 } 
	{ key_11_read sc_in sc_lv 8 signal 15 } 
	{ key_12_read sc_in sc_lv 8 signal 16 } 
	{ key_13_read sc_in sc_lv 8 signal 17 } 
	{ key_14_read sc_in sc_lv 8 signal 18 } 
	{ key_15_read sc_in sc_lv 8 signal 19 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "expandedKey_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "expandedKey_0", "role": "address0" }} , 
 	{ "name": "expandedKey_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "expandedKey_0", "role": "ce0" }} , 
 	{ "name": "expandedKey_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "expandedKey_0", "role": "we0" }} , 
 	{ "name": "expandedKey_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "expandedKey_0", "role": "d0" }} , 
 	{ "name": "expandedKey_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "expandedKey_0", "role": "q0" }} , 
 	{ "name": "expandedKey_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "expandedKey_0", "role": "address1" }} , 
 	{ "name": "expandedKey_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "expandedKey_0", "role": "ce1" }} , 
 	{ "name": "expandedKey_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "expandedKey_0", "role": "we1" }} , 
 	{ "name": "expandedKey_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "expandedKey_0", "role": "d1" }} , 
 	{ "name": "expandedKey_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "expandedKey_0", "role": "q1" }} , 
 	{ "name": "expandedKey_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "expandedKey_1", "role": "address0" }} , 
 	{ "name": "expandedKey_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "expandedKey_1", "role": "ce0" }} , 
 	{ "name": "expandedKey_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "expandedKey_1", "role": "we0" }} , 
 	{ "name": "expandedKey_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "expandedKey_1", "role": "d0" }} , 
 	{ "name": "expandedKey_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "expandedKey_1", "role": "q0" }} , 
 	{ "name": "expandedKey_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "expandedKey_1", "role": "address1" }} , 
 	{ "name": "expandedKey_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "expandedKey_1", "role": "ce1" }} , 
 	{ "name": "expandedKey_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "expandedKey_1", "role": "we1" }} , 
 	{ "name": "expandedKey_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "expandedKey_1", "role": "d1" }} , 
 	{ "name": "expandedKey_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "expandedKey_1", "role": "q1" }} , 
 	{ "name": "expandedKey_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "expandedKey_2", "role": "address0" }} , 
 	{ "name": "expandedKey_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "expandedKey_2", "role": "ce0" }} , 
 	{ "name": "expandedKey_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "expandedKey_2", "role": "we0" }} , 
 	{ "name": "expandedKey_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "expandedKey_2", "role": "d0" }} , 
 	{ "name": "expandedKey_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "expandedKey_2", "role": "q0" }} , 
 	{ "name": "expandedKey_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "expandedKey_3", "role": "address0" }} , 
 	{ "name": "expandedKey_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "expandedKey_3", "role": "ce0" }} , 
 	{ "name": "expandedKey_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "expandedKey_3", "role": "we0" }} , 
 	{ "name": "expandedKey_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "expandedKey_3", "role": "d0" }} , 
 	{ "name": "expandedKey_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "expandedKey_3", "role": "q0" }} , 
 	{ "name": "expandedKey_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "expandedKey_3", "role": "address1" }} , 
 	{ "name": "expandedKey_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "expandedKey_3", "role": "ce1" }} , 
 	{ "name": "expandedKey_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "expandedKey_3", "role": "we1" }} , 
 	{ "name": "expandedKey_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "expandedKey_3", "role": "d1" }} , 
 	{ "name": "expandedKey_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "expandedKey_3", "role": "q1" }} , 
 	{ "name": "key_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "key_0_read", "role": "default" }} , 
 	{ "name": "key_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "key_1_read", "role": "default" }} , 
 	{ "name": "key_2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "key_2_read", "role": "default" }} , 
 	{ "name": "key_3_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "key_3_read", "role": "default" }} , 
 	{ "name": "key_4_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "key_4_read", "role": "default" }} , 
 	{ "name": "key_5_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "key_5_read", "role": "default" }} , 
 	{ "name": "key_6_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "key_6_read", "role": "default" }} , 
 	{ "name": "key_7_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "key_7_read", "role": "default" }} , 
 	{ "name": "key_8_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "key_8_read", "role": "default" }} , 
 	{ "name": "key_9_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "key_9_read", "role": "default" }} , 
 	{ "name": "key_10_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "key_10_read", "role": "default" }} , 
 	{ "name": "key_11_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "key_11_read", "role": "default" }} , 
 	{ "name": "key_12_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "key_12_read", "role": "default" }} , 
 	{ "name": "key_13_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "key_13_read", "role": "default" }} , 
 	{ "name": "key_14_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "key_14_read", "role": "default" }} , 
 	{ "name": "key_15_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "key_15_read", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "expandKey",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "180", "EstimateLatencyMax" : "180",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "expandedKey_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "expandedKey_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "expandedKey_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "expandedKey_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "key_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "key_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "key_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "key_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "key_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "key_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "key_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "key_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "key_8_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "key_9_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "key_10_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "key_11_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "key_12_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "key_13_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "key_14_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "key_15_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Rcon", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sbox_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Rcon_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.encrypt_dut_mux_1bkb_U1", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	expandKey {
		expandedKey_0 {Type IO LastRead 3 FirstWrite 1}
		expandedKey_1 {Type IO LastRead 3 FirstWrite 1}
		expandedKey_2 {Type IO LastRead 6 FirstWrite 1}
		expandedKey_3 {Type IO LastRead 3 FirstWrite 1}
		key_0_read {Type I LastRead 0 FirstWrite -1}
		key_1_read {Type I LastRead 0 FirstWrite -1}
		key_2_read {Type I LastRead 0 FirstWrite -1}
		key_3_read {Type I LastRead 0 FirstWrite -1}
		key_4_read {Type I LastRead 0 FirstWrite -1}
		key_5_read {Type I LastRead 0 FirstWrite -1}
		key_6_read {Type I LastRead 0 FirstWrite -1}
		key_7_read {Type I LastRead 0 FirstWrite -1}
		key_8_read {Type I LastRead 0 FirstWrite -1}
		key_9_read {Type I LastRead 0 FirstWrite -1}
		key_10_read {Type I LastRead 0 FirstWrite -1}
		key_11_read {Type I LastRead 0 FirstWrite -1}
		key_12_read {Type I LastRead 0 FirstWrite -1}
		key_13_read {Type I LastRead 0 FirstWrite -1}
		key_14_read {Type I LastRead 0 FirstWrite -1}
		key_15_read {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		Rcon {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "180", "Max" : "180"}
	, {"Name" : "Interval", "Min" : "180", "Max" : "180"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	expandedKey_0 { ap_memory {  { expandedKey_0_address0 mem_address 1 6 }  { expandedKey_0_ce0 mem_ce 1 1 }  { expandedKey_0_we0 mem_we 1 1 }  { expandedKey_0_d0 mem_din 1 8 }  { expandedKey_0_q0 mem_dout 0 8 }  { expandedKey_0_address1 MemPortADDR2 1 6 }  { expandedKey_0_ce1 MemPortCE2 1 1 }  { expandedKey_0_we1 MemPortWE2 1 1 }  { expandedKey_0_d1 MemPortDIN2 1 8 }  { expandedKey_0_q1 MemPortDOUT2 0 8 } } }
	expandedKey_1 { ap_memory {  { expandedKey_1_address0 mem_address 1 6 }  { expandedKey_1_ce0 mem_ce 1 1 }  { expandedKey_1_we0 mem_we 1 1 }  { expandedKey_1_d0 mem_din 1 8 }  { expandedKey_1_q0 mem_dout 0 8 }  { expandedKey_1_address1 MemPortADDR2 1 6 }  { expandedKey_1_ce1 MemPortCE2 1 1 }  { expandedKey_1_we1 MemPortWE2 1 1 }  { expandedKey_1_d1 MemPortDIN2 1 8 }  { expandedKey_1_q1 MemPortDOUT2 0 8 } } }
	expandedKey_2 { ap_memory {  { expandedKey_2_address0 mem_address 1 6 }  { expandedKey_2_ce0 mem_ce 1 1 }  { expandedKey_2_we0 mem_we 1 1 }  { expandedKey_2_d0 mem_din 1 8 }  { expandedKey_2_q0 mem_dout 0 8 } } }
	expandedKey_3 { ap_memory {  { expandedKey_3_address0 mem_address 1 6 }  { expandedKey_3_ce0 mem_ce 1 1 }  { expandedKey_3_we0 mem_we 1 1 }  { expandedKey_3_d0 mem_din 1 8 }  { expandedKey_3_q0 mem_dout 0 8 }  { expandedKey_3_address1 MemPortADDR2 1 6 }  { expandedKey_3_ce1 MemPortCE2 1 1 }  { expandedKey_3_we1 MemPortWE2 1 1 }  { expandedKey_3_d1 MemPortDIN2 1 8 }  { expandedKey_3_q1 MemPortDOUT2 0 8 } } }
	key_0_read { ap_none {  { key_0_read in_data 0 8 } } }
	key_1_read { ap_none {  { key_1_read in_data 0 8 } } }
	key_2_read { ap_none {  { key_2_read in_data 0 8 } } }
	key_3_read { ap_none {  { key_3_read in_data 0 8 } } }
	key_4_read { ap_none {  { key_4_read in_data 0 8 } } }
	key_5_read { ap_none {  { key_5_read in_data 0 8 } } }
	key_6_read { ap_none {  { key_6_read in_data 0 8 } } }
	key_7_read { ap_none {  { key_7_read in_data 0 8 } } }
	key_8_read { ap_none {  { key_8_read in_data 0 8 } } }
	key_9_read { ap_none {  { key_9_read in_data 0 8 } } }
	key_10_read { ap_none {  { key_10_read in_data 0 8 } } }
	key_11_read { ap_none {  { key_11_read in_data 0 8 } } }
	key_12_read { ap_none {  { key_12_read in_data 0 8 } } }
	key_13_read { ap_none {  { key_13_read in_data 0 8 } } }
	key_14_read { ap_none {  { key_14_read in_data 0 8 } } }
	key_15_read { ap_none {  { key_15_read in_data 0 8 } } }
}

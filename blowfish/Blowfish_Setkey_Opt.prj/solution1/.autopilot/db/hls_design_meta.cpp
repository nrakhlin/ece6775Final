#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("key_address0", 6, hls_out, 0, "ap_memory", "mem_address", 1),
	Port_Property("key_ce0", 1, hls_out, 0, "ap_memory", "mem_ce", 1),
	Port_Property("key_q0", 8, hls_in, 0, "ap_memory", "mem_dout", 1),
	Port_Property("key_size", 64, hls_in, 1, "ap_none", "in_data", 1),
	Port_Property("P_0", 32, hls_out, 2, "ap_vld", "out_data", 1),
	Port_Property("P_0_ap_vld", 1, hls_out, 2, "ap_vld", "out_vld", 1),
	Port_Property("P_1", 32, hls_out, 3, "ap_vld", "out_data", 1),
	Port_Property("P_1_ap_vld", 1, hls_out, 3, "ap_vld", "out_vld", 1),
	Port_Property("P_2", 32, hls_out, 4, "ap_vld", "out_data", 1),
	Port_Property("P_2_ap_vld", 1, hls_out, 4, "ap_vld", "out_vld", 1),
	Port_Property("P_3", 32, hls_out, 5, "ap_vld", "out_data", 1),
	Port_Property("P_3_ap_vld", 1, hls_out, 5, "ap_vld", "out_vld", 1),
	Port_Property("P_4", 32, hls_out, 6, "ap_vld", "out_data", 1),
	Port_Property("P_4_ap_vld", 1, hls_out, 6, "ap_vld", "out_vld", 1),
	Port_Property("P_5", 32, hls_out, 7, "ap_vld", "out_data", 1),
	Port_Property("P_5_ap_vld", 1, hls_out, 7, "ap_vld", "out_vld", 1),
	Port_Property("P_6", 32, hls_out, 8, "ap_vld", "out_data", 1),
	Port_Property("P_6_ap_vld", 1, hls_out, 8, "ap_vld", "out_vld", 1),
	Port_Property("P_7", 32, hls_out, 9, "ap_vld", "out_data", 1),
	Port_Property("P_7_ap_vld", 1, hls_out, 9, "ap_vld", "out_vld", 1),
	Port_Property("P_8", 32, hls_out, 10, "ap_vld", "out_data", 1),
	Port_Property("P_8_ap_vld", 1, hls_out, 10, "ap_vld", "out_vld", 1),
	Port_Property("P_9", 32, hls_out, 11, "ap_vld", "out_data", 1),
	Port_Property("P_9_ap_vld", 1, hls_out, 11, "ap_vld", "out_vld", 1),
	Port_Property("P_10", 32, hls_out, 12, "ap_vld", "out_data", 1),
	Port_Property("P_10_ap_vld", 1, hls_out, 12, "ap_vld", "out_vld", 1),
	Port_Property("P_11", 32, hls_out, 13, "ap_vld", "out_data", 1),
	Port_Property("P_11_ap_vld", 1, hls_out, 13, "ap_vld", "out_vld", 1),
	Port_Property("P_12", 32, hls_out, 14, "ap_vld", "out_data", 1),
	Port_Property("P_12_ap_vld", 1, hls_out, 14, "ap_vld", "out_vld", 1),
	Port_Property("P_13", 32, hls_out, 15, "ap_vld", "out_data", 1),
	Port_Property("P_13_ap_vld", 1, hls_out, 15, "ap_vld", "out_vld", 1),
	Port_Property("P_14", 32, hls_out, 16, "ap_vld", "out_data", 1),
	Port_Property("P_14_ap_vld", 1, hls_out, 16, "ap_vld", "out_vld", 1),
	Port_Property("P_15", 32, hls_out, 17, "ap_vld", "out_data", 1),
	Port_Property("P_15_ap_vld", 1, hls_out, 17, "ap_vld", "out_vld", 1),
	Port_Property("P_16", 32, hls_out, 18, "ap_vld", "out_data", 1),
	Port_Property("P_16_ap_vld", 1, hls_out, 18, "ap_vld", "out_vld", 1),
	Port_Property("P_17", 32, hls_out, 19, "ap_vld", "out_data", 1),
	Port_Property("P_17_ap_vld", 1, hls_out, 19, "ap_vld", "out_vld", 1),
	Port_Property("S_0_address0", 8, hls_out, 20, "ap_memory", "mem_address", 1),
	Port_Property("S_0_ce0", 1, hls_out, 20, "ap_memory", "mem_ce", 1),
	Port_Property("S_0_we0", 1, hls_out, 20, "ap_memory", "mem_we", 1),
	Port_Property("S_0_d0", 32, hls_out, 20, "ap_memory", "mem_din", 1),
	Port_Property("S_0_q0", 32, hls_in, 20, "ap_memory", "mem_dout", 1),
	Port_Property("S_0_address1", 8, hls_out, 20, "ap_memory", "MemPortADDR2", 1),
	Port_Property("S_0_ce1", 1, hls_out, 20, "ap_memory", "MemPortCE2", 1),
	Port_Property("S_0_we1", 1, hls_out, 20, "ap_memory", "MemPortWE2", 1),
	Port_Property("S_0_d1", 32, hls_out, 20, "ap_memory", "MemPortDIN2", 1),
	Port_Property("S_1_address0", 8, hls_out, 21, "ap_memory", "mem_address", 1),
	Port_Property("S_1_ce0", 1, hls_out, 21, "ap_memory", "mem_ce", 1),
	Port_Property("S_1_we0", 1, hls_out, 21, "ap_memory", "mem_we", 1),
	Port_Property("S_1_d0", 32, hls_out, 21, "ap_memory", "mem_din", 1),
	Port_Property("S_1_q0", 32, hls_in, 21, "ap_memory", "mem_dout", 1),
	Port_Property("S_1_address1", 8, hls_out, 21, "ap_memory", "MemPortADDR2", 1),
	Port_Property("S_1_ce1", 1, hls_out, 21, "ap_memory", "MemPortCE2", 1),
	Port_Property("S_1_we1", 1, hls_out, 21, "ap_memory", "MemPortWE2", 1),
	Port_Property("S_1_d1", 32, hls_out, 21, "ap_memory", "MemPortDIN2", 1),
	Port_Property("S_2_address0", 8, hls_out, 22, "ap_memory", "mem_address", 1),
	Port_Property("S_2_ce0", 1, hls_out, 22, "ap_memory", "mem_ce", 1),
	Port_Property("S_2_we0", 1, hls_out, 22, "ap_memory", "mem_we", 1),
	Port_Property("S_2_d0", 32, hls_out, 22, "ap_memory", "mem_din", 1),
	Port_Property("S_2_q0", 32, hls_in, 22, "ap_memory", "mem_dout", 1),
	Port_Property("S_2_address1", 8, hls_out, 22, "ap_memory", "MemPortADDR2", 1),
	Port_Property("S_2_ce1", 1, hls_out, 22, "ap_memory", "MemPortCE2", 1),
	Port_Property("S_2_we1", 1, hls_out, 22, "ap_memory", "MemPortWE2", 1),
	Port_Property("S_2_d1", 32, hls_out, 22, "ap_memory", "MemPortDIN2", 1),
	Port_Property("S_3_address0", 8, hls_out, 23, "ap_memory", "mem_address", 1),
	Port_Property("S_3_ce0", 1, hls_out, 23, "ap_memory", "mem_ce", 1),
	Port_Property("S_3_we0", 1, hls_out, 23, "ap_memory", "mem_we", 1),
	Port_Property("S_3_d0", 32, hls_out, 23, "ap_memory", "mem_din", 1),
	Port_Property("S_3_q0", 32, hls_in, 23, "ap_memory", "mem_dout", 1),
	Port_Property("S_3_address1", 8, hls_out, 23, "ap_memory", "MemPortADDR2", 1),
	Port_Property("S_3_ce1", 1, hls_out, 23, "ap_memory", "MemPortCE2", 1),
	Port_Property("S_3_we1", 1, hls_out, 23, "ap_memory", "MemPortWE2", 1),
	Port_Property("S_3_d1", 32, hls_out, 23, "ap_memory", "MemPortDIN2", 1),
};
const char* HLS_Design_Meta::dut_name = "Blowfish_SetKey";

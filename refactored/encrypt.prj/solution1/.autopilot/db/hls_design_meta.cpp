#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("input_0", 8, hls_in, 0, "ap_none", "in_data", 1),
	Port_Property("input_1", 8, hls_in, 1, "ap_none", "in_data", 1),
	Port_Property("input_2", 8, hls_in, 2, "ap_none", "in_data", 1),
	Port_Property("input_3", 8, hls_in, 3, "ap_none", "in_data", 1),
	Port_Property("input_4", 8, hls_in, 4, "ap_none", "in_data", 1),
	Port_Property("input_5", 8, hls_in, 5, "ap_none", "in_data", 1),
	Port_Property("input_6", 8, hls_in, 6, "ap_none", "in_data", 1),
	Port_Property("input_7", 8, hls_in, 7, "ap_none", "in_data", 1),
	Port_Property("input_8", 8, hls_in, 8, "ap_none", "in_data", 1),
	Port_Property("input_9", 8, hls_in, 9, "ap_none", "in_data", 1),
	Port_Property("input_10", 8, hls_in, 10, "ap_none", "in_data", 1),
	Port_Property("input_11", 8, hls_in, 11, "ap_none", "in_data", 1),
	Port_Property("input_12", 8, hls_in, 12, "ap_none", "in_data", 1),
	Port_Property("input_13", 8, hls_in, 13, "ap_none", "in_data", 1),
	Port_Property("input_14", 8, hls_in, 14, "ap_none", "in_data", 1),
	Port_Property("input_15", 8, hls_in, 15, "ap_none", "in_data", 1),
	Port_Property("output_r_address0", 4, hls_out, 16, "ap_memory", "mem_address", 1),
	Port_Property("output_r_ce0", 1, hls_out, 16, "ap_memory", "mem_ce", 1),
	Port_Property("output_r_we0", 1, hls_out, 16, "ap_memory", "mem_we", 1),
	Port_Property("output_r_d0", 8, hls_out, 16, "ap_memory", "mem_din", 1),
	Port_Property("key_address0", 4, hls_out, 17, "ap_memory", "mem_address", 1),
	Port_Property("key_ce0", 1, hls_out, 17, "ap_memory", "mem_ce", 1),
	Port_Property("key_q0", 8, hls_in, 17, "ap_memory", "mem_dout", 1),
};
const char* HLS_Design_Meta::dut_name = "encrypt_dut";

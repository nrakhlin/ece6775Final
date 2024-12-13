// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================

#define AP_INT_MAX_W 32678

#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;


// [dump_struct_tree [build_nameSpaceTree] dumpedStructList] ---------->


// [dump_enumeration [get_enumeration_list]] ---------->


// wrapc file define: "strm_in_V_V"
#define AUTOTB_TVIN_strm_in_V_V  "../tv/cdatafile/c.dut.autotvin_strm_in_V_V.dat"
#define WRAPC_STREAM_SIZE_IN_strm_in_V_V  "../tv/stream_size/stream_size_in_strm_in_V_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_strm_in_V_V  "../tv/stream_size/stream_ingress_status_strm_in_V_V.dat"
// wrapc file define: "strm_out_V_V"
#define AUTOTB_TVOUT_strm_out_V_V  "../tv/cdatafile/c.dut.autotvout_strm_out_V_V.dat"
#define AUTOTB_TVIN_strm_out_V_V  "../tv/cdatafile/c.dut.autotvin_strm_out_V_V.dat"
#define WRAPC_STREAM_SIZE_OUT_strm_out_V_V  "../tv/stream_size/stream_size_out_strm_out_V_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_strm_out_V_V  "../tv/stream_size/stream_egress_status_strm_out_V_V.dat"

#define INTER_TCL  "../tv/cdatafile/ref.tcl"

// tvout file define: "strm_out_V_V"
#define AUTOTB_TVOUT_PC_strm_out_V_V  "../tv/rtldatafile/rtl.dut.autotvout_strm_out_V_V.dat"

class INTER_TCL_FILE {
	public:
		INTER_TCL_FILE(const char* name) {
			mName = name;
			strm_in_V_V_depth = 0;
			strm_out_V_V_depth = 0;
			trans_num =0;
		}

		~INTER_TCL_FILE() {
			mFile.open(mName);
			if (!mFile.good()) {
				cout << "Failed to open file ref.tcl" << endl;
				exit (1);
			}
			string total_list = get_depth_list();
			mFile << "set depth_list {\n";
			mFile << total_list;
			mFile << "}\n";
			mFile << "set trans_num "<<trans_num<<endl;
			mFile.close();
		}

		string get_depth_list () {
			stringstream total_list;
			total_list << "{strm_in_V_V " << strm_in_V_V_depth << "}\n";
			total_list << "{strm_out_V_V " << strm_out_V_V_depth << "}\n";
			return total_list.str();
		}

		void set_num (int num , int* class_num) {
			(*class_num) = (*class_num) > num ? (*class_num) : num;
		}
	public:
		int strm_in_V_V_depth;
		int strm_out_V_V_depth;
		int trans_num;

	private:
		ofstream mFile;
		const char* mName;
};

extern void dut (
hls::stream<ap_uint<32> > (&strm_in),
hls::stream<ap_uint<32> > (&strm_out));

void AESL_WRAP_dut (
hls::stream<ap_uint<32> > (&strm_in),
hls::stream<ap_uint<32> > (&strm_out))
{
	refine_signal_handler();
	fstream wrapc_switch_file_token;
	wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
	int AESL_i;
	if (wrapc_switch_file_token.good())
	{
		CodeState = ENTER_WRAPC_PC;
		static unsigned AESL_transaction_pc = 0;
		string AESL_token;
		string AESL_num;
		static AESL_FILE_HANDLER aesl_fh;

		// pop stream input: "strm_in"
		aesl_fh.read(WRAPC_STREAM_SIZE_IN_strm_in_V_V, AESL_token); // [[transaction]]
		aesl_fh.read(WRAPC_STREAM_SIZE_IN_strm_in_V_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(WRAPC_STREAM_SIZE_IN_strm_in_V_V, AESL_token); // pop_size
			int aesl_tmp_7 = atoi(AESL_token.c_str());
			for (int i = 0; i < aesl_tmp_7; i++)
			{
				strm_in.read();
			}
			aesl_fh.read(WRAPC_STREAM_SIZE_IN_strm_in_V_V, AESL_token); // [[/transaction]]
		}

		// define output stream variables: "strm_out"
		std::vector<ap_uint<32> > aesl_tmp_9;
		int aesl_tmp_10;
		int aesl_tmp_11 = 0;

		// read output stream size: "strm_out"
		aesl_fh.read(WRAPC_STREAM_SIZE_OUT_strm_out_V_V, AESL_token); // [[transaction]]
		aesl_fh.read(WRAPC_STREAM_SIZE_OUT_strm_out_V_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(WRAPC_STREAM_SIZE_OUT_strm_out_V_V, AESL_token); // pop_size
			aesl_tmp_10 = atoi(AESL_token.c_str());
			aesl_fh.read(WRAPC_STREAM_SIZE_OUT_strm_out_V_V, AESL_token); // [[/transaction]]
		}

		// output port post check: "strm_out_V_V"
		aesl_fh.read(AUTOTB_TVOUT_PC_strm_out_V_V, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_strm_out_V_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_strm_out_V_V, AESL_token); // data

			std::vector<sc_bv<32> > strm_out_V_V_pc_buffer;
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'strm_out_V_V', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'strm_out_V_V', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					strm_out_V_V_pc_buffer.push_back(AESL_token.c_str());
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_strm_out_V_V, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_strm_out_V_V))
				{
					exit(1);
				}
			}

			// correct the buffer size the current transaction
			if (i != aesl_tmp_10)
			{
				aesl_tmp_10 = i;
			}

			if (aesl_tmp_10 > 0 && aesl_tmp_9.size() < aesl_tmp_10)
			{
				int aesl_tmp_9_size = aesl_tmp_9.size();

				for (int tmp_aesl_tmp_9 = 0; tmp_aesl_tmp_9 < aesl_tmp_10 - aesl_tmp_9_size; tmp_aesl_tmp_9++)
				{
					ap_uint<32> tmp;
					aesl_tmp_9.push_back(tmp);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: strm_out_V_V
				{
					// bitslice(31, 0)
					// {
						// celement: strm_out.V.V(31, 0)
						// {
							sc_lv<32>* strm_out_V_V_lv0_0_0_1 = new sc_lv<32>[aesl_tmp_10 - aesl_tmp_11];
						// }
					// }

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: strm_out.V.V(31, 0)
						{
							// carray: (aesl_tmp_11) => (aesl_tmp_10 - 1) @ (1)
							for (int i_0 = aesl_tmp_11; i_0 <= aesl_tmp_10 - 1; i_0 += 1)
							{
								if (&(aesl_tmp_9[0]) != NULL) // check the null address if the c port is array or others
								{
									strm_out_V_V_lv0_0_0_1[hls_map_index].range(31, 0) = sc_bv<32>(strm_out_V_V_pc_buffer[hls_map_index].range(31, 0));
									hls_map_index++;
								}
							}
						}
					}

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: strm_out.V.V(31, 0)
						{
							// carray: (aesl_tmp_11) => (aesl_tmp_10 - 1) @ (1)
							for (int i_0 = aesl_tmp_11; i_0 <= aesl_tmp_10 - 1; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : aesl_tmp_9[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : aesl_tmp_9[0]
								// output_left_conversion : aesl_tmp_9[i_0]
								// output_type_conversion : (strm_out_V_V_lv0_0_0_1[hls_map_index]).to_string(SC_BIN).c_str()
								if (&(aesl_tmp_9[0]) != NULL) // check the null address if the c port is array or others
								{
									aesl_tmp_9[i_0] = (strm_out_V_V_lv0_0_0_1[hls_map_index]).to_string(SC_BIN).c_str();
									hls_map_index++;
								}
							}
						}
					}
				}
			}
		}

		// push back output stream: "strm_out"
		for (int i = 0; i < aesl_tmp_10; i++)
		{
			strm_out.write(aesl_tmp_9[i]);
		}

		AESL_transaction_pc++;
	}
	else
	{
		CodeState = ENTER_WRAPC;
		static unsigned AESL_transaction;

		static AESL_FILE_HANDLER aesl_fh;

		// "strm_in_V_V"
		char* tvin_strm_in_V_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_strm_in_V_V);
		char* wrapc_stream_size_in_strm_in_V_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_SIZE_IN_strm_in_V_V);
		char* wrapc_stream_ingress_status_strm_in_V_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_strm_in_V_V);

		// "strm_out_V_V"
		char* tvin_strm_out_V_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_strm_out_V_V);
		char* tvout_strm_out_V_V = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_strm_out_V_V);
		char* wrapc_stream_size_out_strm_out_V_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_strm_out_V_V);
		char* wrapc_stream_egress_status_strm_out_V_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_strm_out_V_V);

		CodeState = DUMP_INPUTS;
		static INTER_TCL_FILE tcl_file(INTER_TCL);
		int leading_zero;

		// dump stream tvin: "strm_in"
		std::vector<ap_uint<32> > aesl_tmp_6;
		int aesl_tmp_7 = 0;
		while (!strm_in.empty())
		{
			aesl_tmp_6.push_back(strm_in.read());
			aesl_tmp_7++;
		}

		// dump stream tvin: "strm_out"
		std::vector<ap_uint<32> > aesl_tmp_9;
		int aesl_tmp_10 = 0;
		while (!strm_out.empty())
		{
			aesl_tmp_9.push_back(strm_out.read());
			aesl_tmp_10++;
		}

		// push back input stream: "strm_in"
		for (int i = 0; i < aesl_tmp_7; i++)
		{
			strm_in.write(aesl_tmp_6[i]);
		}

		// push back input stream: "strm_out"
		for (int i = 0; i < aesl_tmp_10; i++)
		{
			strm_out.write(aesl_tmp_9[i]);
		}

// [call_c_dut] ---------->

		CodeState = CALL_C_DUT;
		dut(strm_in, strm_out);

		CodeState = DUMP_OUTPUTS;
		// record input size to tv3: "strm_in"
		int aesl_tmp_8 = strm_in.size();

		// pop output stream: "strm_out"
		int aesl_tmp_11 = aesl_tmp_10;
		aesl_tmp_10 = 0;
     aesl_tmp_9.clear();
		while (!strm_out.empty())
		{
			aesl_tmp_9.push_back(strm_out.read());
			aesl_tmp_10++;
		}

		// [[transaction]]
		sprintf(tvin_strm_in_V_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_strm_in_V_V, tvin_strm_in_V_V);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_strm_in_V_V, tvin_strm_in_V_V);

		sc_bv<32>* strm_in_V_V_tvin_wrapc_buffer = new sc_bv<32>[aesl_tmp_7 - aesl_tmp_8];

		// RTL Name: strm_in_V_V
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: strm_in.V.V(31, 0)
				{
					// carray: (0) => (aesl_tmp_7 - aesl_tmp_8 - 1) @ (1)
					for (int i_0 = 0; i_0 <= aesl_tmp_7 - aesl_tmp_8 - 1; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : aesl_tmp_6[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : aesl_tmp_6[0]
						// regulate_c_name       : strm_in_V_V
						// input_type_conversion : (aesl_tmp_6[i_0]).to_string(2).c_str()
						if (&(aesl_tmp_6[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> strm_in_V_V_tmp_mem;
							strm_in_V_V_tmp_mem = (aesl_tmp_6[i_0]).to_string(2).c_str();
							strm_in_V_V_tvin_wrapc_buffer[hls_map_index].range(31, 0) = strm_in_V_V_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < aesl_tmp_7 - aesl_tmp_8; i++)
		{
			sprintf(tvin_strm_in_V_V, "%s\n", (strm_in_V_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_strm_in_V_V, tvin_strm_in_V_V);
		}

		// dump stream ingress status to file
     if (aesl_tmp_7 > aesl_tmp_8)
     {
		sc_int<32> stream_ingress_size_strm_in_V_V = aesl_tmp_7;
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_strm_in_V_V, stream_ingress_size_strm_in_V_V.to_string().c_str());
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_strm_in_V_V, "\n");

		for (int i = 0; i < aesl_tmp_7 - aesl_tmp_8; i++)
		{
			stream_ingress_size_strm_in_V_V--;
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_strm_in_V_V, stream_ingress_size_strm_in_V_V.to_string().c_str());
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_strm_in_V_V, "\n");
		}
     }
     else {
		    sc_int<32> stream_ingress_size_strm_in_V_V = 0;
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_strm_in_V_V, stream_ingress_size_strm_in_V_V.to_string().c_str());
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_strm_in_V_V, "\n");
     }

		tcl_file.set_num(aesl_tmp_7 - aesl_tmp_8, &tcl_file.strm_in_V_V_depth);
		sprintf(tvin_strm_in_V_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_strm_in_V_V, tvin_strm_in_V_V);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_strm_in_V_V, tvin_strm_in_V_V);

		// release memory allocation
		delete [] strm_in_V_V_tvin_wrapc_buffer;

		// dump stream size
		sprintf(wrapc_stream_size_in_strm_in_V_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_strm_in_V_V, wrapc_stream_size_in_strm_in_V_V);
		sprintf(wrapc_stream_size_in_strm_in_V_V, "%d\n", aesl_tmp_7 - aesl_tmp_8);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_strm_in_V_V, wrapc_stream_size_in_strm_in_V_V);
		sprintf(wrapc_stream_size_in_strm_in_V_V, "[[/transaction]] \n");
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_strm_in_V_V, wrapc_stream_size_in_strm_in_V_V);

		// [[transaction]]
		sprintf(tvout_strm_out_V_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_strm_out_V_V, tvout_strm_out_V_V);

		sc_bv<32>* strm_out_V_V_tvout_wrapc_buffer = new sc_bv<32>[aesl_tmp_10 - aesl_tmp_11];

		// RTL Name: strm_out_V_V
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: strm_out.V.V(31, 0)
				{
					// carray: (aesl_tmp_11) => (aesl_tmp_10 - 1) @ (1)
					for (int i_0 = aesl_tmp_11; i_0 <= aesl_tmp_10 - 1; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : aesl_tmp_9[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : aesl_tmp_9[0]
						// regulate_c_name       : strm_out_V_V
						// input_type_conversion : (aesl_tmp_9[i_0]).to_string(2).c_str()
						if (&(aesl_tmp_9[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> strm_out_V_V_tmp_mem;
							strm_out_V_V_tmp_mem = (aesl_tmp_9[i_0]).to_string(2).c_str();
							strm_out_V_V_tvout_wrapc_buffer[hls_map_index].range(31, 0) = strm_out_V_V_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < aesl_tmp_10 - aesl_tmp_11; i++)
		{
			sprintf(tvout_strm_out_V_V, "%s\n", (strm_out_V_V_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_strm_out_V_V, tvout_strm_out_V_V);
		}

		tcl_file.set_num(aesl_tmp_10 - aesl_tmp_11, &tcl_file.strm_out_V_V_depth);
		sprintf(tvout_strm_out_V_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_strm_out_V_V, tvout_strm_out_V_V);

		// release memory allocation
		delete [] strm_out_V_V_tvout_wrapc_buffer;

		// dump stream size
		sprintf(wrapc_stream_size_out_strm_out_V_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_strm_out_V_V, wrapc_stream_size_out_strm_out_V_V);
		sprintf(wrapc_stream_size_out_strm_out_V_V, "%d\n", aesl_tmp_10 - aesl_tmp_11);
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_strm_out_V_V, wrapc_stream_size_out_strm_out_V_V);
		sprintf(wrapc_stream_size_out_strm_out_V_V, "[[/transaction]] \n");
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_strm_out_V_V, wrapc_stream_size_out_strm_out_V_V);

		// push back output stream: "strm_out"
		for (int i = 0; i < aesl_tmp_10; i++)
		{
			strm_out.write(aesl_tmp_9[i]);
		}

		CodeState = DELETE_CHAR_BUFFERS;
		// release memory allocation: "strm_in_V_V"
		delete [] tvin_strm_in_V_V;
		delete [] wrapc_stream_size_in_strm_in_V_V;
		// release memory allocation: "strm_out_V_V"
		delete [] tvout_strm_out_V_V;
		delete [] tvin_strm_out_V_V;
		delete [] wrapc_stream_size_out_strm_out_V_V;

		AESL_transaction++;

		tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
	}
}


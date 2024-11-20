// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================

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


// wrapc file define: "input_r"
#define AUTOTB_TVIN_input_r  "../tv/cdatafile/c.decrypt_dut.autotvin_input_r.dat"
// wrapc file define: "output_r"
#define AUTOTB_TVOUT_output_r  "../tv/cdatafile/c.decrypt_dut.autotvout_output_r.dat"
#define AUTOTB_TVIN_output_r  "../tv/cdatafile/c.decrypt_dut.autotvin_output_r.dat"
// wrapc file define: "key"
#define AUTOTB_TVIN_key  "../tv/cdatafile/c.decrypt_dut.autotvin_key.dat"

#define INTER_TCL  "../tv/cdatafile/ref.tcl"

// tvout file define: "output_r"
#define AUTOTB_TVOUT_PC_output_r  "../tv/rtldatafile/rtl.decrypt_dut.autotvout_output_r.dat"

class INTER_TCL_FILE {
	public:
		INTER_TCL_FILE(const char* name) {
			mName = name;
			input_r_depth = 0;
			output_r_depth = 0;
			key_depth = 0;
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
			total_list << "{input_r " << input_r_depth << "}\n";
			total_list << "{output_r " << output_r_depth << "}\n";
			total_list << "{key " << key_depth << "}\n";
			return total_list.str();
		}

		void set_num (int num , int* class_num) {
			(*class_num) = (*class_num) > num ? (*class_num) : num;
		}
	public:
		int input_r_depth;
		int output_r_depth;
		int key_depth;
		int trans_num;

	private:
		ofstream mFile;
		const char* mName;
};

extern void decrypt_dut (
unsigned char input[16],
unsigned char output[16],
unsigned char key[16]);

void AESL_WRAP_decrypt_dut (
unsigned char input[16],
unsigned char output[16],
unsigned char key[16])
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


		// output port post check: "output_r"
		aesl_fh.read(AUTOTB_TVOUT_PC_output_r, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_output_r, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_output_r, AESL_token); // data

			sc_bv<8> *output_r_pc_buffer = new sc_bv<8>[16];
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'output_r', possible cause: There are uninitialized variables in the C design." << endl;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'output_r', possible cause: There are uninitialized variables in the C design." << endl;
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
					output_r_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_output_r, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_output_r))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: output_r
				{
					// bitslice(7, 0)
					// {
						// celement: output(7, 0)
						// {
							sc_lv<8>* output_lv0_0_15_1 = new sc_lv<8>[16];
						// }
					// }

					// bitslice(7, 0)
					{
						int hls_map_index = 0;
						// celement: output(7, 0)
						{
							// carray: (0) => (15) @ (1)
							for (int i_0 = 0; i_0 <= 15; i_0 += 1)
							{
								if (&(output[0]) != NULL) // check the null address if the c port is array or others
								{
									output_lv0_0_15_1[hls_map_index].range(7, 0) = sc_bv<8>(output_r_pc_buffer[hls_map_index].range(7, 0));
									hls_map_index++;
								}
							}
						}
					}

					// bitslice(7, 0)
					{
						int hls_map_index = 0;
						// celement: output(7, 0)
						{
							// carray: (0) => (15) @ (1)
							for (int i_0 = 0; i_0 <= 15; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : output[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : output[0]
								// output_left_conversion : output[i_0]
								// output_type_conversion : (output_lv0_0_15_1[hls_map_index]).to_uint64()
								if (&(output[0]) != NULL) // check the null address if the c port is array or others
								{
									output[i_0] = (output_lv0_0_15_1[hls_map_index]).to_uint64();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] output_r_pc_buffer;
		}

		AESL_transaction_pc++;
	}
	else
	{
		CodeState = ENTER_WRAPC;
		static unsigned AESL_transaction;

		static AESL_FILE_HANDLER aesl_fh;

		// "input_r"
		char* tvin_input_r = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_input_r);

		// "output_r"
		char* tvin_output_r = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_output_r);
		char* tvout_output_r = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_output_r);

		// "key"
		char* tvin_key = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_key);

		CodeState = DUMP_INPUTS;
		static INTER_TCL_FILE tcl_file(INTER_TCL);
		int leading_zero;

		// [[transaction]]
		sprintf(tvin_input_r, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_input_r, tvin_input_r);

		sc_bv<8>* input_r_tvin_wrapc_buffer = new sc_bv<8>[16];

		// RTL Name: input_r
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: input(7, 0)
				{
					// carray: (0) => (15) @ (1)
					for (int i_0 = 0; i_0 <= 15; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : input[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : input[0]
						// regulate_c_name       : input
						// input_type_conversion : input[i_0]
						if (&(input[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<8> input_tmp_mem;
							input_tmp_mem = input[i_0];
							input_r_tvin_wrapc_buffer[hls_map_index].range(7, 0) = input_tmp_mem.range(7, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 16; i++)
		{
			sprintf(tvin_input_r, "%s\n", (input_r_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_input_r, tvin_input_r);
		}

		tcl_file.set_num(16, &tcl_file.input_r_depth);
		sprintf(tvin_input_r, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_input_r, tvin_input_r);

		// release memory allocation
		delete [] input_r_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_output_r, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_output_r, tvin_output_r);

		sc_bv<8>* output_r_tvin_wrapc_buffer = new sc_bv<8>[16];

		// RTL Name: output_r
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: output(7, 0)
				{
					// carray: (0) => (15) @ (1)
					for (int i_0 = 0; i_0 <= 15; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : output[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : output[0]
						// regulate_c_name       : output
						// input_type_conversion : output[i_0]
						if (&(output[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<8> output_tmp_mem;
							output_tmp_mem = output[i_0];
							output_r_tvin_wrapc_buffer[hls_map_index].range(7, 0) = output_tmp_mem.range(7, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 16; i++)
		{
			sprintf(tvin_output_r, "%s\n", (output_r_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_output_r, tvin_output_r);
		}

		tcl_file.set_num(16, &tcl_file.output_r_depth);
		sprintf(tvin_output_r, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_output_r, tvin_output_r);

		// release memory allocation
		delete [] output_r_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_key, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_key, tvin_key);

		sc_bv<8>* key_tvin_wrapc_buffer = new sc_bv<8>[16];

		// RTL Name: key
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: key(7, 0)
				{
					// carray: (0) => (15) @ (1)
					for (int i_0 = 0; i_0 <= 15; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : key[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : key[0]
						// regulate_c_name       : key
						// input_type_conversion : key[i_0]
						if (&(key[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<8> key_tmp_mem;
							key_tmp_mem = key[i_0];
							key_tvin_wrapc_buffer[hls_map_index].range(7, 0) = key_tmp_mem.range(7, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 16; i++)
		{
			sprintf(tvin_key, "%s\n", (key_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_key, tvin_key);
		}

		tcl_file.set_num(16, &tcl_file.key_depth);
		sprintf(tvin_key, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_key, tvin_key);

		// release memory allocation
		delete [] key_tvin_wrapc_buffer;

// [call_c_dut] ---------->

		CodeState = CALL_C_DUT;
		decrypt_dut(input, output, key);

		CodeState = DUMP_OUTPUTS;

		// [[transaction]]
		sprintf(tvout_output_r, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_output_r, tvout_output_r);

		sc_bv<8>* output_r_tvout_wrapc_buffer = new sc_bv<8>[16];

		// RTL Name: output_r
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: output(7, 0)
				{
					// carray: (0) => (15) @ (1)
					for (int i_0 = 0; i_0 <= 15; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : output[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : output[0]
						// regulate_c_name       : output
						// input_type_conversion : output[i_0]
						if (&(output[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<8> output_tmp_mem;
							output_tmp_mem = output[i_0];
							output_r_tvout_wrapc_buffer[hls_map_index].range(7, 0) = output_tmp_mem.range(7, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 16; i++)
		{
			sprintf(tvout_output_r, "%s\n", (output_r_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_output_r, tvout_output_r);
		}

		tcl_file.set_num(16, &tcl_file.output_r_depth);
		sprintf(tvout_output_r, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_output_r, tvout_output_r);

		// release memory allocation
		delete [] output_r_tvout_wrapc_buffer;

		CodeState = DELETE_CHAR_BUFFERS;
		// release memory allocation: "input_r"
		delete [] tvin_input_r;
		// release memory allocation: "output_r"
		delete [] tvout_output_r;
		delete [] tvin_output_r;
		// release memory allocation: "key"
		delete [] tvin_key;

		AESL_transaction++;

		tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
	}
}


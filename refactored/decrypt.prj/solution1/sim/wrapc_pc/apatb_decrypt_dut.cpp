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


// wrapc file define: "input_0"
#define AUTOTB_TVIN_input_0  "../tv/cdatafile/c.decrypt_dut.autotvin_input_0.dat"
// wrapc file define: "input_1"
#define AUTOTB_TVIN_input_1  "../tv/cdatafile/c.decrypt_dut.autotvin_input_1.dat"
// wrapc file define: "input_2"
#define AUTOTB_TVIN_input_2  "../tv/cdatafile/c.decrypt_dut.autotvin_input_2.dat"
// wrapc file define: "input_3"
#define AUTOTB_TVIN_input_3  "../tv/cdatafile/c.decrypt_dut.autotvin_input_3.dat"
// wrapc file define: "input_4"
#define AUTOTB_TVIN_input_4  "../tv/cdatafile/c.decrypt_dut.autotvin_input_4.dat"
// wrapc file define: "input_5"
#define AUTOTB_TVIN_input_5  "../tv/cdatafile/c.decrypt_dut.autotvin_input_5.dat"
// wrapc file define: "input_6"
#define AUTOTB_TVIN_input_6  "../tv/cdatafile/c.decrypt_dut.autotvin_input_6.dat"
// wrapc file define: "input_7"
#define AUTOTB_TVIN_input_7  "../tv/cdatafile/c.decrypt_dut.autotvin_input_7.dat"
// wrapc file define: "input_8"
#define AUTOTB_TVIN_input_8  "../tv/cdatafile/c.decrypt_dut.autotvin_input_8.dat"
// wrapc file define: "input_9"
#define AUTOTB_TVIN_input_9  "../tv/cdatafile/c.decrypt_dut.autotvin_input_9.dat"
// wrapc file define: "input_10"
#define AUTOTB_TVIN_input_10  "../tv/cdatafile/c.decrypt_dut.autotvin_input_10.dat"
// wrapc file define: "input_11"
#define AUTOTB_TVIN_input_11  "../tv/cdatafile/c.decrypt_dut.autotvin_input_11.dat"
// wrapc file define: "input_12"
#define AUTOTB_TVIN_input_12  "../tv/cdatafile/c.decrypt_dut.autotvin_input_12.dat"
// wrapc file define: "input_13"
#define AUTOTB_TVIN_input_13  "../tv/cdatafile/c.decrypt_dut.autotvin_input_13.dat"
// wrapc file define: "input_14"
#define AUTOTB_TVIN_input_14  "../tv/cdatafile/c.decrypt_dut.autotvin_input_14.dat"
// wrapc file define: "input_15"
#define AUTOTB_TVIN_input_15  "../tv/cdatafile/c.decrypt_dut.autotvin_input_15.dat"
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
			input_0_depth = 0;
			input_1_depth = 0;
			input_2_depth = 0;
			input_3_depth = 0;
			input_4_depth = 0;
			input_5_depth = 0;
			input_6_depth = 0;
			input_7_depth = 0;
			input_8_depth = 0;
			input_9_depth = 0;
			input_10_depth = 0;
			input_11_depth = 0;
			input_12_depth = 0;
			input_13_depth = 0;
			input_14_depth = 0;
			input_15_depth = 0;
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
			total_list << "{input_0 " << input_0_depth << "}\n";
			total_list << "{input_1 " << input_1_depth << "}\n";
			total_list << "{input_2 " << input_2_depth << "}\n";
			total_list << "{input_3 " << input_3_depth << "}\n";
			total_list << "{input_4 " << input_4_depth << "}\n";
			total_list << "{input_5 " << input_5_depth << "}\n";
			total_list << "{input_6 " << input_6_depth << "}\n";
			total_list << "{input_7 " << input_7_depth << "}\n";
			total_list << "{input_8 " << input_8_depth << "}\n";
			total_list << "{input_9 " << input_9_depth << "}\n";
			total_list << "{input_10 " << input_10_depth << "}\n";
			total_list << "{input_11 " << input_11_depth << "}\n";
			total_list << "{input_12 " << input_12_depth << "}\n";
			total_list << "{input_13 " << input_13_depth << "}\n";
			total_list << "{input_14 " << input_14_depth << "}\n";
			total_list << "{input_15 " << input_15_depth << "}\n";
			total_list << "{output_r " << output_r_depth << "}\n";
			total_list << "{key " << key_depth << "}\n";
			return total_list.str();
		}

		void set_num (int num , int* class_num) {
			(*class_num) = (*class_num) > num ? (*class_num) : num;
		}
	public:
		int input_0_depth;
		int input_1_depth;
		int input_2_depth;
		int input_3_depth;
		int input_4_depth;
		int input_5_depth;
		int input_6_depth;
		int input_7_depth;
		int input_8_depth;
		int input_9_depth;
		int input_10_depth;
		int input_11_depth;
		int input_12_depth;
		int input_13_depth;
		int input_14_depth;
		int input_15_depth;
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

		// "input_0"
		char* tvin_input_0 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_input_0);

		// "input_1"
		char* tvin_input_1 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_input_1);

		// "input_2"
		char* tvin_input_2 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_input_2);

		// "input_3"
		char* tvin_input_3 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_input_3);

		// "input_4"
		char* tvin_input_4 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_input_4);

		// "input_5"
		char* tvin_input_5 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_input_5);

		// "input_6"
		char* tvin_input_6 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_input_6);

		// "input_7"
		char* tvin_input_7 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_input_7);

		// "input_8"
		char* tvin_input_8 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_input_8);

		// "input_9"
		char* tvin_input_9 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_input_9);

		// "input_10"
		char* tvin_input_10 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_input_10);

		// "input_11"
		char* tvin_input_11 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_input_11);

		// "input_12"
		char* tvin_input_12 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_input_12);

		// "input_13"
		char* tvin_input_13 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_input_13);

		// "input_14"
		char* tvin_input_14 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_input_14);

		// "input_15"
		char* tvin_input_15 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_input_15);

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
		sprintf(tvin_input_0, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_input_0, tvin_input_0);

		sc_bv<8>* input_0_tvin_wrapc_buffer = new sc_bv<8>[1];

		// RTL Name: input_0
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: input(7, 0)
				{
					// carray: (0) => (0) @ (2)
					for (int i_0 = 0; i_0 <= 0; i_0 += 2)
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
							input_0_tvin_wrapc_buffer[hls_map_index].range(7, 0) = input_tmp_mem.range(7, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_input_0, "%s\n", (input_0_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_input_0, tvin_input_0);
		}

		tcl_file.set_num(1, &tcl_file.input_0_depth);
		sprintf(tvin_input_0, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_input_0, tvin_input_0);

		// release memory allocation
		delete [] input_0_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_input_1, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_input_1, tvin_input_1);

		sc_bv<8>* input_1_tvin_wrapc_buffer = new sc_bv<8>[1];

		// RTL Name: input_1
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: input(7, 0)
				{
					// carray: (1) => (1) @ (2)
					for (int i_0 = 1; i_0 <= 1; i_0 += 2)
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
							input_1_tvin_wrapc_buffer[hls_map_index].range(7, 0) = input_tmp_mem.range(7, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_input_1, "%s\n", (input_1_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_input_1, tvin_input_1);
		}

		tcl_file.set_num(1, &tcl_file.input_1_depth);
		sprintf(tvin_input_1, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_input_1, tvin_input_1);

		// release memory allocation
		delete [] input_1_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_input_2, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_input_2, tvin_input_2);

		sc_bv<8>* input_2_tvin_wrapc_buffer = new sc_bv<8>[1];

		// RTL Name: input_2
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: input(7, 0)
				{
					// carray: (2) => (2) @ (2)
					for (int i_0 = 2; i_0 <= 2; i_0 += 2)
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
							input_2_tvin_wrapc_buffer[hls_map_index].range(7, 0) = input_tmp_mem.range(7, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_input_2, "%s\n", (input_2_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_input_2, tvin_input_2);
		}

		tcl_file.set_num(1, &tcl_file.input_2_depth);
		sprintf(tvin_input_2, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_input_2, tvin_input_2);

		// release memory allocation
		delete [] input_2_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_input_3, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_input_3, tvin_input_3);

		sc_bv<8>* input_3_tvin_wrapc_buffer = new sc_bv<8>[1];

		// RTL Name: input_3
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: input(7, 0)
				{
					// carray: (3) => (3) @ (2)
					for (int i_0 = 3; i_0 <= 3; i_0 += 2)
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
							input_3_tvin_wrapc_buffer[hls_map_index].range(7, 0) = input_tmp_mem.range(7, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_input_3, "%s\n", (input_3_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_input_3, tvin_input_3);
		}

		tcl_file.set_num(1, &tcl_file.input_3_depth);
		sprintf(tvin_input_3, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_input_3, tvin_input_3);

		// release memory allocation
		delete [] input_3_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_input_4, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_input_4, tvin_input_4);

		sc_bv<8>* input_4_tvin_wrapc_buffer = new sc_bv<8>[1];

		// RTL Name: input_4
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: input(7, 0)
				{
					// carray: (4) => (4) @ (2)
					for (int i_0 = 4; i_0 <= 4; i_0 += 2)
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
							input_4_tvin_wrapc_buffer[hls_map_index].range(7, 0) = input_tmp_mem.range(7, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_input_4, "%s\n", (input_4_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_input_4, tvin_input_4);
		}

		tcl_file.set_num(1, &tcl_file.input_4_depth);
		sprintf(tvin_input_4, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_input_4, tvin_input_4);

		// release memory allocation
		delete [] input_4_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_input_5, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_input_5, tvin_input_5);

		sc_bv<8>* input_5_tvin_wrapc_buffer = new sc_bv<8>[1];

		// RTL Name: input_5
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: input(7, 0)
				{
					// carray: (5) => (5) @ (2)
					for (int i_0 = 5; i_0 <= 5; i_0 += 2)
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
							input_5_tvin_wrapc_buffer[hls_map_index].range(7, 0) = input_tmp_mem.range(7, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_input_5, "%s\n", (input_5_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_input_5, tvin_input_5);
		}

		tcl_file.set_num(1, &tcl_file.input_5_depth);
		sprintf(tvin_input_5, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_input_5, tvin_input_5);

		// release memory allocation
		delete [] input_5_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_input_6, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_input_6, tvin_input_6);

		sc_bv<8>* input_6_tvin_wrapc_buffer = new sc_bv<8>[1];

		// RTL Name: input_6
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: input(7, 0)
				{
					// carray: (6) => (6) @ (2)
					for (int i_0 = 6; i_0 <= 6; i_0 += 2)
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
							input_6_tvin_wrapc_buffer[hls_map_index].range(7, 0) = input_tmp_mem.range(7, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_input_6, "%s\n", (input_6_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_input_6, tvin_input_6);
		}

		tcl_file.set_num(1, &tcl_file.input_6_depth);
		sprintf(tvin_input_6, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_input_6, tvin_input_6);

		// release memory allocation
		delete [] input_6_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_input_7, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_input_7, tvin_input_7);

		sc_bv<8>* input_7_tvin_wrapc_buffer = new sc_bv<8>[1];

		// RTL Name: input_7
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: input(7, 0)
				{
					// carray: (7) => (7) @ (2)
					for (int i_0 = 7; i_0 <= 7; i_0 += 2)
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
							input_7_tvin_wrapc_buffer[hls_map_index].range(7, 0) = input_tmp_mem.range(7, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_input_7, "%s\n", (input_7_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_input_7, tvin_input_7);
		}

		tcl_file.set_num(1, &tcl_file.input_7_depth);
		sprintf(tvin_input_7, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_input_7, tvin_input_7);

		// release memory allocation
		delete [] input_7_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_input_8, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_input_8, tvin_input_8);

		sc_bv<8>* input_8_tvin_wrapc_buffer = new sc_bv<8>[1];

		// RTL Name: input_8
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: input(7, 0)
				{
					// carray: (8) => (8) @ (2)
					for (int i_0 = 8; i_0 <= 8; i_0 += 2)
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
							input_8_tvin_wrapc_buffer[hls_map_index].range(7, 0) = input_tmp_mem.range(7, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_input_8, "%s\n", (input_8_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_input_8, tvin_input_8);
		}

		tcl_file.set_num(1, &tcl_file.input_8_depth);
		sprintf(tvin_input_8, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_input_8, tvin_input_8);

		// release memory allocation
		delete [] input_8_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_input_9, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_input_9, tvin_input_9);

		sc_bv<8>* input_9_tvin_wrapc_buffer = new sc_bv<8>[1];

		// RTL Name: input_9
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: input(7, 0)
				{
					// carray: (9) => (9) @ (2)
					for (int i_0 = 9; i_0 <= 9; i_0 += 2)
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
							input_9_tvin_wrapc_buffer[hls_map_index].range(7, 0) = input_tmp_mem.range(7, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_input_9, "%s\n", (input_9_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_input_9, tvin_input_9);
		}

		tcl_file.set_num(1, &tcl_file.input_9_depth);
		sprintf(tvin_input_9, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_input_9, tvin_input_9);

		// release memory allocation
		delete [] input_9_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_input_10, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_input_10, tvin_input_10);

		sc_bv<8>* input_10_tvin_wrapc_buffer = new sc_bv<8>[1];

		// RTL Name: input_10
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: input(7, 0)
				{
					// carray: (10) => (10) @ (2)
					for (int i_0 = 10; i_0 <= 10; i_0 += 2)
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
							input_10_tvin_wrapc_buffer[hls_map_index].range(7, 0) = input_tmp_mem.range(7, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_input_10, "%s\n", (input_10_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_input_10, tvin_input_10);
		}

		tcl_file.set_num(1, &tcl_file.input_10_depth);
		sprintf(tvin_input_10, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_input_10, tvin_input_10);

		// release memory allocation
		delete [] input_10_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_input_11, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_input_11, tvin_input_11);

		sc_bv<8>* input_11_tvin_wrapc_buffer = new sc_bv<8>[1];

		// RTL Name: input_11
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: input(7, 0)
				{
					// carray: (11) => (11) @ (2)
					for (int i_0 = 11; i_0 <= 11; i_0 += 2)
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
							input_11_tvin_wrapc_buffer[hls_map_index].range(7, 0) = input_tmp_mem.range(7, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_input_11, "%s\n", (input_11_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_input_11, tvin_input_11);
		}

		tcl_file.set_num(1, &tcl_file.input_11_depth);
		sprintf(tvin_input_11, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_input_11, tvin_input_11);

		// release memory allocation
		delete [] input_11_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_input_12, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_input_12, tvin_input_12);

		sc_bv<8>* input_12_tvin_wrapc_buffer = new sc_bv<8>[1];

		// RTL Name: input_12
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: input(7, 0)
				{
					// carray: (12) => (12) @ (2)
					for (int i_0 = 12; i_0 <= 12; i_0 += 2)
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
							input_12_tvin_wrapc_buffer[hls_map_index].range(7, 0) = input_tmp_mem.range(7, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_input_12, "%s\n", (input_12_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_input_12, tvin_input_12);
		}

		tcl_file.set_num(1, &tcl_file.input_12_depth);
		sprintf(tvin_input_12, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_input_12, tvin_input_12);

		// release memory allocation
		delete [] input_12_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_input_13, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_input_13, tvin_input_13);

		sc_bv<8>* input_13_tvin_wrapc_buffer = new sc_bv<8>[1];

		// RTL Name: input_13
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: input(7, 0)
				{
					// carray: (13) => (13) @ (2)
					for (int i_0 = 13; i_0 <= 13; i_0 += 2)
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
							input_13_tvin_wrapc_buffer[hls_map_index].range(7, 0) = input_tmp_mem.range(7, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_input_13, "%s\n", (input_13_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_input_13, tvin_input_13);
		}

		tcl_file.set_num(1, &tcl_file.input_13_depth);
		sprintf(tvin_input_13, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_input_13, tvin_input_13);

		// release memory allocation
		delete [] input_13_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_input_14, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_input_14, tvin_input_14);

		sc_bv<8>* input_14_tvin_wrapc_buffer = new sc_bv<8>[1];

		// RTL Name: input_14
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: input(7, 0)
				{
					// carray: (14) => (14) @ (2)
					for (int i_0 = 14; i_0 <= 14; i_0 += 2)
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
							input_14_tvin_wrapc_buffer[hls_map_index].range(7, 0) = input_tmp_mem.range(7, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_input_14, "%s\n", (input_14_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_input_14, tvin_input_14);
		}

		tcl_file.set_num(1, &tcl_file.input_14_depth);
		sprintf(tvin_input_14, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_input_14, tvin_input_14);

		// release memory allocation
		delete [] input_14_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_input_15, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_input_15, tvin_input_15);

		sc_bv<8>* input_15_tvin_wrapc_buffer = new sc_bv<8>[1];

		// RTL Name: input_15
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: input(7, 0)
				{
					// carray: (15) => (15) @ (2)
					for (int i_0 = 15; i_0 <= 15; i_0 += 2)
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
							input_15_tvin_wrapc_buffer[hls_map_index].range(7, 0) = input_tmp_mem.range(7, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_input_15, "%s\n", (input_15_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_input_15, tvin_input_15);
		}

		tcl_file.set_num(1, &tcl_file.input_15_depth);
		sprintf(tvin_input_15, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_input_15, tvin_input_15);

		// release memory allocation
		delete [] input_15_tvin_wrapc_buffer;

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
		// release memory allocation: "input_0"
		delete [] tvin_input_0;
		// release memory allocation: "input_1"
		delete [] tvin_input_1;
		// release memory allocation: "input_2"
		delete [] tvin_input_2;
		// release memory allocation: "input_3"
		delete [] tvin_input_3;
		// release memory allocation: "input_4"
		delete [] tvin_input_4;
		// release memory allocation: "input_5"
		delete [] tvin_input_5;
		// release memory allocation: "input_6"
		delete [] tvin_input_6;
		// release memory allocation: "input_7"
		delete [] tvin_input_7;
		// release memory allocation: "input_8"
		delete [] tvin_input_8;
		// release memory allocation: "input_9"
		delete [] tvin_input_9;
		// release memory allocation: "input_10"
		delete [] tvin_input_10;
		// release memory allocation: "input_11"
		delete [] tvin_input_11;
		// release memory allocation: "input_12"
		delete [] tvin_input_12;
		// release memory allocation: "input_13"
		delete [] tvin_input_13;
		// release memory allocation: "input_14"
		delete [] tvin_input_14;
		// release memory allocation: "input_15"
		delete [] tvin_input_15;
		// release memory allocation: "output_r"
		delete [] tvout_output_r;
		delete [] tvin_output_r;
		// release memory allocation: "key"
		delete [] tvin_key;

		AESL_transaction++;

		tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
	}
}


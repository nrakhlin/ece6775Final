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
// wrapc file define: "output_0"
#define AUTOTB_TVOUT_output_0  "../tv/cdatafile/c.decrypt_dut.autotvout_output_0.dat"
// wrapc file define: "output_1"
#define AUTOTB_TVOUT_output_1  "../tv/cdatafile/c.decrypt_dut.autotvout_output_1.dat"
// wrapc file define: "output_2"
#define AUTOTB_TVOUT_output_2  "../tv/cdatafile/c.decrypt_dut.autotvout_output_2.dat"
// wrapc file define: "output_3"
#define AUTOTB_TVOUT_output_3  "../tv/cdatafile/c.decrypt_dut.autotvout_output_3.dat"
// wrapc file define: "output_4"
#define AUTOTB_TVOUT_output_4  "../tv/cdatafile/c.decrypt_dut.autotvout_output_4.dat"
// wrapc file define: "output_5"
#define AUTOTB_TVOUT_output_5  "../tv/cdatafile/c.decrypt_dut.autotvout_output_5.dat"
// wrapc file define: "output_6"
#define AUTOTB_TVOUT_output_6  "../tv/cdatafile/c.decrypt_dut.autotvout_output_6.dat"
// wrapc file define: "output_7"
#define AUTOTB_TVOUT_output_7  "../tv/cdatafile/c.decrypt_dut.autotvout_output_7.dat"
// wrapc file define: "output_8"
#define AUTOTB_TVOUT_output_8  "../tv/cdatafile/c.decrypt_dut.autotvout_output_8.dat"
// wrapc file define: "output_9"
#define AUTOTB_TVOUT_output_9  "../tv/cdatafile/c.decrypt_dut.autotvout_output_9.dat"
// wrapc file define: "output_10"
#define AUTOTB_TVOUT_output_10  "../tv/cdatafile/c.decrypt_dut.autotvout_output_10.dat"
// wrapc file define: "output_11"
#define AUTOTB_TVOUT_output_11  "../tv/cdatafile/c.decrypt_dut.autotvout_output_11.dat"
// wrapc file define: "output_12"
#define AUTOTB_TVOUT_output_12  "../tv/cdatafile/c.decrypt_dut.autotvout_output_12.dat"
// wrapc file define: "output_13"
#define AUTOTB_TVOUT_output_13  "../tv/cdatafile/c.decrypt_dut.autotvout_output_13.dat"
// wrapc file define: "output_14"
#define AUTOTB_TVOUT_output_14  "../tv/cdatafile/c.decrypt_dut.autotvout_output_14.dat"
// wrapc file define: "output_15"
#define AUTOTB_TVOUT_output_15  "../tv/cdatafile/c.decrypt_dut.autotvout_output_15.dat"
// wrapc file define: "key_0"
#define AUTOTB_TVIN_key_0  "../tv/cdatafile/c.decrypt_dut.autotvin_key_0.dat"
// wrapc file define: "key_1"
#define AUTOTB_TVIN_key_1  "../tv/cdatafile/c.decrypt_dut.autotvin_key_1.dat"
// wrapc file define: "key_2"
#define AUTOTB_TVIN_key_2  "../tv/cdatafile/c.decrypt_dut.autotvin_key_2.dat"
// wrapc file define: "key_3"
#define AUTOTB_TVIN_key_3  "../tv/cdatafile/c.decrypt_dut.autotvin_key_3.dat"
// wrapc file define: "key_4"
#define AUTOTB_TVIN_key_4  "../tv/cdatafile/c.decrypt_dut.autotvin_key_4.dat"
// wrapc file define: "key_5"
#define AUTOTB_TVIN_key_5  "../tv/cdatafile/c.decrypt_dut.autotvin_key_5.dat"
// wrapc file define: "key_6"
#define AUTOTB_TVIN_key_6  "../tv/cdatafile/c.decrypt_dut.autotvin_key_6.dat"
// wrapc file define: "key_7"
#define AUTOTB_TVIN_key_7  "../tv/cdatafile/c.decrypt_dut.autotvin_key_7.dat"
// wrapc file define: "key_8"
#define AUTOTB_TVIN_key_8  "../tv/cdatafile/c.decrypt_dut.autotvin_key_8.dat"
// wrapc file define: "key_9"
#define AUTOTB_TVIN_key_9  "../tv/cdatafile/c.decrypt_dut.autotvin_key_9.dat"
// wrapc file define: "key_10"
#define AUTOTB_TVIN_key_10  "../tv/cdatafile/c.decrypt_dut.autotvin_key_10.dat"
// wrapc file define: "key_11"
#define AUTOTB_TVIN_key_11  "../tv/cdatafile/c.decrypt_dut.autotvin_key_11.dat"
// wrapc file define: "key_12"
#define AUTOTB_TVIN_key_12  "../tv/cdatafile/c.decrypt_dut.autotvin_key_12.dat"
// wrapc file define: "key_13"
#define AUTOTB_TVIN_key_13  "../tv/cdatafile/c.decrypt_dut.autotvin_key_13.dat"
// wrapc file define: "key_14"
#define AUTOTB_TVIN_key_14  "../tv/cdatafile/c.decrypt_dut.autotvin_key_14.dat"
// wrapc file define: "key_15"
#define AUTOTB_TVIN_key_15  "../tv/cdatafile/c.decrypt_dut.autotvin_key_15.dat"

#define INTER_TCL  "../tv/cdatafile/ref.tcl"

// tvout file define: "output_0"
#define AUTOTB_TVOUT_PC_output_0  "../tv/rtldatafile/rtl.decrypt_dut.autotvout_output_0.dat"
// tvout file define: "output_1"
#define AUTOTB_TVOUT_PC_output_1  "../tv/rtldatafile/rtl.decrypt_dut.autotvout_output_1.dat"
// tvout file define: "output_2"
#define AUTOTB_TVOUT_PC_output_2  "../tv/rtldatafile/rtl.decrypt_dut.autotvout_output_2.dat"
// tvout file define: "output_3"
#define AUTOTB_TVOUT_PC_output_3  "../tv/rtldatafile/rtl.decrypt_dut.autotvout_output_3.dat"
// tvout file define: "output_4"
#define AUTOTB_TVOUT_PC_output_4  "../tv/rtldatafile/rtl.decrypt_dut.autotvout_output_4.dat"
// tvout file define: "output_5"
#define AUTOTB_TVOUT_PC_output_5  "../tv/rtldatafile/rtl.decrypt_dut.autotvout_output_5.dat"
// tvout file define: "output_6"
#define AUTOTB_TVOUT_PC_output_6  "../tv/rtldatafile/rtl.decrypt_dut.autotvout_output_6.dat"
// tvout file define: "output_7"
#define AUTOTB_TVOUT_PC_output_7  "../tv/rtldatafile/rtl.decrypt_dut.autotvout_output_7.dat"
// tvout file define: "output_8"
#define AUTOTB_TVOUT_PC_output_8  "../tv/rtldatafile/rtl.decrypt_dut.autotvout_output_8.dat"
// tvout file define: "output_9"
#define AUTOTB_TVOUT_PC_output_9  "../tv/rtldatafile/rtl.decrypt_dut.autotvout_output_9.dat"
// tvout file define: "output_10"
#define AUTOTB_TVOUT_PC_output_10  "../tv/rtldatafile/rtl.decrypt_dut.autotvout_output_10.dat"
// tvout file define: "output_11"
#define AUTOTB_TVOUT_PC_output_11  "../tv/rtldatafile/rtl.decrypt_dut.autotvout_output_11.dat"
// tvout file define: "output_12"
#define AUTOTB_TVOUT_PC_output_12  "../tv/rtldatafile/rtl.decrypt_dut.autotvout_output_12.dat"
// tvout file define: "output_13"
#define AUTOTB_TVOUT_PC_output_13  "../tv/rtldatafile/rtl.decrypt_dut.autotvout_output_13.dat"
// tvout file define: "output_14"
#define AUTOTB_TVOUT_PC_output_14  "../tv/rtldatafile/rtl.decrypt_dut.autotvout_output_14.dat"
// tvout file define: "output_15"
#define AUTOTB_TVOUT_PC_output_15  "../tv/rtldatafile/rtl.decrypt_dut.autotvout_output_15.dat"

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
			output_0_depth = 0;
			output_1_depth = 0;
			output_2_depth = 0;
			output_3_depth = 0;
			output_4_depth = 0;
			output_5_depth = 0;
			output_6_depth = 0;
			output_7_depth = 0;
			output_8_depth = 0;
			output_9_depth = 0;
			output_10_depth = 0;
			output_11_depth = 0;
			output_12_depth = 0;
			output_13_depth = 0;
			output_14_depth = 0;
			output_15_depth = 0;
			key_0_depth = 0;
			key_1_depth = 0;
			key_2_depth = 0;
			key_3_depth = 0;
			key_4_depth = 0;
			key_5_depth = 0;
			key_6_depth = 0;
			key_7_depth = 0;
			key_8_depth = 0;
			key_9_depth = 0;
			key_10_depth = 0;
			key_11_depth = 0;
			key_12_depth = 0;
			key_13_depth = 0;
			key_14_depth = 0;
			key_15_depth = 0;
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
			total_list << "{output_0 " << output_0_depth << "}\n";
			total_list << "{output_1 " << output_1_depth << "}\n";
			total_list << "{output_2 " << output_2_depth << "}\n";
			total_list << "{output_3 " << output_3_depth << "}\n";
			total_list << "{output_4 " << output_4_depth << "}\n";
			total_list << "{output_5 " << output_5_depth << "}\n";
			total_list << "{output_6 " << output_6_depth << "}\n";
			total_list << "{output_7 " << output_7_depth << "}\n";
			total_list << "{output_8 " << output_8_depth << "}\n";
			total_list << "{output_9 " << output_9_depth << "}\n";
			total_list << "{output_10 " << output_10_depth << "}\n";
			total_list << "{output_11 " << output_11_depth << "}\n";
			total_list << "{output_12 " << output_12_depth << "}\n";
			total_list << "{output_13 " << output_13_depth << "}\n";
			total_list << "{output_14 " << output_14_depth << "}\n";
			total_list << "{output_15 " << output_15_depth << "}\n";
			total_list << "{key_0 " << key_0_depth << "}\n";
			total_list << "{key_1 " << key_1_depth << "}\n";
			total_list << "{key_2 " << key_2_depth << "}\n";
			total_list << "{key_3 " << key_3_depth << "}\n";
			total_list << "{key_4 " << key_4_depth << "}\n";
			total_list << "{key_5 " << key_5_depth << "}\n";
			total_list << "{key_6 " << key_6_depth << "}\n";
			total_list << "{key_7 " << key_7_depth << "}\n";
			total_list << "{key_8 " << key_8_depth << "}\n";
			total_list << "{key_9 " << key_9_depth << "}\n";
			total_list << "{key_10 " << key_10_depth << "}\n";
			total_list << "{key_11 " << key_11_depth << "}\n";
			total_list << "{key_12 " << key_12_depth << "}\n";
			total_list << "{key_13 " << key_13_depth << "}\n";
			total_list << "{key_14 " << key_14_depth << "}\n";
			total_list << "{key_15 " << key_15_depth << "}\n";
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
		int output_0_depth;
		int output_1_depth;
		int output_2_depth;
		int output_3_depth;
		int output_4_depth;
		int output_5_depth;
		int output_6_depth;
		int output_7_depth;
		int output_8_depth;
		int output_9_depth;
		int output_10_depth;
		int output_11_depth;
		int output_12_depth;
		int output_13_depth;
		int output_14_depth;
		int output_15_depth;
		int key_0_depth;
		int key_1_depth;
		int key_2_depth;
		int key_3_depth;
		int key_4_depth;
		int key_5_depth;
		int key_6_depth;
		int key_7_depth;
		int key_8_depth;
		int key_9_depth;
		int key_10_depth;
		int key_11_depth;
		int key_12_depth;
		int key_13_depth;
		int key_14_depth;
		int key_15_depth;
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


		// output port post check: "output_0"
		aesl_fh.read(AUTOTB_TVOUT_PC_output_0, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_output_0, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_output_0, AESL_token); // data

			sc_bv<8> *output_0_pc_buffer = new sc_bv<8>[1];
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'output_0', possible cause: There are uninitialized variables in the C design." << endl;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'output_0', possible cause: There are uninitialized variables in the C design." << endl;
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
					output_0_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_output_0, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_output_0))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: output_0
				{
					// bitslice(7, 0)
					// {
						// celement: output(7, 0)
						// {
							sc_lv<8>* output_lv0_0_0_2 = new sc_lv<8>[1];
						// }
					// }

					// bitslice(7, 0)
					{
						int hls_map_index = 0;
						// celement: output(7, 0)
						{
							// carray: (0) => (0) @ (2)
							for (int i_0 = 0; i_0 <= 0; i_0 += 2)
							{
								if (&(output[0]) != NULL) // check the null address if the c port is array or others
								{
									output_lv0_0_0_2[hls_map_index].range(7, 0) = sc_bv<8>(output_0_pc_buffer[hls_map_index].range(7, 0));
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
							// carray: (0) => (0) @ (2)
							for (int i_0 = 0; i_0 <= 0; i_0 += 2)
							{
								// sub                    : i_0
								// ori_name               : output[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : output[0]
								// output_left_conversion : output[i_0]
								// output_type_conversion : (output_lv0_0_0_2[hls_map_index]).to_uint64()
								if (&(output[0]) != NULL) // check the null address if the c port is array or others
								{
									output[i_0] = (output_lv0_0_0_2[hls_map_index]).to_uint64();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] output_0_pc_buffer;
		}

		// output port post check: "output_1"
		aesl_fh.read(AUTOTB_TVOUT_PC_output_1, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_output_1, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_output_1, AESL_token); // data

			sc_bv<8> *output_1_pc_buffer = new sc_bv<8>[1];
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'output_1', possible cause: There are uninitialized variables in the C design." << endl;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'output_1', possible cause: There are uninitialized variables in the C design." << endl;
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
					output_1_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_output_1, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_output_1))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: output_1
				{
					// bitslice(7, 0)
					// {
						// celement: output(7, 0)
						// {
							sc_lv<8>* output_lv0_1_1_2 = new sc_lv<8>[1];
						// }
					// }

					// bitslice(7, 0)
					{
						int hls_map_index = 0;
						// celement: output(7, 0)
						{
							// carray: (1) => (1) @ (2)
							for (int i_0 = 1; i_0 <= 1; i_0 += 2)
							{
								if (&(output[0]) != NULL) // check the null address if the c port is array or others
								{
									output_lv0_1_1_2[hls_map_index].range(7, 0) = sc_bv<8>(output_1_pc_buffer[hls_map_index].range(7, 0));
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
							// carray: (1) => (1) @ (2)
							for (int i_0 = 1; i_0 <= 1; i_0 += 2)
							{
								// sub                    : i_0
								// ori_name               : output[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : output[0]
								// output_left_conversion : output[i_0]
								// output_type_conversion : (output_lv0_1_1_2[hls_map_index]).to_uint64()
								if (&(output[0]) != NULL) // check the null address if the c port is array or others
								{
									output[i_0] = (output_lv0_1_1_2[hls_map_index]).to_uint64();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] output_1_pc_buffer;
		}

		// output port post check: "output_2"
		aesl_fh.read(AUTOTB_TVOUT_PC_output_2, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_output_2, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_output_2, AESL_token); // data

			sc_bv<8> *output_2_pc_buffer = new sc_bv<8>[1];
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'output_2', possible cause: There are uninitialized variables in the C design." << endl;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'output_2', possible cause: There are uninitialized variables in the C design." << endl;
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
					output_2_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_output_2, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_output_2))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: output_2
				{
					// bitslice(7, 0)
					// {
						// celement: output(7, 0)
						// {
							sc_lv<8>* output_lv0_2_2_2 = new sc_lv<8>[1];
						// }
					// }

					// bitslice(7, 0)
					{
						int hls_map_index = 0;
						// celement: output(7, 0)
						{
							// carray: (2) => (2) @ (2)
							for (int i_0 = 2; i_0 <= 2; i_0 += 2)
							{
								if (&(output[0]) != NULL) // check the null address if the c port is array or others
								{
									output_lv0_2_2_2[hls_map_index].range(7, 0) = sc_bv<8>(output_2_pc_buffer[hls_map_index].range(7, 0));
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
							// carray: (2) => (2) @ (2)
							for (int i_0 = 2; i_0 <= 2; i_0 += 2)
							{
								// sub                    : i_0
								// ori_name               : output[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : output[0]
								// output_left_conversion : output[i_0]
								// output_type_conversion : (output_lv0_2_2_2[hls_map_index]).to_uint64()
								if (&(output[0]) != NULL) // check the null address if the c port is array or others
								{
									output[i_0] = (output_lv0_2_2_2[hls_map_index]).to_uint64();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] output_2_pc_buffer;
		}

		// output port post check: "output_3"
		aesl_fh.read(AUTOTB_TVOUT_PC_output_3, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_output_3, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_output_3, AESL_token); // data

			sc_bv<8> *output_3_pc_buffer = new sc_bv<8>[1];
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'output_3', possible cause: There are uninitialized variables in the C design." << endl;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'output_3', possible cause: There are uninitialized variables in the C design." << endl;
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
					output_3_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_output_3, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_output_3))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: output_3
				{
					// bitslice(7, 0)
					// {
						// celement: output(7, 0)
						// {
							sc_lv<8>* output_lv0_3_3_2 = new sc_lv<8>[1];
						// }
					// }

					// bitslice(7, 0)
					{
						int hls_map_index = 0;
						// celement: output(7, 0)
						{
							// carray: (3) => (3) @ (2)
							for (int i_0 = 3; i_0 <= 3; i_0 += 2)
							{
								if (&(output[0]) != NULL) // check the null address if the c port is array or others
								{
									output_lv0_3_3_2[hls_map_index].range(7, 0) = sc_bv<8>(output_3_pc_buffer[hls_map_index].range(7, 0));
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
							// carray: (3) => (3) @ (2)
							for (int i_0 = 3; i_0 <= 3; i_0 += 2)
							{
								// sub                    : i_0
								// ori_name               : output[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : output[0]
								// output_left_conversion : output[i_0]
								// output_type_conversion : (output_lv0_3_3_2[hls_map_index]).to_uint64()
								if (&(output[0]) != NULL) // check the null address if the c port is array or others
								{
									output[i_0] = (output_lv0_3_3_2[hls_map_index]).to_uint64();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] output_3_pc_buffer;
		}

		// output port post check: "output_4"
		aesl_fh.read(AUTOTB_TVOUT_PC_output_4, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_output_4, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_output_4, AESL_token); // data

			sc_bv<8> *output_4_pc_buffer = new sc_bv<8>[1];
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'output_4', possible cause: There are uninitialized variables in the C design." << endl;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'output_4', possible cause: There are uninitialized variables in the C design." << endl;
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
					output_4_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_output_4, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_output_4))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: output_4
				{
					// bitslice(7, 0)
					// {
						// celement: output(7, 0)
						// {
							sc_lv<8>* output_lv0_4_4_2 = new sc_lv<8>[1];
						// }
					// }

					// bitslice(7, 0)
					{
						int hls_map_index = 0;
						// celement: output(7, 0)
						{
							// carray: (4) => (4) @ (2)
							for (int i_0 = 4; i_0 <= 4; i_0 += 2)
							{
								if (&(output[0]) != NULL) // check the null address if the c port is array or others
								{
									output_lv0_4_4_2[hls_map_index].range(7, 0) = sc_bv<8>(output_4_pc_buffer[hls_map_index].range(7, 0));
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
							// carray: (4) => (4) @ (2)
							for (int i_0 = 4; i_0 <= 4; i_0 += 2)
							{
								// sub                    : i_0
								// ori_name               : output[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : output[0]
								// output_left_conversion : output[i_0]
								// output_type_conversion : (output_lv0_4_4_2[hls_map_index]).to_uint64()
								if (&(output[0]) != NULL) // check the null address if the c port is array or others
								{
									output[i_0] = (output_lv0_4_4_2[hls_map_index]).to_uint64();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] output_4_pc_buffer;
		}

		// output port post check: "output_5"
		aesl_fh.read(AUTOTB_TVOUT_PC_output_5, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_output_5, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_output_5, AESL_token); // data

			sc_bv<8> *output_5_pc_buffer = new sc_bv<8>[1];
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'output_5', possible cause: There are uninitialized variables in the C design." << endl;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'output_5', possible cause: There are uninitialized variables in the C design." << endl;
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
					output_5_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_output_5, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_output_5))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: output_5
				{
					// bitslice(7, 0)
					// {
						// celement: output(7, 0)
						// {
							sc_lv<8>* output_lv0_5_5_2 = new sc_lv<8>[1];
						// }
					// }

					// bitslice(7, 0)
					{
						int hls_map_index = 0;
						// celement: output(7, 0)
						{
							// carray: (5) => (5) @ (2)
							for (int i_0 = 5; i_0 <= 5; i_0 += 2)
							{
								if (&(output[0]) != NULL) // check the null address if the c port is array or others
								{
									output_lv0_5_5_2[hls_map_index].range(7, 0) = sc_bv<8>(output_5_pc_buffer[hls_map_index].range(7, 0));
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
							// carray: (5) => (5) @ (2)
							for (int i_0 = 5; i_0 <= 5; i_0 += 2)
							{
								// sub                    : i_0
								// ori_name               : output[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : output[0]
								// output_left_conversion : output[i_0]
								// output_type_conversion : (output_lv0_5_5_2[hls_map_index]).to_uint64()
								if (&(output[0]) != NULL) // check the null address if the c port is array or others
								{
									output[i_0] = (output_lv0_5_5_2[hls_map_index]).to_uint64();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] output_5_pc_buffer;
		}

		// output port post check: "output_6"
		aesl_fh.read(AUTOTB_TVOUT_PC_output_6, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_output_6, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_output_6, AESL_token); // data

			sc_bv<8> *output_6_pc_buffer = new sc_bv<8>[1];
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'output_6', possible cause: There are uninitialized variables in the C design." << endl;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'output_6', possible cause: There are uninitialized variables in the C design." << endl;
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
					output_6_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_output_6, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_output_6))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: output_6
				{
					// bitslice(7, 0)
					// {
						// celement: output(7, 0)
						// {
							sc_lv<8>* output_lv0_6_6_2 = new sc_lv<8>[1];
						// }
					// }

					// bitslice(7, 0)
					{
						int hls_map_index = 0;
						// celement: output(7, 0)
						{
							// carray: (6) => (6) @ (2)
							for (int i_0 = 6; i_0 <= 6; i_0 += 2)
							{
								if (&(output[0]) != NULL) // check the null address if the c port is array or others
								{
									output_lv0_6_6_2[hls_map_index].range(7, 0) = sc_bv<8>(output_6_pc_buffer[hls_map_index].range(7, 0));
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
							// carray: (6) => (6) @ (2)
							for (int i_0 = 6; i_0 <= 6; i_0 += 2)
							{
								// sub                    : i_0
								// ori_name               : output[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : output[0]
								// output_left_conversion : output[i_0]
								// output_type_conversion : (output_lv0_6_6_2[hls_map_index]).to_uint64()
								if (&(output[0]) != NULL) // check the null address if the c port is array or others
								{
									output[i_0] = (output_lv0_6_6_2[hls_map_index]).to_uint64();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] output_6_pc_buffer;
		}

		// output port post check: "output_7"
		aesl_fh.read(AUTOTB_TVOUT_PC_output_7, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_output_7, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_output_7, AESL_token); // data

			sc_bv<8> *output_7_pc_buffer = new sc_bv<8>[1];
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'output_7', possible cause: There are uninitialized variables in the C design." << endl;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'output_7', possible cause: There are uninitialized variables in the C design." << endl;
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
					output_7_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_output_7, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_output_7))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: output_7
				{
					// bitslice(7, 0)
					// {
						// celement: output(7, 0)
						// {
							sc_lv<8>* output_lv0_7_7_2 = new sc_lv<8>[1];
						// }
					// }

					// bitslice(7, 0)
					{
						int hls_map_index = 0;
						// celement: output(7, 0)
						{
							// carray: (7) => (7) @ (2)
							for (int i_0 = 7; i_0 <= 7; i_0 += 2)
							{
								if (&(output[0]) != NULL) // check the null address if the c port is array or others
								{
									output_lv0_7_7_2[hls_map_index].range(7, 0) = sc_bv<8>(output_7_pc_buffer[hls_map_index].range(7, 0));
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
							// carray: (7) => (7) @ (2)
							for (int i_0 = 7; i_0 <= 7; i_0 += 2)
							{
								// sub                    : i_0
								// ori_name               : output[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : output[0]
								// output_left_conversion : output[i_0]
								// output_type_conversion : (output_lv0_7_7_2[hls_map_index]).to_uint64()
								if (&(output[0]) != NULL) // check the null address if the c port is array or others
								{
									output[i_0] = (output_lv0_7_7_2[hls_map_index]).to_uint64();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] output_7_pc_buffer;
		}

		// output port post check: "output_8"
		aesl_fh.read(AUTOTB_TVOUT_PC_output_8, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_output_8, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_output_8, AESL_token); // data

			sc_bv<8> *output_8_pc_buffer = new sc_bv<8>[1];
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'output_8', possible cause: There are uninitialized variables in the C design." << endl;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'output_8', possible cause: There are uninitialized variables in the C design." << endl;
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
					output_8_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_output_8, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_output_8))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: output_8
				{
					// bitslice(7, 0)
					// {
						// celement: output(7, 0)
						// {
							sc_lv<8>* output_lv0_8_8_2 = new sc_lv<8>[1];
						// }
					// }

					// bitslice(7, 0)
					{
						int hls_map_index = 0;
						// celement: output(7, 0)
						{
							// carray: (8) => (8) @ (2)
							for (int i_0 = 8; i_0 <= 8; i_0 += 2)
							{
								if (&(output[0]) != NULL) // check the null address if the c port is array or others
								{
									output_lv0_8_8_2[hls_map_index].range(7, 0) = sc_bv<8>(output_8_pc_buffer[hls_map_index].range(7, 0));
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
							// carray: (8) => (8) @ (2)
							for (int i_0 = 8; i_0 <= 8; i_0 += 2)
							{
								// sub                    : i_0
								// ori_name               : output[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : output[0]
								// output_left_conversion : output[i_0]
								// output_type_conversion : (output_lv0_8_8_2[hls_map_index]).to_uint64()
								if (&(output[0]) != NULL) // check the null address if the c port is array or others
								{
									output[i_0] = (output_lv0_8_8_2[hls_map_index]).to_uint64();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] output_8_pc_buffer;
		}

		// output port post check: "output_9"
		aesl_fh.read(AUTOTB_TVOUT_PC_output_9, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_output_9, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_output_9, AESL_token); // data

			sc_bv<8> *output_9_pc_buffer = new sc_bv<8>[1];
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'output_9', possible cause: There are uninitialized variables in the C design." << endl;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'output_9', possible cause: There are uninitialized variables in the C design." << endl;
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
					output_9_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_output_9, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_output_9))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: output_9
				{
					// bitslice(7, 0)
					// {
						// celement: output(7, 0)
						// {
							sc_lv<8>* output_lv0_9_9_2 = new sc_lv<8>[1];
						// }
					// }

					// bitslice(7, 0)
					{
						int hls_map_index = 0;
						// celement: output(7, 0)
						{
							// carray: (9) => (9) @ (2)
							for (int i_0 = 9; i_0 <= 9; i_0 += 2)
							{
								if (&(output[0]) != NULL) // check the null address if the c port is array or others
								{
									output_lv0_9_9_2[hls_map_index].range(7, 0) = sc_bv<8>(output_9_pc_buffer[hls_map_index].range(7, 0));
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
							// carray: (9) => (9) @ (2)
							for (int i_0 = 9; i_0 <= 9; i_0 += 2)
							{
								// sub                    : i_0
								// ori_name               : output[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : output[0]
								// output_left_conversion : output[i_0]
								// output_type_conversion : (output_lv0_9_9_2[hls_map_index]).to_uint64()
								if (&(output[0]) != NULL) // check the null address if the c port is array or others
								{
									output[i_0] = (output_lv0_9_9_2[hls_map_index]).to_uint64();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] output_9_pc_buffer;
		}

		// output port post check: "output_10"
		aesl_fh.read(AUTOTB_TVOUT_PC_output_10, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_output_10, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_output_10, AESL_token); // data

			sc_bv<8> *output_10_pc_buffer = new sc_bv<8>[1];
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'output_10', possible cause: There are uninitialized variables in the C design." << endl;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'output_10', possible cause: There are uninitialized variables in the C design." << endl;
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
					output_10_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_output_10, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_output_10))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: output_10
				{
					// bitslice(7, 0)
					// {
						// celement: output(7, 0)
						// {
							sc_lv<8>* output_lv0_10_10_2 = new sc_lv<8>[1];
						// }
					// }

					// bitslice(7, 0)
					{
						int hls_map_index = 0;
						// celement: output(7, 0)
						{
							// carray: (10) => (10) @ (2)
							for (int i_0 = 10; i_0 <= 10; i_0 += 2)
							{
								if (&(output[0]) != NULL) // check the null address if the c port is array or others
								{
									output_lv0_10_10_2[hls_map_index].range(7, 0) = sc_bv<8>(output_10_pc_buffer[hls_map_index].range(7, 0));
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
							// carray: (10) => (10) @ (2)
							for (int i_0 = 10; i_0 <= 10; i_0 += 2)
							{
								// sub                    : i_0
								// ori_name               : output[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : output[0]
								// output_left_conversion : output[i_0]
								// output_type_conversion : (output_lv0_10_10_2[hls_map_index]).to_uint64()
								if (&(output[0]) != NULL) // check the null address if the c port is array or others
								{
									output[i_0] = (output_lv0_10_10_2[hls_map_index]).to_uint64();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] output_10_pc_buffer;
		}

		// output port post check: "output_11"
		aesl_fh.read(AUTOTB_TVOUT_PC_output_11, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_output_11, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_output_11, AESL_token); // data

			sc_bv<8> *output_11_pc_buffer = new sc_bv<8>[1];
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'output_11', possible cause: There are uninitialized variables in the C design." << endl;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'output_11', possible cause: There are uninitialized variables in the C design." << endl;
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
					output_11_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_output_11, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_output_11))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: output_11
				{
					// bitslice(7, 0)
					// {
						// celement: output(7, 0)
						// {
							sc_lv<8>* output_lv0_11_11_2 = new sc_lv<8>[1];
						// }
					// }

					// bitslice(7, 0)
					{
						int hls_map_index = 0;
						// celement: output(7, 0)
						{
							// carray: (11) => (11) @ (2)
							for (int i_0 = 11; i_0 <= 11; i_0 += 2)
							{
								if (&(output[0]) != NULL) // check the null address if the c port is array or others
								{
									output_lv0_11_11_2[hls_map_index].range(7, 0) = sc_bv<8>(output_11_pc_buffer[hls_map_index].range(7, 0));
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
							// carray: (11) => (11) @ (2)
							for (int i_0 = 11; i_0 <= 11; i_0 += 2)
							{
								// sub                    : i_0
								// ori_name               : output[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : output[0]
								// output_left_conversion : output[i_0]
								// output_type_conversion : (output_lv0_11_11_2[hls_map_index]).to_uint64()
								if (&(output[0]) != NULL) // check the null address if the c port is array or others
								{
									output[i_0] = (output_lv0_11_11_2[hls_map_index]).to_uint64();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] output_11_pc_buffer;
		}

		// output port post check: "output_12"
		aesl_fh.read(AUTOTB_TVOUT_PC_output_12, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_output_12, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_output_12, AESL_token); // data

			sc_bv<8> *output_12_pc_buffer = new sc_bv<8>[1];
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'output_12', possible cause: There are uninitialized variables in the C design." << endl;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'output_12', possible cause: There are uninitialized variables in the C design." << endl;
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
					output_12_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_output_12, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_output_12))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: output_12
				{
					// bitslice(7, 0)
					// {
						// celement: output(7, 0)
						// {
							sc_lv<8>* output_lv0_12_12_2 = new sc_lv<8>[1];
						// }
					// }

					// bitslice(7, 0)
					{
						int hls_map_index = 0;
						// celement: output(7, 0)
						{
							// carray: (12) => (12) @ (2)
							for (int i_0 = 12; i_0 <= 12; i_0 += 2)
							{
								if (&(output[0]) != NULL) // check the null address if the c port is array or others
								{
									output_lv0_12_12_2[hls_map_index].range(7, 0) = sc_bv<8>(output_12_pc_buffer[hls_map_index].range(7, 0));
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
							// carray: (12) => (12) @ (2)
							for (int i_0 = 12; i_0 <= 12; i_0 += 2)
							{
								// sub                    : i_0
								// ori_name               : output[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : output[0]
								// output_left_conversion : output[i_0]
								// output_type_conversion : (output_lv0_12_12_2[hls_map_index]).to_uint64()
								if (&(output[0]) != NULL) // check the null address if the c port is array or others
								{
									output[i_0] = (output_lv0_12_12_2[hls_map_index]).to_uint64();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] output_12_pc_buffer;
		}

		// output port post check: "output_13"
		aesl_fh.read(AUTOTB_TVOUT_PC_output_13, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_output_13, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_output_13, AESL_token); // data

			sc_bv<8> *output_13_pc_buffer = new sc_bv<8>[1];
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'output_13', possible cause: There are uninitialized variables in the C design." << endl;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'output_13', possible cause: There are uninitialized variables in the C design." << endl;
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
					output_13_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_output_13, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_output_13))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: output_13
				{
					// bitslice(7, 0)
					// {
						// celement: output(7, 0)
						// {
							sc_lv<8>* output_lv0_13_13_2 = new sc_lv<8>[1];
						// }
					// }

					// bitslice(7, 0)
					{
						int hls_map_index = 0;
						// celement: output(7, 0)
						{
							// carray: (13) => (13) @ (2)
							for (int i_0 = 13; i_0 <= 13; i_0 += 2)
							{
								if (&(output[0]) != NULL) // check the null address if the c port is array or others
								{
									output_lv0_13_13_2[hls_map_index].range(7, 0) = sc_bv<8>(output_13_pc_buffer[hls_map_index].range(7, 0));
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
							// carray: (13) => (13) @ (2)
							for (int i_0 = 13; i_0 <= 13; i_0 += 2)
							{
								// sub                    : i_0
								// ori_name               : output[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : output[0]
								// output_left_conversion : output[i_0]
								// output_type_conversion : (output_lv0_13_13_2[hls_map_index]).to_uint64()
								if (&(output[0]) != NULL) // check the null address if the c port is array or others
								{
									output[i_0] = (output_lv0_13_13_2[hls_map_index]).to_uint64();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] output_13_pc_buffer;
		}

		// output port post check: "output_14"
		aesl_fh.read(AUTOTB_TVOUT_PC_output_14, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_output_14, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_output_14, AESL_token); // data

			sc_bv<8> *output_14_pc_buffer = new sc_bv<8>[1];
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'output_14', possible cause: There are uninitialized variables in the C design." << endl;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'output_14', possible cause: There are uninitialized variables in the C design." << endl;
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
					output_14_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_output_14, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_output_14))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: output_14
				{
					// bitslice(7, 0)
					// {
						// celement: output(7, 0)
						// {
							sc_lv<8>* output_lv0_14_14_2 = new sc_lv<8>[1];
						// }
					// }

					// bitslice(7, 0)
					{
						int hls_map_index = 0;
						// celement: output(7, 0)
						{
							// carray: (14) => (14) @ (2)
							for (int i_0 = 14; i_0 <= 14; i_0 += 2)
							{
								if (&(output[0]) != NULL) // check the null address if the c port is array or others
								{
									output_lv0_14_14_2[hls_map_index].range(7, 0) = sc_bv<8>(output_14_pc_buffer[hls_map_index].range(7, 0));
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
							// carray: (14) => (14) @ (2)
							for (int i_0 = 14; i_0 <= 14; i_0 += 2)
							{
								// sub                    : i_0
								// ori_name               : output[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : output[0]
								// output_left_conversion : output[i_0]
								// output_type_conversion : (output_lv0_14_14_2[hls_map_index]).to_uint64()
								if (&(output[0]) != NULL) // check the null address if the c port is array or others
								{
									output[i_0] = (output_lv0_14_14_2[hls_map_index]).to_uint64();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] output_14_pc_buffer;
		}

		// output port post check: "output_15"
		aesl_fh.read(AUTOTB_TVOUT_PC_output_15, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_output_15, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_output_15, AESL_token); // data

			sc_bv<8> *output_15_pc_buffer = new sc_bv<8>[1];
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'output_15', possible cause: There are uninitialized variables in the C design." << endl;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'output_15', possible cause: There are uninitialized variables in the C design." << endl;
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
					output_15_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_output_15, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_output_15))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: output_15
				{
					// bitslice(7, 0)
					// {
						// celement: output(7, 0)
						// {
							sc_lv<8>* output_lv0_15_15_2 = new sc_lv<8>[1];
						// }
					// }

					// bitslice(7, 0)
					{
						int hls_map_index = 0;
						// celement: output(7, 0)
						{
							// carray: (15) => (15) @ (2)
							for (int i_0 = 15; i_0 <= 15; i_0 += 2)
							{
								if (&(output[0]) != NULL) // check the null address if the c port is array or others
								{
									output_lv0_15_15_2[hls_map_index].range(7, 0) = sc_bv<8>(output_15_pc_buffer[hls_map_index].range(7, 0));
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
							// carray: (15) => (15) @ (2)
							for (int i_0 = 15; i_0 <= 15; i_0 += 2)
							{
								// sub                    : i_0
								// ori_name               : output[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : output[0]
								// output_left_conversion : output[i_0]
								// output_type_conversion : (output_lv0_15_15_2[hls_map_index]).to_uint64()
								if (&(output[0]) != NULL) // check the null address if the c port is array or others
								{
									output[i_0] = (output_lv0_15_15_2[hls_map_index]).to_uint64();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] output_15_pc_buffer;
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

		// "output_0"
		char* tvout_output_0 = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_output_0);

		// "output_1"
		char* tvout_output_1 = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_output_1);

		// "output_2"
		char* tvout_output_2 = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_output_2);

		// "output_3"
		char* tvout_output_3 = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_output_3);

		// "output_4"
		char* tvout_output_4 = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_output_4);

		// "output_5"
		char* tvout_output_5 = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_output_5);

		// "output_6"
		char* tvout_output_6 = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_output_6);

		// "output_7"
		char* tvout_output_7 = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_output_7);

		// "output_8"
		char* tvout_output_8 = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_output_8);

		// "output_9"
		char* tvout_output_9 = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_output_9);

		// "output_10"
		char* tvout_output_10 = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_output_10);

		// "output_11"
		char* tvout_output_11 = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_output_11);

		// "output_12"
		char* tvout_output_12 = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_output_12);

		// "output_13"
		char* tvout_output_13 = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_output_13);

		// "output_14"
		char* tvout_output_14 = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_output_14);

		// "output_15"
		char* tvout_output_15 = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_output_15);

		// "key_0"
		char* tvin_key_0 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_key_0);

		// "key_1"
		char* tvin_key_1 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_key_1);

		// "key_2"
		char* tvin_key_2 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_key_2);

		// "key_3"
		char* tvin_key_3 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_key_3);

		// "key_4"
		char* tvin_key_4 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_key_4);

		// "key_5"
		char* tvin_key_5 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_key_5);

		// "key_6"
		char* tvin_key_6 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_key_6);

		// "key_7"
		char* tvin_key_7 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_key_7);

		// "key_8"
		char* tvin_key_8 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_key_8);

		// "key_9"
		char* tvin_key_9 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_key_9);

		// "key_10"
		char* tvin_key_10 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_key_10);

		// "key_11"
		char* tvin_key_11 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_key_11);

		// "key_12"
		char* tvin_key_12 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_key_12);

		// "key_13"
		char* tvin_key_13 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_key_13);

		// "key_14"
		char* tvin_key_14 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_key_14);

		// "key_15"
		char* tvin_key_15 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_key_15);

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
		sprintf(tvin_key_0, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_key_0, tvin_key_0);

		sc_bv<8>* key_0_tvin_wrapc_buffer = new sc_bv<8>[1];

		// RTL Name: key_0
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: key(7, 0)
				{
					// carray: (0) => (0) @ (2)
					for (int i_0 = 0; i_0 <= 0; i_0 += 2)
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
							key_0_tvin_wrapc_buffer[hls_map_index].range(7, 0) = key_tmp_mem.range(7, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_key_0, "%s\n", (key_0_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_key_0, tvin_key_0);
		}

		tcl_file.set_num(1, &tcl_file.key_0_depth);
		sprintf(tvin_key_0, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_key_0, tvin_key_0);

		// release memory allocation
		delete [] key_0_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_key_1, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_key_1, tvin_key_1);

		sc_bv<8>* key_1_tvin_wrapc_buffer = new sc_bv<8>[1];

		// RTL Name: key_1
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: key(7, 0)
				{
					// carray: (1) => (1) @ (2)
					for (int i_0 = 1; i_0 <= 1; i_0 += 2)
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
							key_1_tvin_wrapc_buffer[hls_map_index].range(7, 0) = key_tmp_mem.range(7, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_key_1, "%s\n", (key_1_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_key_1, tvin_key_1);
		}

		tcl_file.set_num(1, &tcl_file.key_1_depth);
		sprintf(tvin_key_1, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_key_1, tvin_key_1);

		// release memory allocation
		delete [] key_1_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_key_2, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_key_2, tvin_key_2);

		sc_bv<8>* key_2_tvin_wrapc_buffer = new sc_bv<8>[1];

		// RTL Name: key_2
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: key(7, 0)
				{
					// carray: (2) => (2) @ (2)
					for (int i_0 = 2; i_0 <= 2; i_0 += 2)
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
							key_2_tvin_wrapc_buffer[hls_map_index].range(7, 0) = key_tmp_mem.range(7, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_key_2, "%s\n", (key_2_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_key_2, tvin_key_2);
		}

		tcl_file.set_num(1, &tcl_file.key_2_depth);
		sprintf(tvin_key_2, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_key_2, tvin_key_2);

		// release memory allocation
		delete [] key_2_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_key_3, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_key_3, tvin_key_3);

		sc_bv<8>* key_3_tvin_wrapc_buffer = new sc_bv<8>[1];

		// RTL Name: key_3
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: key(7, 0)
				{
					// carray: (3) => (3) @ (2)
					for (int i_0 = 3; i_0 <= 3; i_0 += 2)
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
							key_3_tvin_wrapc_buffer[hls_map_index].range(7, 0) = key_tmp_mem.range(7, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_key_3, "%s\n", (key_3_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_key_3, tvin_key_3);
		}

		tcl_file.set_num(1, &tcl_file.key_3_depth);
		sprintf(tvin_key_3, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_key_3, tvin_key_3);

		// release memory allocation
		delete [] key_3_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_key_4, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_key_4, tvin_key_4);

		sc_bv<8>* key_4_tvin_wrapc_buffer = new sc_bv<8>[1];

		// RTL Name: key_4
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: key(7, 0)
				{
					// carray: (4) => (4) @ (2)
					for (int i_0 = 4; i_0 <= 4; i_0 += 2)
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
							key_4_tvin_wrapc_buffer[hls_map_index].range(7, 0) = key_tmp_mem.range(7, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_key_4, "%s\n", (key_4_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_key_4, tvin_key_4);
		}

		tcl_file.set_num(1, &tcl_file.key_4_depth);
		sprintf(tvin_key_4, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_key_4, tvin_key_4);

		// release memory allocation
		delete [] key_4_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_key_5, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_key_5, tvin_key_5);

		sc_bv<8>* key_5_tvin_wrapc_buffer = new sc_bv<8>[1];

		// RTL Name: key_5
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: key(7, 0)
				{
					// carray: (5) => (5) @ (2)
					for (int i_0 = 5; i_0 <= 5; i_0 += 2)
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
							key_5_tvin_wrapc_buffer[hls_map_index].range(7, 0) = key_tmp_mem.range(7, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_key_5, "%s\n", (key_5_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_key_5, tvin_key_5);
		}

		tcl_file.set_num(1, &tcl_file.key_5_depth);
		sprintf(tvin_key_5, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_key_5, tvin_key_5);

		// release memory allocation
		delete [] key_5_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_key_6, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_key_6, tvin_key_6);

		sc_bv<8>* key_6_tvin_wrapc_buffer = new sc_bv<8>[1];

		// RTL Name: key_6
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: key(7, 0)
				{
					// carray: (6) => (6) @ (2)
					for (int i_0 = 6; i_0 <= 6; i_0 += 2)
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
							key_6_tvin_wrapc_buffer[hls_map_index].range(7, 0) = key_tmp_mem.range(7, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_key_6, "%s\n", (key_6_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_key_6, tvin_key_6);
		}

		tcl_file.set_num(1, &tcl_file.key_6_depth);
		sprintf(tvin_key_6, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_key_6, tvin_key_6);

		// release memory allocation
		delete [] key_6_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_key_7, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_key_7, tvin_key_7);

		sc_bv<8>* key_7_tvin_wrapc_buffer = new sc_bv<8>[1];

		// RTL Name: key_7
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: key(7, 0)
				{
					// carray: (7) => (7) @ (2)
					for (int i_0 = 7; i_0 <= 7; i_0 += 2)
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
							key_7_tvin_wrapc_buffer[hls_map_index].range(7, 0) = key_tmp_mem.range(7, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_key_7, "%s\n", (key_7_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_key_7, tvin_key_7);
		}

		tcl_file.set_num(1, &tcl_file.key_7_depth);
		sprintf(tvin_key_7, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_key_7, tvin_key_7);

		// release memory allocation
		delete [] key_7_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_key_8, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_key_8, tvin_key_8);

		sc_bv<8>* key_8_tvin_wrapc_buffer = new sc_bv<8>[1];

		// RTL Name: key_8
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: key(7, 0)
				{
					// carray: (8) => (8) @ (2)
					for (int i_0 = 8; i_0 <= 8; i_0 += 2)
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
							key_8_tvin_wrapc_buffer[hls_map_index].range(7, 0) = key_tmp_mem.range(7, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_key_8, "%s\n", (key_8_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_key_8, tvin_key_8);
		}

		tcl_file.set_num(1, &tcl_file.key_8_depth);
		sprintf(tvin_key_8, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_key_8, tvin_key_8);

		// release memory allocation
		delete [] key_8_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_key_9, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_key_9, tvin_key_9);

		sc_bv<8>* key_9_tvin_wrapc_buffer = new sc_bv<8>[1];

		// RTL Name: key_9
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: key(7, 0)
				{
					// carray: (9) => (9) @ (2)
					for (int i_0 = 9; i_0 <= 9; i_0 += 2)
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
							key_9_tvin_wrapc_buffer[hls_map_index].range(7, 0) = key_tmp_mem.range(7, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_key_9, "%s\n", (key_9_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_key_9, tvin_key_9);
		}

		tcl_file.set_num(1, &tcl_file.key_9_depth);
		sprintf(tvin_key_9, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_key_9, tvin_key_9);

		// release memory allocation
		delete [] key_9_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_key_10, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_key_10, tvin_key_10);

		sc_bv<8>* key_10_tvin_wrapc_buffer = new sc_bv<8>[1];

		// RTL Name: key_10
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: key(7, 0)
				{
					// carray: (10) => (10) @ (2)
					for (int i_0 = 10; i_0 <= 10; i_0 += 2)
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
							key_10_tvin_wrapc_buffer[hls_map_index].range(7, 0) = key_tmp_mem.range(7, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_key_10, "%s\n", (key_10_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_key_10, tvin_key_10);
		}

		tcl_file.set_num(1, &tcl_file.key_10_depth);
		sprintf(tvin_key_10, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_key_10, tvin_key_10);

		// release memory allocation
		delete [] key_10_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_key_11, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_key_11, tvin_key_11);

		sc_bv<8>* key_11_tvin_wrapc_buffer = new sc_bv<8>[1];

		// RTL Name: key_11
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: key(7, 0)
				{
					// carray: (11) => (11) @ (2)
					for (int i_0 = 11; i_0 <= 11; i_0 += 2)
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
							key_11_tvin_wrapc_buffer[hls_map_index].range(7, 0) = key_tmp_mem.range(7, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_key_11, "%s\n", (key_11_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_key_11, tvin_key_11);
		}

		tcl_file.set_num(1, &tcl_file.key_11_depth);
		sprintf(tvin_key_11, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_key_11, tvin_key_11);

		// release memory allocation
		delete [] key_11_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_key_12, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_key_12, tvin_key_12);

		sc_bv<8>* key_12_tvin_wrapc_buffer = new sc_bv<8>[1];

		// RTL Name: key_12
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: key(7, 0)
				{
					// carray: (12) => (12) @ (2)
					for (int i_0 = 12; i_0 <= 12; i_0 += 2)
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
							key_12_tvin_wrapc_buffer[hls_map_index].range(7, 0) = key_tmp_mem.range(7, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_key_12, "%s\n", (key_12_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_key_12, tvin_key_12);
		}

		tcl_file.set_num(1, &tcl_file.key_12_depth);
		sprintf(tvin_key_12, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_key_12, tvin_key_12);

		// release memory allocation
		delete [] key_12_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_key_13, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_key_13, tvin_key_13);

		sc_bv<8>* key_13_tvin_wrapc_buffer = new sc_bv<8>[1];

		// RTL Name: key_13
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: key(7, 0)
				{
					// carray: (13) => (13) @ (2)
					for (int i_0 = 13; i_0 <= 13; i_0 += 2)
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
							key_13_tvin_wrapc_buffer[hls_map_index].range(7, 0) = key_tmp_mem.range(7, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_key_13, "%s\n", (key_13_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_key_13, tvin_key_13);
		}

		tcl_file.set_num(1, &tcl_file.key_13_depth);
		sprintf(tvin_key_13, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_key_13, tvin_key_13);

		// release memory allocation
		delete [] key_13_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_key_14, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_key_14, tvin_key_14);

		sc_bv<8>* key_14_tvin_wrapc_buffer = new sc_bv<8>[1];

		// RTL Name: key_14
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: key(7, 0)
				{
					// carray: (14) => (14) @ (2)
					for (int i_0 = 14; i_0 <= 14; i_0 += 2)
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
							key_14_tvin_wrapc_buffer[hls_map_index].range(7, 0) = key_tmp_mem.range(7, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_key_14, "%s\n", (key_14_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_key_14, tvin_key_14);
		}

		tcl_file.set_num(1, &tcl_file.key_14_depth);
		sprintf(tvin_key_14, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_key_14, tvin_key_14);

		// release memory allocation
		delete [] key_14_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_key_15, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_key_15, tvin_key_15);

		sc_bv<8>* key_15_tvin_wrapc_buffer = new sc_bv<8>[1];

		// RTL Name: key_15
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: key(7, 0)
				{
					// carray: (15) => (15) @ (2)
					for (int i_0 = 15; i_0 <= 15; i_0 += 2)
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
							key_15_tvin_wrapc_buffer[hls_map_index].range(7, 0) = key_tmp_mem.range(7, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_key_15, "%s\n", (key_15_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_key_15, tvin_key_15);
		}

		tcl_file.set_num(1, &tcl_file.key_15_depth);
		sprintf(tvin_key_15, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_key_15, tvin_key_15);

		// release memory allocation
		delete [] key_15_tvin_wrapc_buffer;

// [call_c_dut] ---------->

		CodeState = CALL_C_DUT;
		decrypt_dut(input, output, key);

		CodeState = DUMP_OUTPUTS;

		// [[transaction]]
		sprintf(tvout_output_0, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_output_0, tvout_output_0);

		sc_bv<8>* output_0_tvout_wrapc_buffer = new sc_bv<8>[1];

		// RTL Name: output_0
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: output(7, 0)
				{
					// carray: (0) => (0) @ (2)
					for (int i_0 = 0; i_0 <= 0; i_0 += 2)
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
							output_0_tvout_wrapc_buffer[hls_map_index].range(7, 0) = output_tmp_mem.range(7, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvout_output_0, "%s\n", (output_0_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_output_0, tvout_output_0);
		}

		tcl_file.set_num(1, &tcl_file.output_0_depth);
		sprintf(tvout_output_0, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_output_0, tvout_output_0);

		// release memory allocation
		delete [] output_0_tvout_wrapc_buffer;

		// [[transaction]]
		sprintf(tvout_output_1, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_output_1, tvout_output_1);

		sc_bv<8>* output_1_tvout_wrapc_buffer = new sc_bv<8>[1];

		// RTL Name: output_1
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: output(7, 0)
				{
					// carray: (1) => (1) @ (2)
					for (int i_0 = 1; i_0 <= 1; i_0 += 2)
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
							output_1_tvout_wrapc_buffer[hls_map_index].range(7, 0) = output_tmp_mem.range(7, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvout_output_1, "%s\n", (output_1_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_output_1, tvout_output_1);
		}

		tcl_file.set_num(1, &tcl_file.output_1_depth);
		sprintf(tvout_output_1, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_output_1, tvout_output_1);

		// release memory allocation
		delete [] output_1_tvout_wrapc_buffer;

		// [[transaction]]
		sprintf(tvout_output_2, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_output_2, tvout_output_2);

		sc_bv<8>* output_2_tvout_wrapc_buffer = new sc_bv<8>[1];

		// RTL Name: output_2
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: output(7, 0)
				{
					// carray: (2) => (2) @ (2)
					for (int i_0 = 2; i_0 <= 2; i_0 += 2)
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
							output_2_tvout_wrapc_buffer[hls_map_index].range(7, 0) = output_tmp_mem.range(7, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvout_output_2, "%s\n", (output_2_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_output_2, tvout_output_2);
		}

		tcl_file.set_num(1, &tcl_file.output_2_depth);
		sprintf(tvout_output_2, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_output_2, tvout_output_2);

		// release memory allocation
		delete [] output_2_tvout_wrapc_buffer;

		// [[transaction]]
		sprintf(tvout_output_3, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_output_3, tvout_output_3);

		sc_bv<8>* output_3_tvout_wrapc_buffer = new sc_bv<8>[1];

		// RTL Name: output_3
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: output(7, 0)
				{
					// carray: (3) => (3) @ (2)
					for (int i_0 = 3; i_0 <= 3; i_0 += 2)
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
							output_3_tvout_wrapc_buffer[hls_map_index].range(7, 0) = output_tmp_mem.range(7, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvout_output_3, "%s\n", (output_3_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_output_3, tvout_output_3);
		}

		tcl_file.set_num(1, &tcl_file.output_3_depth);
		sprintf(tvout_output_3, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_output_3, tvout_output_3);

		// release memory allocation
		delete [] output_3_tvout_wrapc_buffer;

		// [[transaction]]
		sprintf(tvout_output_4, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_output_4, tvout_output_4);

		sc_bv<8>* output_4_tvout_wrapc_buffer = new sc_bv<8>[1];

		// RTL Name: output_4
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: output(7, 0)
				{
					// carray: (4) => (4) @ (2)
					for (int i_0 = 4; i_0 <= 4; i_0 += 2)
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
							output_4_tvout_wrapc_buffer[hls_map_index].range(7, 0) = output_tmp_mem.range(7, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvout_output_4, "%s\n", (output_4_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_output_4, tvout_output_4);
		}

		tcl_file.set_num(1, &tcl_file.output_4_depth);
		sprintf(tvout_output_4, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_output_4, tvout_output_4);

		// release memory allocation
		delete [] output_4_tvout_wrapc_buffer;

		// [[transaction]]
		sprintf(tvout_output_5, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_output_5, tvout_output_5);

		sc_bv<8>* output_5_tvout_wrapc_buffer = new sc_bv<8>[1];

		// RTL Name: output_5
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: output(7, 0)
				{
					// carray: (5) => (5) @ (2)
					for (int i_0 = 5; i_0 <= 5; i_0 += 2)
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
							output_5_tvout_wrapc_buffer[hls_map_index].range(7, 0) = output_tmp_mem.range(7, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvout_output_5, "%s\n", (output_5_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_output_5, tvout_output_5);
		}

		tcl_file.set_num(1, &tcl_file.output_5_depth);
		sprintf(tvout_output_5, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_output_5, tvout_output_5);

		// release memory allocation
		delete [] output_5_tvout_wrapc_buffer;

		// [[transaction]]
		sprintf(tvout_output_6, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_output_6, tvout_output_6);

		sc_bv<8>* output_6_tvout_wrapc_buffer = new sc_bv<8>[1];

		// RTL Name: output_6
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: output(7, 0)
				{
					// carray: (6) => (6) @ (2)
					for (int i_0 = 6; i_0 <= 6; i_0 += 2)
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
							output_6_tvout_wrapc_buffer[hls_map_index].range(7, 0) = output_tmp_mem.range(7, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvout_output_6, "%s\n", (output_6_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_output_6, tvout_output_6);
		}

		tcl_file.set_num(1, &tcl_file.output_6_depth);
		sprintf(tvout_output_6, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_output_6, tvout_output_6);

		// release memory allocation
		delete [] output_6_tvout_wrapc_buffer;

		// [[transaction]]
		sprintf(tvout_output_7, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_output_7, tvout_output_7);

		sc_bv<8>* output_7_tvout_wrapc_buffer = new sc_bv<8>[1];

		// RTL Name: output_7
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: output(7, 0)
				{
					// carray: (7) => (7) @ (2)
					for (int i_0 = 7; i_0 <= 7; i_0 += 2)
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
							output_7_tvout_wrapc_buffer[hls_map_index].range(7, 0) = output_tmp_mem.range(7, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvout_output_7, "%s\n", (output_7_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_output_7, tvout_output_7);
		}

		tcl_file.set_num(1, &tcl_file.output_7_depth);
		sprintf(tvout_output_7, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_output_7, tvout_output_7);

		// release memory allocation
		delete [] output_7_tvout_wrapc_buffer;

		// [[transaction]]
		sprintf(tvout_output_8, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_output_8, tvout_output_8);

		sc_bv<8>* output_8_tvout_wrapc_buffer = new sc_bv<8>[1];

		// RTL Name: output_8
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: output(7, 0)
				{
					// carray: (8) => (8) @ (2)
					for (int i_0 = 8; i_0 <= 8; i_0 += 2)
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
							output_8_tvout_wrapc_buffer[hls_map_index].range(7, 0) = output_tmp_mem.range(7, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvout_output_8, "%s\n", (output_8_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_output_8, tvout_output_8);
		}

		tcl_file.set_num(1, &tcl_file.output_8_depth);
		sprintf(tvout_output_8, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_output_8, tvout_output_8);

		// release memory allocation
		delete [] output_8_tvout_wrapc_buffer;

		// [[transaction]]
		sprintf(tvout_output_9, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_output_9, tvout_output_9);

		sc_bv<8>* output_9_tvout_wrapc_buffer = new sc_bv<8>[1];

		// RTL Name: output_9
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: output(7, 0)
				{
					// carray: (9) => (9) @ (2)
					for (int i_0 = 9; i_0 <= 9; i_0 += 2)
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
							output_9_tvout_wrapc_buffer[hls_map_index].range(7, 0) = output_tmp_mem.range(7, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvout_output_9, "%s\n", (output_9_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_output_9, tvout_output_9);
		}

		tcl_file.set_num(1, &tcl_file.output_9_depth);
		sprintf(tvout_output_9, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_output_9, tvout_output_9);

		// release memory allocation
		delete [] output_9_tvout_wrapc_buffer;

		// [[transaction]]
		sprintf(tvout_output_10, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_output_10, tvout_output_10);

		sc_bv<8>* output_10_tvout_wrapc_buffer = new sc_bv<8>[1];

		// RTL Name: output_10
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: output(7, 0)
				{
					// carray: (10) => (10) @ (2)
					for (int i_0 = 10; i_0 <= 10; i_0 += 2)
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
							output_10_tvout_wrapc_buffer[hls_map_index].range(7, 0) = output_tmp_mem.range(7, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvout_output_10, "%s\n", (output_10_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_output_10, tvout_output_10);
		}

		tcl_file.set_num(1, &tcl_file.output_10_depth);
		sprintf(tvout_output_10, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_output_10, tvout_output_10);

		// release memory allocation
		delete [] output_10_tvout_wrapc_buffer;

		// [[transaction]]
		sprintf(tvout_output_11, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_output_11, tvout_output_11);

		sc_bv<8>* output_11_tvout_wrapc_buffer = new sc_bv<8>[1];

		// RTL Name: output_11
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: output(7, 0)
				{
					// carray: (11) => (11) @ (2)
					for (int i_0 = 11; i_0 <= 11; i_0 += 2)
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
							output_11_tvout_wrapc_buffer[hls_map_index].range(7, 0) = output_tmp_mem.range(7, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvout_output_11, "%s\n", (output_11_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_output_11, tvout_output_11);
		}

		tcl_file.set_num(1, &tcl_file.output_11_depth);
		sprintf(tvout_output_11, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_output_11, tvout_output_11);

		// release memory allocation
		delete [] output_11_tvout_wrapc_buffer;

		// [[transaction]]
		sprintf(tvout_output_12, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_output_12, tvout_output_12);

		sc_bv<8>* output_12_tvout_wrapc_buffer = new sc_bv<8>[1];

		// RTL Name: output_12
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: output(7, 0)
				{
					// carray: (12) => (12) @ (2)
					for (int i_0 = 12; i_0 <= 12; i_0 += 2)
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
							output_12_tvout_wrapc_buffer[hls_map_index].range(7, 0) = output_tmp_mem.range(7, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvout_output_12, "%s\n", (output_12_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_output_12, tvout_output_12);
		}

		tcl_file.set_num(1, &tcl_file.output_12_depth);
		sprintf(tvout_output_12, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_output_12, tvout_output_12);

		// release memory allocation
		delete [] output_12_tvout_wrapc_buffer;

		// [[transaction]]
		sprintf(tvout_output_13, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_output_13, tvout_output_13);

		sc_bv<8>* output_13_tvout_wrapc_buffer = new sc_bv<8>[1];

		// RTL Name: output_13
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: output(7, 0)
				{
					// carray: (13) => (13) @ (2)
					for (int i_0 = 13; i_0 <= 13; i_0 += 2)
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
							output_13_tvout_wrapc_buffer[hls_map_index].range(7, 0) = output_tmp_mem.range(7, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvout_output_13, "%s\n", (output_13_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_output_13, tvout_output_13);
		}

		tcl_file.set_num(1, &tcl_file.output_13_depth);
		sprintf(tvout_output_13, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_output_13, tvout_output_13);

		// release memory allocation
		delete [] output_13_tvout_wrapc_buffer;

		// [[transaction]]
		sprintf(tvout_output_14, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_output_14, tvout_output_14);

		sc_bv<8>* output_14_tvout_wrapc_buffer = new sc_bv<8>[1];

		// RTL Name: output_14
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: output(7, 0)
				{
					// carray: (14) => (14) @ (2)
					for (int i_0 = 14; i_0 <= 14; i_0 += 2)
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
							output_14_tvout_wrapc_buffer[hls_map_index].range(7, 0) = output_tmp_mem.range(7, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvout_output_14, "%s\n", (output_14_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_output_14, tvout_output_14);
		}

		tcl_file.set_num(1, &tcl_file.output_14_depth);
		sprintf(tvout_output_14, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_output_14, tvout_output_14);

		// release memory allocation
		delete [] output_14_tvout_wrapc_buffer;

		// [[transaction]]
		sprintf(tvout_output_15, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_output_15, tvout_output_15);

		sc_bv<8>* output_15_tvout_wrapc_buffer = new sc_bv<8>[1];

		// RTL Name: output_15
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: output(7, 0)
				{
					// carray: (15) => (15) @ (2)
					for (int i_0 = 15; i_0 <= 15; i_0 += 2)
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
							output_15_tvout_wrapc_buffer[hls_map_index].range(7, 0) = output_tmp_mem.range(7, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvout_output_15, "%s\n", (output_15_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_output_15, tvout_output_15);
		}

		tcl_file.set_num(1, &tcl_file.output_15_depth);
		sprintf(tvout_output_15, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_output_15, tvout_output_15);

		// release memory allocation
		delete [] output_15_tvout_wrapc_buffer;

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
		// release memory allocation: "output_0"
		delete [] tvout_output_0;
		// release memory allocation: "output_1"
		delete [] tvout_output_1;
		// release memory allocation: "output_2"
		delete [] tvout_output_2;
		// release memory allocation: "output_3"
		delete [] tvout_output_3;
		// release memory allocation: "output_4"
		delete [] tvout_output_4;
		// release memory allocation: "output_5"
		delete [] tvout_output_5;
		// release memory allocation: "output_6"
		delete [] tvout_output_6;
		// release memory allocation: "output_7"
		delete [] tvout_output_7;
		// release memory allocation: "output_8"
		delete [] tvout_output_8;
		// release memory allocation: "output_9"
		delete [] tvout_output_9;
		// release memory allocation: "output_10"
		delete [] tvout_output_10;
		// release memory allocation: "output_11"
		delete [] tvout_output_11;
		// release memory allocation: "output_12"
		delete [] tvout_output_12;
		// release memory allocation: "output_13"
		delete [] tvout_output_13;
		// release memory allocation: "output_14"
		delete [] tvout_output_14;
		// release memory allocation: "output_15"
		delete [] tvout_output_15;
		// release memory allocation: "key_0"
		delete [] tvin_key_0;
		// release memory allocation: "key_1"
		delete [] tvin_key_1;
		// release memory allocation: "key_2"
		delete [] tvin_key_2;
		// release memory allocation: "key_3"
		delete [] tvin_key_3;
		// release memory allocation: "key_4"
		delete [] tvin_key_4;
		// release memory allocation: "key_5"
		delete [] tvin_key_5;
		// release memory allocation: "key_6"
		delete [] tvin_key_6;
		// release memory allocation: "key_7"
		delete [] tvin_key_7;
		// release memory allocation: "key_8"
		delete [] tvin_key_8;
		// release memory allocation: "key_9"
		delete [] tvin_key_9;
		// release memory allocation: "key_10"
		delete [] tvin_key_10;
		// release memory allocation: "key_11"
		delete [] tvin_key_11;
		// release memory allocation: "key_12"
		delete [] tvin_key_12;
		// release memory allocation: "key_13"
		delete [] tvin_key_13;
		// release memory allocation: "key_14"
		delete [] tvin_key_14;
		// release memory allocation: "key_15"
		delete [] tvin_key_15;

		AESL_transaction++;

		tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
	}
}


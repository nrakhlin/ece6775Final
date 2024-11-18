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


// wrapc file define: "set_key"
#define AUTOTB_TVIN_set_key  "../tv/cdatafile/c.Blowfish_SetKey_Encrypt.autotvin_set_key.dat"
// wrapc file define: "key"
#define AUTOTB_TVIN_key  "../tv/cdatafile/c.Blowfish_SetKey_Encrypt.autotvin_key.dat"
// wrapc file define: "key_size"
#define AUTOTB_TVIN_key_size  "../tv/cdatafile/c.Blowfish_SetKey_Encrypt.autotvin_key_size.dat"
// wrapc file define: "plaintext"
#define AUTOTB_TVIN_plaintext  "../tv/cdatafile/c.Blowfish_SetKey_Encrypt.autotvin_plaintext.dat"
// wrapc file define: "ciphertext"
#define AUTOTB_TVOUT_ciphertext  "../tv/cdatafile/c.Blowfish_SetKey_Encrypt.autotvout_ciphertext.dat"
#define AUTOTB_TVIN_ciphertext  "../tv/cdatafile/c.Blowfish_SetKey_Encrypt.autotvin_ciphertext.dat"
// wrapc file define: "P"
#define AUTOTB_TVIN_P  "../tv/cdatafile/c.Blowfish_SetKey_Encrypt.autotvin_P.dat"
#define AUTOTB_TVOUT_P  "../tv/cdatafile/c.Blowfish_SetKey_Encrypt.autotvout_P.dat"
// wrapc file define: "S"
#define AUTOTB_TVIN_S  "../tv/cdatafile/c.Blowfish_SetKey_Encrypt.autotvin_S.dat"
#define AUTOTB_TVOUT_S  "../tv/cdatafile/c.Blowfish_SetKey_Encrypt.autotvout_S.dat"

#define INTER_TCL  "../tv/cdatafile/ref.tcl"

// tvout file define: "ciphertext"
#define AUTOTB_TVOUT_PC_ciphertext  "../tv/rtldatafile/rtl.Blowfish_SetKey_Encrypt.autotvout_ciphertext.dat"
// tvout file define: "P"
#define AUTOTB_TVOUT_PC_P  "../tv/rtldatafile/rtl.Blowfish_SetKey_Encrypt.autotvout_P.dat"
// tvout file define: "S"
#define AUTOTB_TVOUT_PC_S  "../tv/rtldatafile/rtl.Blowfish_SetKey_Encrypt.autotvout_S.dat"

class INTER_TCL_FILE {
	public:
		INTER_TCL_FILE(const char* name) {
			mName = name;
			set_key_depth = 0;
			key_depth = 0;
			key_size_depth = 0;
			plaintext_depth = 0;
			ciphertext_depth = 0;
			P_depth = 0;
			S_depth = 0;
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
			total_list << "{set_key " << set_key_depth << "}\n";
			total_list << "{key " << key_depth << "}\n";
			total_list << "{key_size " << key_size_depth << "}\n";
			total_list << "{plaintext " << plaintext_depth << "}\n";
			total_list << "{ciphertext " << ciphertext_depth << "}\n";
			total_list << "{P " << P_depth << "}\n";
			total_list << "{S " << S_depth << "}\n";
			return total_list.str();
		}

		void set_num (int num , int* class_num) {
			(*class_num) = (*class_num) > num ? (*class_num) : num;
		}
	public:
		int set_key_depth;
		int key_depth;
		int key_size_depth;
		int plaintext_depth;
		int ciphertext_depth;
		int P_depth;
		int S_depth;
		int trans_num;

	private:
		ofstream mFile;
		const char* mName;
};

extern void Blowfish_SetKey_Encrypt (
bool set_key,
unsigned char key[56],
long unsigned int key_size,
const unsigned char plaintext[9],
unsigned char ciphertext[9],
unsigned int P[18],
unsigned int S[4][256]);

void AESL_WRAP_Blowfish_SetKey_Encrypt (
bool set_key,
unsigned char key[56],
long unsigned int key_size,
const unsigned char plaintext[9],
unsigned char ciphertext[9],
unsigned int P[18],
unsigned int S[4][256])
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


		// output port post check: "ciphertext"
		aesl_fh.read(AUTOTB_TVOUT_PC_ciphertext, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_ciphertext, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_ciphertext, AESL_token); // data

			sc_bv<8> *ciphertext_pc_buffer = new sc_bv<8>[9];
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'ciphertext', possible cause: There are uninitialized variables in the C design." << endl;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'ciphertext', possible cause: There are uninitialized variables in the C design." << endl;
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
					ciphertext_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_ciphertext, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_ciphertext))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: ciphertext
				{
					// bitslice(7, 0)
					// {
						// celement: ciphertext(7, 0)
						// {
							sc_lv<8>* ciphertext_lv0_0_8_1 = new sc_lv<8>[9];
						// }
					// }

					// bitslice(7, 0)
					{
						int hls_map_index = 0;
						// celement: ciphertext(7, 0)
						{
							// carray: (0) => (8) @ (1)
							for (int i_0 = 0; i_0 <= 8; i_0 += 1)
							{
								if (&(ciphertext[0]) != NULL) // check the null address if the c port is array or others
								{
									ciphertext_lv0_0_8_1[hls_map_index].range(7, 0) = sc_bv<8>(ciphertext_pc_buffer[hls_map_index].range(7, 0));
									hls_map_index++;
								}
							}
						}
					}

					// bitslice(7, 0)
					{
						int hls_map_index = 0;
						// celement: ciphertext(7, 0)
						{
							// carray: (0) => (8) @ (1)
							for (int i_0 = 0; i_0 <= 8; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : ciphertext[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : ciphertext[0]
								// output_left_conversion : ciphertext[i_0]
								// output_type_conversion : (ciphertext_lv0_0_8_1[hls_map_index]).to_uint64()
								if (&(ciphertext[0]) != NULL) // check the null address if the c port is array or others
								{
									ciphertext[i_0] = (ciphertext_lv0_0_8_1[hls_map_index]).to_uint64();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] ciphertext_pc_buffer;
		}

		// output port post check: "P"
		aesl_fh.read(AUTOTB_TVOUT_PC_P, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_P, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_P, AESL_token); // data

			sc_bv<32> *P_pc_buffer = new sc_bv<32>[18];
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'P', possible cause: There are uninitialized variables in the C design." << endl;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'P', possible cause: There are uninitialized variables in the C design." << endl;
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
					P_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_P, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_P))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: P
				{
					// bitslice(31, 0)
					// {
						// celement: P(31, 0)
						// {
							sc_lv<32>* P_lv0_0_17_1 = new sc_lv<32>[18];
						// }
					// }

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: P(31, 0)
						{
							// carray: (0) => (17) @ (1)
							for (int i_0 = 0; i_0 <= 17; i_0 += 1)
							{
								if (&(P[0]) != NULL) // check the null address if the c port is array or others
								{
									P_lv0_0_17_1[hls_map_index].range(31, 0) = sc_bv<32>(P_pc_buffer[hls_map_index].range(31, 0));
									hls_map_index++;
								}
							}
						}
					}

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: P(31, 0)
						{
							// carray: (0) => (17) @ (1)
							for (int i_0 = 0; i_0 <= 17; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : P[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : P[0]
								// output_left_conversion : P[i_0]
								// output_type_conversion : (P_lv0_0_17_1[hls_map_index]).to_uint64()
								if (&(P[0]) != NULL) // check the null address if the c port is array or others
								{
									P[i_0] = (P_lv0_0_17_1[hls_map_index]).to_uint64();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] P_pc_buffer;
		}

		// output port post check: "S"
		aesl_fh.read(AUTOTB_TVOUT_PC_S, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_S, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_S, AESL_token); // data

			sc_bv<32> *S_pc_buffer = new sc_bv<32>[1024];
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'S', possible cause: There are uninitialized variables in the C design." << endl;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'S', possible cause: There are uninitialized variables in the C design." << endl;
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
					S_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_S, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_S))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: S
				{
					// bitslice(31, 0)
					// {
						// celement: S(31, 0)
						// {
							sc_lv<32>* S_lv0_0_3_1_lv1_0_255_1 = new sc_lv<32>[1024];
						// }
					// }

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: S(31, 0)
						{
							// carray: (0) => (3) @ (1)
							for (int i_0 = 0; i_0 <= 3; i_0 += 1)
							{
								// carray: (0) => (255) @ (1)
								for (int i_1 = 0; i_1 <= 255; i_1 += 1)
								{
									if (&(S[0][0]) != NULL) // check the null address if the c port is array or others
									{
										S_lv0_0_3_1_lv1_0_255_1[hls_map_index].range(31, 0) = sc_bv<32>(S_pc_buffer[hls_map_index].range(31, 0));
										hls_map_index++;
									}
								}
							}
						}
					}

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: S(31, 0)
						{
							// carray: (0) => (3) @ (1)
							for (int i_0 = 0; i_0 <= 3; i_0 += 1)
							{
								// carray: (0) => (255) @ (1)
								for (int i_1 = 0; i_1 <= 255; i_1 += 1)
								{
									// sub                    : i_0 i_1
									// ori_name               : S[i_0][i_1]
									// sub_1st_elem           : 0 0
									// ori_name_1st_elem      : S[0][0]
									// output_left_conversion : S[i_0][i_1]
									// output_type_conversion : (S_lv0_0_3_1_lv1_0_255_1[hls_map_index]).to_uint64()
									if (&(S[0][0]) != NULL) // check the null address if the c port is array or others
									{
										S[i_0][i_1] = (S_lv0_0_3_1_lv1_0_255_1[hls_map_index]).to_uint64();
										hls_map_index++;
									}
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] S_pc_buffer;
		}

		AESL_transaction_pc++;
	}
	else
	{
		CodeState = ENTER_WRAPC;
		static unsigned AESL_transaction;

		static AESL_FILE_HANDLER aesl_fh;

		// "set_key"
		char* tvin_set_key = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_set_key);

		// "key"
		char* tvin_key = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_key);

		// "key_size"
		char* tvin_key_size = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_key_size);

		// "plaintext"
		char* tvin_plaintext = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_plaintext);

		// "ciphertext"
		char* tvin_ciphertext = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_ciphertext);
		char* tvout_ciphertext = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_ciphertext);

		// "P"
		char* tvin_P = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_P);
		char* tvout_P = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_P);

		// "S"
		char* tvin_S = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_S);
		char* tvout_S = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_S);

		CodeState = DUMP_INPUTS;
		static INTER_TCL_FILE tcl_file(INTER_TCL);
		int leading_zero;

		// [[transaction]]
		sprintf(tvin_set_key, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_set_key, tvin_set_key);

		sc_bv<1> set_key_tvin_wrapc_buffer;

		// RTL Name: set_key
		{
			// bitslice(0, 0)
			{
				// celement: set_key(0, 0)
				{
					// carray: (0) => (0) @ (0)
					{
						// sub                   : 
						// ori_name              : set_key
						// sub_1st_elem          : 
						// ori_name_1st_elem     : set_key
						// regulate_c_name       : set_key
						// input_type_conversion : set_key
						if (&(set_key) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<1> set_key_tmp_mem;
							set_key_tmp_mem = set_key;
							set_key_tvin_wrapc_buffer.range(0, 0) = set_key_tmp_mem.range(0, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_set_key, "%s\n", (set_key_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_set_key, tvin_set_key);
		}

		tcl_file.set_num(1, &tcl_file.set_key_depth);
		sprintf(tvin_set_key, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_set_key, tvin_set_key);

		// [[transaction]]
		sprintf(tvin_key, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_key, tvin_key);

		sc_bv<8>* key_tvin_wrapc_buffer = new sc_bv<8>[56];

		// RTL Name: key
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: key(7, 0)
				{
					// carray: (0) => (55) @ (1)
					for (int i_0 = 0; i_0 <= 55; i_0 += 1)
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
		for (int i = 0; i < 56; i++)
		{
			sprintf(tvin_key, "%s\n", (key_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_key, tvin_key);
		}

		tcl_file.set_num(56, &tcl_file.key_depth);
		sprintf(tvin_key, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_key, tvin_key);

		// release memory allocation
		delete [] key_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_key_size, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_key_size, tvin_key_size);

		sc_bv<64> key_size_tvin_wrapc_buffer;

		// RTL Name: key_size
		{
			// bitslice(63, 0)
			{
				// celement: key_size(63, 0)
				{
					// carray: (0) => (0) @ (0)
					{
						// sub                   : 
						// ori_name              : key_size
						// sub_1st_elem          : 
						// ori_name_1st_elem     : key_size
						// regulate_c_name       : key_size
						// input_type_conversion : key_size
						if (&(key_size) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<64> key_size_tmp_mem;
							key_size_tmp_mem = key_size;
							key_size_tvin_wrapc_buffer.range(63, 0) = key_size_tmp_mem.range(63, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_key_size, "%s\n", (key_size_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_key_size, tvin_key_size);
		}

		tcl_file.set_num(1, &tcl_file.key_size_depth);
		sprintf(tvin_key_size, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_key_size, tvin_key_size);

		// [[transaction]]
		sprintf(tvin_plaintext, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_plaintext, tvin_plaintext);

		sc_bv<8>* plaintext_tvin_wrapc_buffer = new sc_bv<8>[9];

		// RTL Name: plaintext
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: plaintext(7, 0)
				{
					// carray: (0) => (8) @ (1)
					for (int i_0 = 0; i_0 <= 8; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : plaintext[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : plaintext[0]
						// regulate_c_name       : plaintext
						// input_type_conversion : plaintext[i_0]
						if (&(plaintext[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<8> plaintext_tmp_mem;
							plaintext_tmp_mem = plaintext[i_0];
							plaintext_tvin_wrapc_buffer[hls_map_index].range(7, 0) = plaintext_tmp_mem.range(7, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 9; i++)
		{
			sprintf(tvin_plaintext, "%s\n", (plaintext_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_plaintext, tvin_plaintext);
		}

		tcl_file.set_num(9, &tcl_file.plaintext_depth);
		sprintf(tvin_plaintext, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_plaintext, tvin_plaintext);

		// release memory allocation
		delete [] plaintext_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_ciphertext, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_ciphertext, tvin_ciphertext);

		sc_bv<8>* ciphertext_tvin_wrapc_buffer = new sc_bv<8>[9];

		// RTL Name: ciphertext
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: ciphertext(7, 0)
				{
					// carray: (0) => (8) @ (1)
					for (int i_0 = 0; i_0 <= 8; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : ciphertext[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : ciphertext[0]
						// regulate_c_name       : ciphertext
						// input_type_conversion : ciphertext[i_0]
						if (&(ciphertext[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<8> ciphertext_tmp_mem;
							ciphertext_tmp_mem = ciphertext[i_0];
							ciphertext_tvin_wrapc_buffer[hls_map_index].range(7, 0) = ciphertext_tmp_mem.range(7, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 9; i++)
		{
			sprintf(tvin_ciphertext, "%s\n", (ciphertext_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_ciphertext, tvin_ciphertext);
		}

		tcl_file.set_num(9, &tcl_file.ciphertext_depth);
		sprintf(tvin_ciphertext, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_ciphertext, tvin_ciphertext);

		// release memory allocation
		delete [] ciphertext_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_P, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_P, tvin_P);

		sc_bv<32>* P_tvin_wrapc_buffer = new sc_bv<32>[18];

		// RTL Name: P
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: P(31, 0)
				{
					// carray: (0) => (17) @ (1)
					for (int i_0 = 0; i_0 <= 17; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : P[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : P[0]
						// regulate_c_name       : P
						// input_type_conversion : P[i_0]
						if (&(P[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> P_tmp_mem;
							P_tmp_mem = P[i_0];
							P_tvin_wrapc_buffer[hls_map_index].range(31, 0) = P_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 18; i++)
		{
			sprintf(tvin_P, "%s\n", (P_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_P, tvin_P);
		}

		tcl_file.set_num(18, &tcl_file.P_depth);
		sprintf(tvin_P, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_P, tvin_P);

		// release memory allocation
		delete [] P_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_S, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_S, tvin_S);

		sc_bv<32>* S_tvin_wrapc_buffer = new sc_bv<32>[1024];

		// RTL Name: S
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: S(31, 0)
				{
					// carray: (0) => (3) @ (1)
					for (int i_0 = 0; i_0 <= 3; i_0 += 1)
					{
						// carray: (0) => (255) @ (1)
						for (int i_1 = 0; i_1 <= 255; i_1 += 1)
						{
							// sub                   : i_0 i_1
							// ori_name              : S[i_0][i_1]
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : S[0][0]
							// regulate_c_name       : S
							// input_type_conversion : S[i_0][i_1]
							if (&(S[0][0]) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<32> S_tmp_mem;
								S_tmp_mem = S[i_0][i_1];
								S_tvin_wrapc_buffer[hls_map_index].range(31, 0) = S_tmp_mem.range(31, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1024; i++)
		{
			sprintf(tvin_S, "%s\n", (S_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_S, tvin_S);
		}

		tcl_file.set_num(1024, &tcl_file.S_depth);
		sprintf(tvin_S, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_S, tvin_S);

		// release memory allocation
		delete [] S_tvin_wrapc_buffer;

// [call_c_dut] ---------->

		CodeState = CALL_C_DUT;
		Blowfish_SetKey_Encrypt(set_key, key, key_size, plaintext, ciphertext, P, S);

		CodeState = DUMP_OUTPUTS;

		// [[transaction]]
		sprintf(tvout_ciphertext, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_ciphertext, tvout_ciphertext);

		sc_bv<8>* ciphertext_tvout_wrapc_buffer = new sc_bv<8>[9];

		// RTL Name: ciphertext
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: ciphertext(7, 0)
				{
					// carray: (0) => (8) @ (1)
					for (int i_0 = 0; i_0 <= 8; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : ciphertext[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : ciphertext[0]
						// regulate_c_name       : ciphertext
						// input_type_conversion : ciphertext[i_0]
						if (&(ciphertext[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<8> ciphertext_tmp_mem;
							ciphertext_tmp_mem = ciphertext[i_0];
							ciphertext_tvout_wrapc_buffer[hls_map_index].range(7, 0) = ciphertext_tmp_mem.range(7, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 9; i++)
		{
			sprintf(tvout_ciphertext, "%s\n", (ciphertext_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_ciphertext, tvout_ciphertext);
		}

		tcl_file.set_num(9, &tcl_file.ciphertext_depth);
		sprintf(tvout_ciphertext, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_ciphertext, tvout_ciphertext);

		// release memory allocation
		delete [] ciphertext_tvout_wrapc_buffer;

		// [[transaction]]
		sprintf(tvout_P, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_P, tvout_P);

		sc_bv<32>* P_tvout_wrapc_buffer = new sc_bv<32>[18];

		// RTL Name: P
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: P(31, 0)
				{
					// carray: (0) => (17) @ (1)
					for (int i_0 = 0; i_0 <= 17; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : P[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : P[0]
						// regulate_c_name       : P
						// input_type_conversion : P[i_0]
						if (&(P[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> P_tmp_mem;
							P_tmp_mem = P[i_0];
							P_tvout_wrapc_buffer[hls_map_index].range(31, 0) = P_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 18; i++)
		{
			sprintf(tvout_P, "%s\n", (P_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_P, tvout_P);
		}

		tcl_file.set_num(18, &tcl_file.P_depth);
		sprintf(tvout_P, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_P, tvout_P);

		// release memory allocation
		delete [] P_tvout_wrapc_buffer;

		// [[transaction]]
		sprintf(tvout_S, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_S, tvout_S);

		sc_bv<32>* S_tvout_wrapc_buffer = new sc_bv<32>[1024];

		// RTL Name: S
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: S(31, 0)
				{
					// carray: (0) => (3) @ (1)
					for (int i_0 = 0; i_0 <= 3; i_0 += 1)
					{
						// carray: (0) => (255) @ (1)
						for (int i_1 = 0; i_1 <= 255; i_1 += 1)
						{
							// sub                   : i_0 i_1
							// ori_name              : S[i_0][i_1]
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : S[0][0]
							// regulate_c_name       : S
							// input_type_conversion : S[i_0][i_1]
							if (&(S[0][0]) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<32> S_tmp_mem;
								S_tmp_mem = S[i_0][i_1];
								S_tvout_wrapc_buffer[hls_map_index].range(31, 0) = S_tmp_mem.range(31, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1024; i++)
		{
			sprintf(tvout_S, "%s\n", (S_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_S, tvout_S);
		}

		tcl_file.set_num(1024, &tcl_file.S_depth);
		sprintf(tvout_S, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_S, tvout_S);

		// release memory allocation
		delete [] S_tvout_wrapc_buffer;

		CodeState = DELETE_CHAR_BUFFERS;
		// release memory allocation: "set_key"
		delete [] tvin_set_key;
		// release memory allocation: "key"
		delete [] tvin_key;
		// release memory allocation: "key_size"
		delete [] tvin_key_size;
		// release memory allocation: "plaintext"
		delete [] tvin_plaintext;
		// release memory allocation: "ciphertext"
		delete [] tvout_ciphertext;
		delete [] tvin_ciphertext;
		// release memory allocation: "P"
		delete [] tvin_P;
		delete [] tvout_P;
		// release memory allocation: "S"
		delete [] tvin_S;
		delete [] tvout_S;

		AESL_transaction++;

		tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
	}
}


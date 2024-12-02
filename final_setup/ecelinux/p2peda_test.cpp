//=========================================================================
// testbench.cpp
//=========================================================================
// @brief: testbench for k-nearest-neighbor digit recongnition application

#include <stdio.h>
#include <iostream>
#include <fstream>
#include <string>
#include <bitset>

#include <hls_stream.h>
#include "typedefs.h"
#include "p2peda.h"

struct received{
  std::string output_string;
  bool encrypt;
};
typedef struct received received_t;

bit128_t string_to_binary(std::string a){
  int len = a.length();
  bit128_t input_binary = 0;
  if (len > 16){
    std::cout << "ERROR: input word length:  " << len << std::endl;
  }
  else {
    for (int i = 0; i < len; i++){
      input_binary(8*i + 7, 8*i) = a[i];
    }
  }
  return input_binary;
}

std::string binary_to_string(bit128_t a){
  std::string output_string = "                ";
  for (int i = 0; i < 16; i++){
    output_string[i] = a(8*i + 7, 8*i);
  }
  return output_string;
}

bit3_t num_words_func(std::string a){
  int len = a.length();
  bit3_t num_words;
  switch(len){
    case 1:
    case 2:
    case 3:
      num_words = 1;
      break;
    case 4:
    case 5:
    case 6:
    case 7:
      num_words = 2;
      break;
    case 8:
    case 9:
    case 10:
      num_words = 3;
      break;
    case 11:
    case 12:
    case 13:
    case 14:
      num_words = 4;
      break;
    case 15:
    case 16:
      num_words = 5;
      break;
    default:
      num_words = 0;
  }
  return num_words;
}

void send_to_accelerator(hls::stream<bit32_t>* in_stream, hls::stream<bit32_t>* out_stream, std::string input_string, bool key, bool encrypt){
  bit128_t input_binary;
  bit32_t input_word;
  // std::cout << "send_to_accelerator " << std::endl;

  input_binary = string_to_binary(input_string);
  bit3_t num_words = num_words_func(input_string);

  for (int i = 0; i < num_words; i++) {
    input_word = 0;
    input_word(31,31) = key;
    input_word(30,30) = encrypt;
    input_word(29,29) = (num_words - 1 == i);
    if (i == 4){
      input_word(28,0) = input_binary(127, 116);
    }
    else {
      input_word(28,0) = input_binary(29*i + 28, 29*i);
    }
    // std::cout << std::hex << "Input word = " << input_word << std::endl;
    (*in_stream).write(input_word);
    // std::cout << "write: i = " << i << std::endl;
  }
  dut((*in_stream), (*out_stream));
}

received_t receive_from_accelerator(hls::stream<bit32_t>* out_stream){
  // receive
  bit128_t output_binary;
  bit32_t output_word;
  // std::cout << "receive_from_accelerator " << std::endl;
  bool reading = 1;
  int i = 0;

  while (reading) { 
    // std::cout << "read: i = " << i << std::endl;
    output_word = (*out_stream).read();
    // std::cout << std::hex << "Output word = " << output_word << std::endl;
    if (i == 4){
      output_binary(127, 116) = output_word(11,0);
    }
    else {
      output_binary(29*i + 28, 29*i) = output_word(28,0);
    }
    if (output_word(29,29)){
      reading = 0;
    }
    i++;
  }
  // std::cout << std::hex << "Output binary = " << output_binary << std::endl;
  std::string output_string = binary_to_string(output_binary);
  received_t received_inst;
  received_inst.output_string = output_string;
  received_inst.encrypt = output_word(30,30);
  return received_inst;
}

std::string test_encrypt(hls::stream<bit32_t>* p2peda_in, hls::stream<bit32_t>* p2peda_out, std::string input_string, bool key){
  received_t received_inst;
  std::cout << "Encrypt: " << std::endl;
  std::cout << "Input string = " << input_string << std::endl;
  send_to_accelerator(p2peda_in, p2peda_out, input_string, key, 1);
  received_inst = receive_from_accelerator(p2peda_out);
  std::cout << "Output string = " << received_inst.output_string << std::endl;
  return received_inst.output_string;
}

std::string test_decrypt(hls::stream<bit32_t>* p2peda_in, hls::stream<bit32_t>* p2peda_out, std::string input_string, bool key){
  received_t received_inst;
  std::cout << "Decrypt: " << std::endl;
  std::cout << "Input string = " << input_string << std::endl;
  send_to_accelerator(p2peda_in, p2peda_out, input_string, key, 0);
  received_inst = receive_from_accelerator(p2peda_out);
  std::cout << "Output string = " << received_inst.output_string << std::endl;
  return received_inst.output_string;
}

void test_loopback(hls::stream<bit32_t>* p2peda_in, hls::stream<bit32_t>* p2peda_out, std::string pt_input){
  std::string ciphertext = test_encrypt(p2peda_in, p2peda_out, pt_input, 0);
  std::string pt_output = test_decrypt(p2peda_in, p2peda_out, ciphertext, 0);
  assert (pt_input == pt_output.substr(0,pt_input.length()));
  std::cout << "\n==========================================" << std::endl;
}

//------------------------------------------------------------------------
// testbench
//------------------------------------------------------------------------
int main() {
  // HLS streams for communicating between CPU and FPGA
  hls::stream<bit32_t> p2peda_in;
  hls::stream<bit32_t> p2peda_out;

  test_loopback(&p2peda_in, &p2peda_out, "efg");
  test_loopback(&p2peda_in, &p2peda_out, "efghijkl");
  test_loopback(&p2peda_in, &p2peda_out, "efghijklmnopqrst");
  std::string cta = test_encrypt(&p2peda_in, &p2peda_out, "hello world", 0);
  std::string ctb = test_encrypt(&p2peda_in, &p2peda_out, "zhiru zhang", 0);
  test_decrypt(&p2peda_in, &p2peda_out, cta, 0);
  test_decrypt(&p2peda_in, &p2peda_out, ctb, 0);
  return 0;
}

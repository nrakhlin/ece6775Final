//=========================================================================
// testbench.cpp
//=========================================================================
// @brief: testbench for k-nearest-neighbor digit recongnition application

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>
#include <math.h>
#include <assert.h>

#include <iostream>
#include <fstream>
#include <string>
#include <bitset>

#include <hls_stream.h>
#include "typedefs.h"
#include "p2peda.h"
#include "timer.h"


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

void send_to_accelerator(int* fdw, int* fdr, std::string input_string, bool key, bool encrypt){
  bit128_t input_binary;
  bit32_t input_word;
  int nbytes;
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
    // (*in_stream).write(input_word);
    nbytes = write((*fdw), (void*)&input_word, sizeof(input_word));
    assert (nbytes == sizeof(input_word));

    // std::cout << "write: i = " << i << std::endl;
  }
  // dut((*in_stream), (*out_stream));
}

received_t receive_from_accelerator(int* fdr){
  // receive
  bit128_t output_binary;
  bit32_t output_word;
  int nbytes;
  // std::cout << "receive_from_accelerator " << std::endl;
  bool reading = 1;
  int i = 0;

  while (reading) { 
    // std::cout << "read: i = " << i << std::endl;
    // output_word = (*out_stream).read();
    nbytes = read((*fdr), (void*)&output_word, sizeof(output_word));
    assert (nbytes == sizeof(output_word));
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

std::string test_encrypt(int* fdw, int* fdr, std::string input_string, bool key){
  received_t received_inst;
  std::cout << "Encrypt: " << std::endl;
  std::cout << "Input string = " << input_string << std::endl;
  send_to_accelerator(fdw, fdr, input_string, key, 1);
  received_inst = receive_from_accelerator(fdr);
  std::cout << "Output string = " << received_inst.output_string << "\n" << std::endl;
  return received_inst.output_string;
}

std::string test_decrypt(int* fdw, int* fdr, std::string input_string, bool key){
  received_t received_inst;
  std::cout << "Decrypt: " << std::endl;
  std::cout << "Input string = " << input_string << std::endl;
  send_to_accelerator(fdw, fdr, input_string, key, 0);
  received_inst = receive_from_accelerator(fdr);
  std::cout << "Output string = " << received_inst.output_string << "\n" << std::endl;
  return received_inst.output_string;
}

std::string test_loopback(int* fdw, int* fdr, std::string pt_input){
  std::string ciphertext = test_encrypt(fdw, fdr, pt_input, 0);
  std::string pt_output = test_decrypt(fdw, fdr, ciphertext, 0);
  pt_output = pt_output.substr(0,pt_input.length());
  assert (pt_input == pt_output);
  std::cout << "==========================================" << std::endl;
  return pt_output;
}


void microbenchmark_encrypt1(int* fdw, int* fdr){
  std::cout << "==========================================" << std::endl;
  std::cout << "Encrypt_microbenchmark1" << std::endl;
  std::cout << "==========================================" << std::endl;
  Timer timer("digitrec FPGA");
  timer.start();
  for (int i = 0; i < 10000; i++){
    send_to_accelerator(fdw, fdr, "hello world", 0, 1);
    receive_from_accelerator(fdr);
  }

  timer.stop();
  std::cout << "------------------------------------------" << std::endl;
}

void microbenchmark_decrypt1(int* fdw, int* fdr){
  std::cout << "==========================================" << std::endl;
  std::cout << "Decrypt_microbenchmark1" << std::endl;
  std::cout << "==========================================" << std::endl;
  Timer timer("digitrec FPGA");
  timer.start();
  for (int i = 0; i < 10000; i++){
    send_to_accelerator(fdw, fdr, "hello world", 0, 0);
    receive_from_accelerator(fdr);
  }

  timer.stop();
  std::cout << "------------------------------------------" << std::endl;
}


void microbenchmark_encrypt2(int* fdw, int* fdr){
  std::cout << "==========================================" << std::endl;
  std::cout << "Encrypt_microbenchmark2" << std::endl;
  std::cout << "==========================================" << std::endl;
  Timer timer("digitrec FPGA");
  timer.start();
  for (int i = 0; i < 10000; i++){
    send_to_accelerator(fdw, fdr, "hello worldhe", 0, 1);
    receive_from_accelerator(fdr);
  }

  timer.stop();
  std::cout << "------------------------------------------" << std::endl;
}

void microbenchmark_decrypt2(int* fdw, int* fdr){
  std::cout << "==========================================" << std::endl;
  std::cout << "Decrypt_microbenchmark2" << std::endl;
  std::cout << "==========================================" << std::endl;
  Timer timer("digitrec FPGA");
  timer.start();
  for (int i = 0; i < 10000; i++){
    send_to_accelerator(fdw, fdr, "hello worldhe", 0, 0);
    receive_from_accelerator(fdr);
  }

  timer.stop();
  std::cout << "------------------------------------------" << std::endl;
}


void microbenchmark_encrypt3(int* fdw, int* fdr){
  std::cout << "==========================================" << std::endl;
  std::cout << "Encrypt_microbenchmark3" << std::endl;
  std::cout << "==========================================" << std::endl;
  Timer timer("digitrec FPGA");
  timer.start();
  for (int i = 0; i < 10000; i++){
    send_to_accelerator(fdw, fdr, "hello worldhello", 0, 1);
    receive_from_accelerator(fdr);
  }

  timer.stop();
  std::cout << "------------------------------------------" << std::endl;
}

void microbenchmark_decrypt3(int* fdw, int* fdr){
  std::cout << "==========================================" << std::endl;
  std::cout << "Decrypt_microbenchmark3" << std::endl;
  std::cout << "==========================================" << std::endl;
  Timer timer("digitrec FPGA");
  timer.start();
  for (int i = 0; i < 10000; i++){
    send_to_accelerator(fdw, fdr, "hello worldhello", 0, 0);
    receive_from_accelerator(fdr);
  }

  timer.stop();
  std::cout << "------------------------------------------" << std::endl;
}


//------------------------------------------------------------------------
// testbench
//------------------------------------------------------------------------
int main(int argc, char **argv) {
  // HLS streams for communicating between CPU and FPGA
  // Open channels to the FPGA board.
  // These channels appear as files to the Linux OS
  int fdw = open("/dev/xillybus_write_32", O_WRONLY);   // use to send to FPGA
  int fdr = open("/dev/xillybus_read_32", O_RDONLY);    // use to receive from FPGA

  // Check that the channels are correctly opened
  if ((fdr < 0) || (fdw < 0)) {
    fprintf(stderr, "Failed to open Xillybus device channels\n");
    return -1;
  }
  std::cout << "\n==========================================" << std::endl;


  test_loopback(&fdw, &fdr, "efg");
  test_loopback(&fdw, &fdr, "efghijkl");
  test_loopback(&fdw, &fdr, "efghijklmnopqrst");
  std::string cta = test_encrypt(&fdw, &fdr, "hello world", 0);
  std::string ctb = test_encrypt(&fdw, &fdr, "ECE 6750: HLS", 0);
  test_decrypt(&fdw, &fdr, cta, 0);
  test_decrypt(&fdw, &fdr, ctb, 0);

  microbenchmark_encrypt1(&fdw, &fdr);
  microbenchmark_decrypt1(&fdw, &fdr);

  microbenchmark_encrypt2(&fdw, &fdr);
  microbenchmark_decrypt2(&fdw, &fdr);

  microbenchmark_encrypt3(&fdw, &fdr);
  microbenchmark_decrypt3(&fdw, &fdr);

  int temp;
  bool testing = 1;
  std::string input_string;
  std::string exit_char;
  while(testing){
    std::cout << "\n==========================================" << std::endl;
    std::string result = "";
    std::cout << "Enter a string: ";
    getline(std::cin, input_string);
    temp = input_string.length();
    temp = (temp + 15) / 16;
    for (int i = 0; i < temp; i++){
      result = result + test_loopback(&fdw, &fdr, input_string.substr(16*i, 16));
    }
    std::cout << "Output string (full): " << result << "\n";
    // std::cout << "Enter 'q' to quit, or press 'enter' to continue: ";
    // getline(std::cin, exit_char);
    // if (exit_char == "q"){
    //   testing = 0;
    // }
  }

  return 0;
}

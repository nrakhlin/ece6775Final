//==========================================================================
// p2peda.cpp
//==========================================================================
// @brief: 

#include <hls_stream.h>
#include "typedefs.h"

// true = aes, false = blowfish
bool lfsr_encrypt = 0;
bool lfsr_decrypt = 0;

//----------------------------------------------------------
// Top function
//----------------------------------------------------------

bit128_t encrypt_aes(bit128_t plaintext){
  bit128_t ciphertext = plaintext + 0x0101010101010101;
  return ciphertext;
}
bit128_t decrypt_aes(bit128_t ciphertext){
  bit128_t plaintext = ciphertext - 0x0101010101010101;
  return plaintext;
}
bit128_t encrypt_bf(bit128_t plaintext){
  bit128_t ciphertext = plaintext + 0x1010101010101010;
  return ciphertext;
}
bit128_t decrypt_bf(bit128_t ciphertext){
  bit128_t plaintext = ciphertext - 0x1010101010101010;
  return plaintext;
}

void dut(hls::stream<bit32_t> &strm_in, hls::stream<bit32_t> &strm_out) {
  // std::cout << "DUT" << std::endl;
  bit32_t input_word = 0;
  bit128_t input_message = 0;
  bit32_t output_word = 0;
  bit128_t output_message = 0;
  bit128_t output_message_aes;
  bit128_t output_message_bf;
  
  

  bool reading = 1;
  bool en;

  for (int i = 0; i < 5; i++){
    if (reading){
      // std::cout << "FPGA read" << std::endl;
      input_word = strm_in.read();
      if (input_word(29,29)){
        reading = 0;
      }
      if (i == 4){
        input_message(127, 116) = input_word(11,0);
      }
      else {
        input_message(29*i + 28, 29*i) = input_word(28,0);
      }
    }
  }
  en = input_word(30,30);
  // std::cout << "input message: " << input_message << std::endl;
  if (en){
    lfsr_encrypt = !lfsr_encrypt;
    // std::cout << "encrypting" << std::endl;
    if (lfsr_encrypt){
      // std::cout << "AES encrypt" << std::endl;
      output_message = encrypt_aes(input_message);
    }
    else {
      // std::cout << "BF encrypt" << std::endl;
      output_message = encrypt_bf(input_message);
    }
    // std::cout << "output message: " << output_message << std::endl;
    for (int i = 0; i < 5; i++){
      output_word(31,31) = 0;
      output_word(30,30) = 1;
      if (i == 4){
        output_word(29,29) = 1;
        output_word(28,0) = output_message(127, 116);
      }
      else {
        output_word(29,29) = 0;
        output_word(28,0) = output_message(29*i + 28, 29*i);
      }
      // std::cout << "writing to FIFO" << std::endl;
      strm_out.write(output_word);      
    }
  }
  else {
    lfsr_decrypt = !lfsr_decrypt;
    // std::cout << "decrypting" << std::endl;
    output_message_aes = decrypt_aes(input_message);
    output_message_bf = decrypt_bf(input_message);
    if (lfsr_decrypt){
      // std::cout << "AES decrypt" << std::endl;
      output_message = output_message_aes;
    }
    else {
      // std::cout << "BF decrypt" << std::endl;
      output_message = output_message_bf;
    }
    for (int i = 0; i < 5; i++){
      output_word(31,31) = 0;
      output_word(30,30) = 0;
      if (i == 4){
        output_word(29,29) = 1;
        output_word(28,0) = output_message(127, 116);
      }
      else {
        output_word(29,29) = 0;
        output_word(28,0) = output_message(29*i + 28, 29*i);
      }
      // std::cout << "writing to FIFO" << std::endl;
      strm_out.write(output_word);      
    }
  }

}
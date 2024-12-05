//==========================================================================
// p2peda.cpp
//==========================================================================
// @brief: 

#include <hls_stream.h>
#include "typedefs.h"

//for aes:
#include "../../refactored/encrypt.h"
#include "../../refactored/decrypt.h"

#include "../../blowfish/blowfish.h"
#include "../../blowfish/blowfish.cpp"

// true = aes, false = blowfish
bool lfsr_encrypt = 0;
bool lfsr_decrypt = 0;

//----------------------------------------------------------
// Top function
//----------------------------------------------------------

bit128_t encrypt_aes(bit128_t plaintext){
  // bit128_t ciphertext = plaintext + 0x0101010101010101;
  unsigned char test_key[16] = {0x54, 0x68, 0x61, 0x74, 0x73, 0x20, 0x6D, 0x79, 0x20, 0x4B, 0x75, 0x6E, 0x67, 0x20, 0x46, 0x75};
  bit128_t ciphertext;
  unsigned char aes_input[16] = {0};
  unsigned char output[16] = {0};

  for (int i = 0; i < 16; i++){ //time intensive, not area intensize (16 cycles)
    aes_input[i] = plaintext(8*i + 7, 8*i);
  }

      encrypt_dut(aes_input, output, test_key);

      for (int i = 0; i < 16; i++){
        ciphertext(8*i + 7, 8*i) = output[i];
      }
  return ciphertext;
}
bit128_t decrypt_aes(bit128_t ciphertext){
  // bit128_t plaintext = ciphertext - 0x0101010101010101;
  unsigned char test_key[16] = {0x54, 0x68, 0x61, 0x74, 0x73, 0x20, 0x6D, 0x79, 0x20, 0x4B, 0x75, 0x6E, 0x67, 0x20, 0x46, 0x75};
  bit128_t plaintext;
  unsigned char aes_input[16] = {0};
  unsigned char output[16] = {0};

  for (int i = 0; i < 16; i++){
      aes_input[i] = ciphertext(8*i + 7, 8*i);
    }

  decrypt_dut(aes_input, output, test_key);

  for (int i = 0; i < 16; i++){
    plaintext(8*i + 7, 8*i) = output[i];
  }
  return plaintext;
}
bit128_t encrypt_bf(bit128_t plaintext){
  bit128_t ciphertext;
  bit128_t plaintext_;
  std::cout << "enc_plaintext 128-bit value: " << std::hex << plaintext << std::endl;
  unsigned char plaintext1[BLOCK_SIZE];
  unsigned char plaintext2[BLOCK_SIZE];

  unsigned char ciphertext1[BLOCK_SIZE];
  unsigned char ciphertext2[BLOCK_SIZE];

  unsigned char decryptedtext1[BLOCK_SIZE];
  unsigned char decryptedtext2[BLOCK_SIZE];

  unsigned int P[PARRAY_SIZE];
  unsigned int S[SBOX_SIZE_1][SBOX_SIZE_2];

  unsigned char key[MAX_KEY_BYTE_LENGTH] = {'M', 'y', ' ','K','e','y','!','!','!'};
  Blowfish_SetKey(key, sizeof("My Key!!!")-1,P, S);

  split_bit128(plaintext, plaintext1, plaintext2);
  
  Blowfish_Encrypt(plaintext1, ciphertext1, P, S);
  Blowfish_Encrypt(plaintext2, ciphertext2, P, S);

  ciphertext = combine_to_bit128(ciphertext1, ciphertext2);
  std::cout << "enc_ciphertext 128-bit value: " << std::hex << ciphertext << std::endl;
  return ciphertext;
}



bit128_t decrypt_bf(bit128_t ciphertext){
  bit128_t plaintext;
  std::cout << "dec_ciphertext 128-bit value: " << std::hex << ciphertext << std::endl;

  unsigned char ciphertext1[BLOCK_SIZE];
  unsigned char ciphertext2[BLOCK_SIZE];

  unsigned char decryptedtext1[BLOCK_SIZE];
  unsigned char decryptedtext2[BLOCK_SIZE];

  unsigned int P[PARRAY_SIZE];
  unsigned int S[SBOX_SIZE_1][SBOX_SIZE_2];

  unsigned char key[MAX_KEY_BYTE_LENGTH] = {'M', 'y', ' ','K','e','y','!','!','!'};
  Blowfish_SetKey(key, sizeof("My Key!!!")-1,P, S);

  split_bit128(ciphertext, ciphertext1, ciphertext2);

  // Decrypt
  Blowfish_Decrypt(ciphertext1, decryptedtext1, P, S);
  Blowfish_Decrypt(ciphertext2, decryptedtext2, P, S);

  plaintext = combine_to_bit128(decryptedtext1, decryptedtext2);
  std::cout << "dec_plaintext_ 128-bit value: " << std::hex << plaintext << std::endl;

  return plaintext;
}



// void print_bytes(const char *label, unsigned char *data, size_t len)
// {
//   printf("%s: ", label);
//   for (size_t i = 0; i < len; i++)
//   {
//     printf("%02x ", data[i]);
//   }
//   printf("\n");
// }
void dut(hls::stream<bit32_t> &strm_in, hls::stream<bit32_t> &strm_out) {
  // std::cout << "DUT" << std::endl;
  bit32_t input_word = 0;
  bit128_t input_message = 0;
  bit32_t output_word = 0;
  bit128_t output_message = 0;
  bit128_t output_message_aes;
  bit128_t output_message_bf;
  
  unsigned char test_key[16] = {0x54, 0x68, 0x61, 0x74, 0x73, 0x20, 0x6D, 0x79, 0x20, 0x4B, 0x75, 0x6E, 0x67, 0x20, 0x46, 0x75};
  unsigned char output[16] = {0};
  unsigned char aes_input[16] = {0};

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

  // std::cout << "en bit: " << en << std::endl;
  if (!en){
    lfsr_encrypt = !lfsr_encrypt;
    // std::cout << "encrypting" << std::endl;

    lfsr_encrypt = 0;
    if (lfsr_encrypt){
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
    output_message = output_message_bf;
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
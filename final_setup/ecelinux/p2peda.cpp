//==========================================================================
// p2peda.cpp
//==========================================================================
// @brief: 

#include <hls_stream.h>
#include "typedefs.h"

//for aes:
#include "../../refactored/encrypt.h"
#include "../../refactored/decrypt.h"
#include "../../refactored/helper.cpp"
#include "../../refactored/encrypt.cpp"
#include "../../refactored/decrypt.cpp"

//for blowfish
#include "../../blowfish/blowfish.h"
#include "../../blowfish/blowfish.cpp"

//for lfsr
#include "../../lfsr/lfsr.h"
#include "../../lfsr/lfsr.cpp"



// GLOBAL PARAMS -------------------------------------------
// Set by the LFSR. Value determined by rand_num%2
// true (1) = aes, false (0) = blowfish
bool lfsr_encrypt = 0;
bool lfsr_decrypt = 0;

// Intial LFSR seeds
seed_type enc_seed = 0xACE1U;
seed_type dec_seed = 0xACE1U;

// Blowfish Parray and Sboxes
unsigned int P[PARRAY_SIZE];
unsigned int S[SBOX_SIZE_1][SBOX_SIZE_2];


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
  // std::cout << "enc_plaintext 128-bit value: " << std::hex << plaintext << std::endl;
  unsigned char plaintext1[BLOCK_SIZE];
  unsigned char plaintext2[BLOCK_SIZE];

  unsigned char ciphertext1[BLOCK_SIZE];
  unsigned char ciphertext2[BLOCK_SIZE];

  unsigned char decryptedtext1[BLOCK_SIZE];
  unsigned char decryptedtext2[BLOCK_SIZE];


  split_bit128(plaintext, plaintext1, plaintext2);
  
  Blowfish_Encrypt(plaintext1, ciphertext1, P, S);
  Blowfish_Encrypt(plaintext2, ciphertext2, P, S);

  ciphertext = combine_to_bit128(ciphertext1, ciphertext2);
  // std::cout << "enc_ciphertext 128-bit value: " << std::hex << ciphertext << std::endl;
  return ciphertext;
}


bit128_t decrypt_bf(bit128_t ciphertext){
  bit128_t plaintext;
  // std::cout << "dec_ciphertext 128-bit value: " << std::hex << ciphertext << std::endl;

  unsigned char ciphertext1[BLOCK_SIZE];
  unsigned char ciphertext2[BLOCK_SIZE];

  unsigned char decryptedtext1[BLOCK_SIZE];
  unsigned char decryptedtext2[BLOCK_SIZE];

  split_bit128(ciphertext, ciphertext1, ciphertext2);

  // Decrypt
  Blowfish_Decrypt(ciphertext1, decryptedtext1, P, S);
  Blowfish_Decrypt(ciphertext2, decryptedtext2, P, S);

  plaintext = combine_to_bit128(decryptedtext1, decryptedtext2);
  // std::cout << "dec_plaintext_ 128-bit value: " << std::hex << plaintext << std::endl;

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


  // Temp Blowfish key-setting logic
  bool set = false;
  if (!set) {
    // Hardcoded key
    unsigned char key[MAX_KEY_BYTE_LENGTH] = {'M', 'y', ' ','K','e','y','!','!','!'};
    
    // Manually copy data from initial_parray into P
    PARRAY_INIT_1:
    for (int i = 0; i < PARRAY_SIZE; i++) {
        P[i] = initial_parray[i];
    }

    // Manually copy data from initial_sbox into S
    SBOX_INIT_1:
    for (int i = 0; i < SBOX_SIZE_1; ++i) {
        SBOX_INIT_2:
        for (int j = 0; j < SBOX_SIZE_2; ++j) {
            S[i][j] = initial_sbox[i][j];
        }
    }

    Blowfish_SetKey(key, sizeof("My Key!!!")-1,P, S);


    set = true;
  }


  if (en){
    // std::cout << "encrypting" << std::endl;
    enc_seed = lfsr(enc_seed, true);
    // lfsr_encrypt = enc_seed%2;
    lfsr_encrypt = enc_seed.range(0, 0);
    // std::cout << "Random number " << enc_seed << std::endl;
    std::cout << "Blowfish: 0, AES: 1, lfsr_encrypt: " << lfsr_encrypt << std::endl;
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
    // std::cout << "decrypting" << std::endl;
    dec_seed = lfsr(dec_seed, true);
    // lfsr_decrypt = dec_seed%2;
    lfsr_decrypt = dec_seed.range(0, 0);
    // std::cout << "Random number " << dec_seed << std::endl;
    std::cout << "Blowfish: 0, AES: 1, lfsr_decrypt: " << lfsr_decrypt << std::endl;

    if (lfsr_decrypt){
      // std::cout << "AES decrypt" << std::endl;
      output_message_aes = decrypt_aes(input_message);
      output_message = output_message_aes;
    }
    else {
      // std::cout << "BF decrypt" << std::endl;
      output_message_bf = decrypt_bf(input_message);
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
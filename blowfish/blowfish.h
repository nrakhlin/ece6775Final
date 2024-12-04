#ifndef BLOWFISH_H
#define BLOWFISH_H

#include <string>
#include "initial_data.h"
#include "ap_int.h"

// Function prototypes
// Private ----------------------------------------------------------------------------------------------
void Encrypt_SetKey(unsigned int& left, unsigned int& right, unsigned int P[PARRAY_SIZE], unsigned int S[SBOX_SIZE_1][SBOX_SIZE_2]);
unsigned int feistel(unsigned int x, unsigned int S[SBOX_SIZE_1][SBOX_SIZE_2]);
void blockToWords(const unsigned char block[BLOCK_SIZE], unsigned int& left, unsigned int& right);
void wordsToBlock(unsigned int left, unsigned int right, unsigned char block[BLOCK_SIZE]);
void split_bit128(const ap_uint<128>& plaintext, unsigned char plaintext_1[BLOCK_SIZE], unsigned char plaintext_2[BLOCK_SIZE]);
ap_uint<128> combine_to_bit128(unsigned char plaintext_1[BLOCK_SIZE], unsigned char plaintext_2[BLOCK_SIZE]);
void print_array(const unsigned char arr[BLOCK_SIZE]);


// Public -----------------------------------------------------------------------------------------------
void Blowfish_Encrypt(const unsigned char plaintext[BLOCK_SIZE], unsigned char ciphertext[BLOCK_SIZE], unsigned int P[PARRAY_SIZE], unsigned int S[SBOX_SIZE_1][SBOX_SIZE_2]);
// void Blowfish_Encrypt_128b(const unsigned char plaintext[2 * BLOCK_SIZE], unsigned char ciphertext[2 * BLOCK_SIZE], unsigned int P[PARRAY_SIZE], unsigned int S[SBOX_SIZE_1][SBOX_SIZE_2]);
void Blowfish_Decrypt(unsigned char ciphertext[BLOCK_SIZE], unsigned char decryptedtext[BLOCK_SIZE], unsigned int P[PARRAY_SIZE], unsigned int S[SBOX_SIZE_1][SBOX_SIZE_2]);
// void Blowfish_Decrypt_128b(const unsigned char ciphertext[2 * BLOCK_SIZE], unsigned char decryptedtext[2 * BLOCK_SIZE], unsigned int P[PARRAY_SIZE], unsigned int S[SBOX_SIZE_1][SBOX_SIZE_2]);
void Blowfish_SetKey(unsigned char key[MAX_KEY_BYTE_LENGTH], size_t key_size, unsigned int P[PARRAY_SIZE], unsigned int S[SBOX_SIZE_1][SBOX_SIZE_2]);
void Blowfish_SetKey_Encrypt(bool set_key, unsigned char key[MAX_KEY_BYTE_LENGTH], size_t key_size, const unsigned char plaintext[BLOCK_SIZE], unsigned char ciphertext[BLOCK_SIZE], unsigned int P[PARRAY_SIZE], unsigned int S[SBOX_SIZE_1][SBOX_SIZE_2]);
void Blowfish_SetKey_Encrypt_Decrypt(bool set_key, unsigned char key[MAX_KEY_BYTE_LENGTH], size_t key_size, const unsigned char plaintext[BLOCK_SIZE], unsigned char decryptedtext[BLOCK_SIZE], unsigned int P[PARRAY_SIZE], unsigned int S[SBOX_SIZE_1][SBOX_SIZE_2]);

#endif
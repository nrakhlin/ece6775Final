#ifndef BLOWFISH_H
#define BLOWFISH_H

#include <string>
#include "initial_data.h"

// Function prototypes
void Encrypt_SetKey(unsigned int& left, unsigned int& right, unsigned int P[18], unsigned int S[4][256]);
void Encrypt(const unsigned char plaintext[BLOCK_SIZE], unsigned char ciphertext[BLOCK_SIZE], unsigned int P[18], unsigned int S[4][256]);
void Decrypt(unsigned char ciphertext[BLOCK_SIZE], unsigned char decryptedtext[BLOCK_SIZE], unsigned int P[18], unsigned int S[4][256]);
void SetKey_Encrypt(bool set_key, unsigned char key[MAX_KEY_BYTE_LENGTH], size_t key_size, const unsigned char plaintext[BLOCK_SIZE], unsigned char ciphertext[BLOCK_SIZE], unsigned int P[18], unsigned int S[4][256]);
unsigned int feistel(unsigned int x, unsigned int S[4][256]);
void SetKey(unsigned char key[MAX_KEY_BYTE_LENGTH], size_t key_size, unsigned int P[18], unsigned int S[4][256]);
void blockToWords(const unsigned char block[BLOCK_SIZE], unsigned int& left, unsigned int& right);
void wordsToBlock(unsigned int left, unsigned int right, unsigned char block[BLOCK_SIZE]);

#endif

#ifndef AES_H
#define AES_H

#include <stddef.h> // for size_t
#include "constants.h"

/* Error Codes */
enum errorCode
{
  SUCCESS = 0,
  ERROR_AES_UNKNOWN_KEYSIZE,
  ERROR_MEMORY_ALLOCATION_FAILED,
};

/* Key Size Enum */
enum keySize
{
  SIZE_16 = 16, // 128-bit key
  SIZE_24 = 24, // 192-bit key
  SIZE_32 = 32  // 256-bit key
};

// keySize = 16;

/* Function Declarations */

// S-Box Functions//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
extern unsigned char sbox[256];
extern unsigned char rsbox[256];
unsigned char getSBoxValue(unsigned char num);
unsigned char getSBoxInvert(unsigned char num);

// Key Expansion Functions //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Implementation: Rcon
extern unsigned char Rcon[255];
void rotate(unsigned char word[4]);
unsigned char getRconValue(unsigned char num);
void core(unsigned char word[4], int iteration);
void expandKey(unsigned char expandedKey[EXPAND_KEY_SIZE],
               unsigned char key[KEY_SIZE],
               int size,
               int expandedKeySize);

// AES Encryption/Decryption Functions//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
void subBytes(unsigned char state[16]);
void shiftRows(unsigned char state[16]);
void addRoundKey(unsigned char state[16], unsigned char roundKey[16]);
unsigned char galois_multiplication(unsigned char a, unsigned char b);
void mixColumn(unsigned char column[4]);
void mixColumns(unsigned char state[16]);
void createRoundKey(unsigned char expandedKey[EXPAND_KEY_SIZE], unsigned char roundKey[16], int ptr);

// AES Decryption Functions //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
void invSubBytes(unsigned char state[16]);
void invShiftRows(unsigned char state[16]);
void invMixColumn(unsigned char column[4]);
void invMixColumns(unsigned char state[16]);
#endif // AES_H

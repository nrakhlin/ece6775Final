#ifndef AES_H
#define AES_H

#include <stddef.h> // for size_t

#define KEY_SIZE 16
#define NBRROUNDS 10
#define EXPAND_KEY_SIZE (16 * (NBRROUNDS + 1))

/* Error Codes */
enum errorCode {
    SUCCESS = 0,
    ERROR_AES_UNKNOWN_KEYSIZE,
    ERROR_MEMORY_ALLOCATION_FAILED,
};

/* Key Size Enum */
enum keySize {
    SIZE_16 = 16,  // 128-bit key
    SIZE_24 = 24,  // 192-bit key
    SIZE_32 = 32   // 256-bit key
};

// keySize = 16;

/* Function Declarations */

// S-Box Functions
unsigned char getSBoxValue(unsigned char num);
unsigned char getSBoxInvert(unsigned char num);

// Key Expansion Functions
void rotate(unsigned char *word);
unsigned char getRconValue(unsigned char num);
void core(unsigned char *word, int iteration);
void expandKey(unsigned char *expandedKey, unsigned char *key, int size, size_t expandedKeySize);

// AES Encryption/Decryption Functions
void subBytes(unsigned char *state);
void shiftRows(unsigned char *state);
void shiftRow(unsigned char *state, unsigned char nbr);
void addRoundKey(unsigned char *state, unsigned char *roundKey);
unsigned char galois_multiplication(unsigned char a, unsigned char b);
void mixColumns(unsigned char *state);
void mixColumn(unsigned char *column);
void aes_round(unsigned char *state, unsigned char *roundKey);
void createRoundKey(unsigned char *expandedKey, unsigned char *roundKey);
void aes_main(unsigned char *state, unsigned char *expandedKey, int nbrRounds);
void aes_encrypt(unsigned char *input, unsigned char *output, unsigned char *key, int size);

// AES Decryption Functions
void invSubBytes(unsigned char *state);
void invShiftRows(unsigned char *state);
void invShiftRow(unsigned char *state, unsigned char nbr);
void invMixColumns(unsigned char *state);
void invMixColumn(unsigned char *column);
void aes_invRound(unsigned char *state, unsigned char *roundKey);
void aes_invMain(unsigned char *state, unsigned char *expandedKey, int nbrRounds);


void aes_decrypt(unsigned char input[16], unsigned char output[16], unsigned char key[KEY_SIZE], int size);


void encrypt_dut(unsigned char input[16], unsigned char output[16], unsigned char key[KEY_SIZE]);
void decrypt_dut(unsigned char input[16], unsigned char output[16], unsigned char key[KEY_SIZE]);

// Global Variables (Optional: If you need to include them, though they can also be externalized in implementation files)
extern unsigned char sbox[256];
extern unsigned char rsbox[256];
extern unsigned char Rcon[255];

#endif // AES_H

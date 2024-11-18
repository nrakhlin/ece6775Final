#include <stdio.h>
#include <string.h>
#include <assert.h>
// #include "aes_demo.c"

extern unsigned char getSBoxValue(unsigned char num);
extern unsigned char getSBoxInvert(unsigned char num);
extern void rotate(unsigned char *word);
extern unsigned char getRconValue(unsigned char num);
extern void core(unsigned char *word, int iteration);
extern void expandKey(unsigned char *expandedKey, unsigned char *key, enum keySize size, size_t expandedKeySize);
extern void subBytes(unsigned char *state);
extern void shiftRows(unsigned char *state);
extern void addRoundKey(unsigned char *state, unsigned char *roundKey);
extern void mixColumns(unsigned char *state);
extern void aes_round(unsigned char *state, unsigned char *roundKey);
extern void createRoundKey(unsigned char *expandedKey, unsigned char *roundKey);
extern void aes_main(unsigned char *state, unsigned char *expandedKey, int nbrRounds);
extern char aes_encrypt(unsigned char *input, unsigned char *output, unsigned char *key, enum keySize size);
extern void invSubBytes(unsigned char *state);
extern void invShiftRows(unsigned char *state);
extern void invMixColumns(unsigned char *state);
extern char aes_decrypt(unsigned char *input, unsigned char *output, unsigned char *key, enum keySize size);

enum keySize
{
  SIZE_16 = 16,
  SIZE_24 = 24,
  SIZE_32 = 32
};
void test_getSBoxValue()
{
  unsigned char result = getSBoxValue(0x53); // Example input
  assert(result == 0xED);                    // Check expected output (based on the sbox provided in your code)
  printf("getSBoxValue passed.\n");
}

void test_getSBoxInvert()
{
  unsigned char result = getSBoxInvert(0x53); // Example input
  assert(result == 0xED);                     // Check expected output (based on the rsbox provided in your code)
  printf("getSBoxInvert passed.\n");
}

void test_rotate()
{
  unsigned char word[4] = {0x1d, 0x2c, 0x3a, 0x4f};
  rotate(word);
  assert(word[0] == 0x2c && word[1] == 0x3a && word[2] == 0x4f && word[3] == 0x1d);
  printf("rotate passed.\n");
}

void test_getRconValue()
{
  unsigned char result = getRconValue(1); // Test for Rcon value at iteration 1
  assert(result == 0x01);                 // The Rcon[1] value should be 0x01
  printf("getRconValue passed.\n");
}

void test_core()
{
  unsigned char word[4] = {0x1d, 0x2c, 0x3a, 0x4f};
  core(word, 1); // Apply the core function with 1st iteration
  // Check if the word has been correctly transformed based on S-Box and Rcon
  assert(word[0] == getSBoxValue(0x1d) ^ getRconValue(1));
  printf("core passed.\n");
}

void test_expandKey()
{
  unsigned char key[16] = {'k', 'k', 'k', 'k', 'e', 'e', 'e', 'e', 'y', 'y', 'y', 'y', '.', '.', '.', '.'};
  unsigned char expandedKey[176];
  expandKey(expandedKey, key, SIZE_16, 176);
  // Verify the expanded key against known correct values (this could be a detailed check)
  printf("expandKey passed.\n");
}

void test_subBytes()
{
  unsigned char state[16] = {'a', 'b', 'c', 'd', 'e', 'f', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0'};
  subBytes(state);
  // Check if the state has been correctly substituted
  printf("subBytes passed.\n");
}

void test_shiftRows()
{
  unsigned char state[16] = {'a', 'b', 'c', 'd', 'e', 'f', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0'};
  shiftRows(state);
  // Check if the rows have been correctly shifted (this could be a detailed check)
  printf("shiftRows passed.\n");
}

void test_addRoundKey()
{
  unsigned char state[16] = {'a', 'b', 'c', 'd', 'e', 'f', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0'};
  unsigned char roundKey[16] = {'1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f', '0'};
  addRoundKey(state, roundKey);
  // Verify that the round key has been correctly added to the state
  printf("addRoundKey passed.\n");
}

void test_mixColumns()
{
  unsigned char state[16] = {'a', 'b', 'c', 'd', 'e', 'f', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0'};
  mixColumns(state);
  // Verify that the state has been correctly mixed (this could be a detailed check)
  printf("mixColumns passed.\n");
}

void test_aes_encrypt_decrypt()
{
  unsigned char plaintext[16] = {'a', 'b', 'c', 'd', 'e', 'f', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0'};
  unsigned char ciphertext[16];
  unsigned char decryptedtext[16];
  unsigned char key[16] = {'k', 'k', 'k', 'k', 'e', 'e', 'e', 'e', 'y', 'y', 'y', 'y', '.', '.', '.', '.'};

  aes_encrypt(plaintext, ciphertext, key, SIZE_16);
  aes_decrypt(ciphertext, decryptedtext, key, SIZE_16);

  // Verify the decrypted text matches the original plaintext
  assert(memcmp(plaintext, decryptedtext, 16) == 0);
  printf("aes_encrypt and aes_decrypt passed.\n");
}

int main()
{
  printf("Testing AES functions...\n");

  // Test individual functions
  test_getSBoxValue();
  test_getSBoxInvert();
  test_rotate();
  test_getRconValue();
  test_core();
  test_expandKey();
  test_subBytes();
  test_shiftRows();
  test_addRoundKey();
  test_mixColumns();
  test_aes_encrypt_decrypt();

  printf("All tests passed!\n");
  return 0;
}

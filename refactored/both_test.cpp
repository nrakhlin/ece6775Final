// g++ -o aes.exe refactored/both_test.cpp refactored/encrypt.cpp refactored/decrypt.cpp refactored/helper.cpp
#include <stdio.h>
#include <string.h>
#include <assert.h>
#include "encrypt.h"
#include "decrypt.h"

// Define the key size and block size
#define KEY_SIZE 16   // AES-128 uses 128-bit key, i.e., 16 bytes
#define BLOCK_SIZE 16 // AES block size is always 16 bytes

// Test vectors from known AES examples (AES-128)
// unsigned char test_input[BLOCK_SIZE] = {0x54, 0x77, 0x6F, 0x20, 0x4F, 0x6E, 0x65, 0x20, 0x4E, 0x69, 0x6E, 0x65, 0x20, 0x54, 0x77, 0x6F};
unsigned char test_input[BLOCK_SIZE] = {'d', 'e', 'a', 'd', 'b', 'e', 'e', 'f', 'b', 'e', 'e', 'f', 'd', 'e', 'a', 'd'};

unsigned char test_key[KEY_SIZE] = {0x54, 0x68, 0x61, 0x74, 0x73, 0x20, 0x6D, 0x79, 0x20, 0x4B, 0x75, 0x6E, 0x67, 0x20, 0x46, 0x75};

unsigned char decoded_output[KEY_SIZE] = {0};

// Function to print bytes in a readable format
void print_bytes(const char *label, unsigned char *data, int len)
{
  printf("%02x: ", label);
  for (int i = 0; i < len; i++)
  {
    printf("%c", data[i]);
  }
  printf("\n");
}

int main()
{
  unsigned char encrypted_output[BLOCK_SIZE];

  // Step 1: Print the input and key
  print_bytes("Plaintext\n", test_input, BLOCK_SIZE);
  print_bytes("Key\n", test_key, KEY_SIZE);

  printf("input: \n");
  for (int i = 0; i < BLOCK_SIZE; i++)
  {
    printf("%c", test_input[i]);
  }
  printf("\n");

  printf("key: \n");
  for (int i = 0; i < BLOCK_SIZE; i++)
  {
    printf("%c", test_key[i]);
  }
  printf("\n");

  // Step 2: Encrypt the input using the encryption function
  encrypt_dut(test_input, encrypted_output, test_key);

  printf("Encrpyted Output: \n");
  for (int i = 0; i < BLOCK_SIZE; i++)
  {
    printf("%c", encrypted_output[i]);
  }
  printf("\n");

  printf("\nCiphertext (HEX format):\n");

  for (int i = 0; i < 16; i++)
  {
    printf("%2.2x%c", encrypted_output[i], ((i + 1) % 16) ? ' ' : '\n');
  }

  // Step 3: Print the output of encryption
  print_bytes("Encrypted Output\n", encrypted_output, BLOCK_SIZE);

  // Step 4: Compare the output with the expected ciphertext
  // assert(memcmp(encrypted_output, expected_output, BLOCK_SIZE) == 0);

  decrypt_dut(encrypted_output, decoded_output, test_key);
  printf("Decrypted Text: \n");
  for (int i = 0; i < BLOCK_SIZE; i++)
  {
    printf("%c", decoded_output[i]);
  }
  printf("\n");

  print_bytes("Decrypted\n", decoded_output, BLOCK_SIZE);

  // If the assertion passes, print success message
  // printf("AES encryption test passed successfully!\n");

  return 0;
}

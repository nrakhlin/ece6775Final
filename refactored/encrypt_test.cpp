#include <stdio.h>
#include <string.h>
#include <assert.h>
#include "encrypt.h"

// Define the key size and block size
#define KEY_SIZE 16   // AES-128 uses 128-bit key, i.e., 16 bytes
#define BLOCK_SIZE 16 // AES block size is always 16 bytes

// Test vectors from known AES examples (AES-128)
unsigned char test_input[BLOCK_SIZE] = {'d', 'e', 'a', 'd' ,'b', 'e', 'e', 'f', 'b', 'e', 'e', 'f', 'd', 'e', 'a', 'd'};

unsigned char test_key[KEY_SIZE] = {0x54, 0x68, 0x61, 0x74, 0x73, 0x20, 0x6D, 0x79, 0x20, 0x4B, 0x75, 0x6E, 0x67, 0x20, 0x46, 0x75};

unsigned char expected_output[BLOCK_SIZE] = {0x72,0xe5,0xdb,0x87,0x94,0x7e,0x05,0x97,0x4b,0x22,0x17,0xfd,0xc6,0xb1,0x8a,0x29};

// Function to print bytes in a readable format
void print_bytes(const char *label, unsigned char *data, size_t len)
{
  printf("%s: ", label);
  for (size_t i = 0; i < len; i++)
  {
    printf("%02x ", data[i]);
  }
  printf("\n");
}

int main()
{
  unsigned char encrypted_output[BLOCK_SIZE];

  // Step 1: Print the input and key
  print_bytes("Plaintext", test_input, BLOCK_SIZE);
  print_bytes("Key", test_key, KEY_SIZE);

  // Step 2: Encrypt the input using the encryption function
  encrypt_dut(test_input, encrypted_output, test_key);

  // Step 3: Print the output of encryption
  print_bytes("Expected Output", expected_output, BLOCK_SIZE);
  print_bytes("Encrypted Output", encrypted_output, BLOCK_SIZE);

  // Step 4: Compare the output with the expected ciphertext
  for (int i = 0; i < BLOCK_SIZE; i++){
    if (encrypted_output[i] != expected_output[i]){
          printf("FAIL FAIL FAIL");
          return 1;
    }
  }
  assert(memcmp(encrypted_output, expected_output, BLOCK_SIZE) == 0);

  // If the assertion passes, print success message
  printf("AES encryption test passed successfully!\n");

  return 0;
}

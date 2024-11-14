#include <stdio.h>
#include <string.h>
#include <assert.h>
#include "just_encrypt.h"

// Define the key size and block size
#define KEY_SIZE 16    // AES-128 uses 128-bit key, i.e., 16 bytes
#define BLOCK_SIZE 16  // AES block size is always 16 bytes

// Test vectors from known AES examples (AES-128)
unsigned char test_input[BLOCK_SIZE] = {
    0x32, 0x88, 0x31, 0xe0, 0x43, 0x5a, 0x31, 0x37,
    0xf6, 0x30, 0x98, 0x07, 0xa8, 0x8d, 0xa2, 0x34
};

unsigned char test_key[KEY_SIZE] = {
    0x2b, 0x7e, 0x15, 0x16, 0x28, 0xae, 0xd2, 0xa6,
    0xab, 0xf7, 0x97, 0x75, 0x46, 0x20, 0x63, 0xed
};

unsigned char expected_output[BLOCK_SIZE] = {
    0x39, 0x25, 0x84, 0x1d, 0x02, 0x87, 0x94, 0x23,
    0x5d, 0x88, 0x6d, 0x97, 0x2d, 0x5a, 0x9a, 0x67
};

// Function to print bytes in a readable format
void print_bytes(const char *label, unsigned char *data, size_t len) {
    printf("%s: ", label);
    for (size_t i = 0; i < len; i++) {
        printf("%02x ", data[i]);
    }
    printf("\n");
}

int main() {
    unsigned char encrypted_output[BLOCK_SIZE];

    // Step 1: Print the input and key
    print_bytes("Plaintext", test_input, BLOCK_SIZE);
    print_bytes("Key", test_key, KEY_SIZE);

    // Step 2: Encrypt the input using the encryption function
    encrypt_dut(test_input, encrypted_output, test_key);

    // Step 3: Print the output of encryption
    print_bytes("Encrypted Output", encrypted_output, BLOCK_SIZE);

    // Step 4: Compare the output with the expected ciphertext
    assert(memcmp(encrypted_output, expected_output, BLOCK_SIZE) == 0);

    // If the assertion passes, print success message
    printf("AES encryption test passed successfully!\n");

    return 0;
}

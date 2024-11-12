#include <iostream>
#include <iomanip>
#include <cstring>
#include "aes.h"

// Assuming the AES functions from the original C code are available (like aes_encrypt, aes_decrypt, etc.)
// extern "C" {
//     char aes_encrypt(unsigned char *input, unsigned char *output, unsigned char *key, enum keySize size);
//     char aes_decrypt(unsigned char *input, unsigned char *output, unsigned char *key, enum keySize size);
//     void expandKey(unsigned char *expandedKey, unsigned char *key, enum keySize size, size_t expandedKeySize);
// }

// Helper function to print a byte array as hex
void printHex(unsigned char* data, size_t size) {
    for (size_t i = 0; i < size; i++) {
        std::cout << std::hex << std::setw(2) << std::setfill('0') << (int)data[i] << " ";
    }
    std::cout << std::endl;
}

// Function to compare two byte arrays for equality
bool compareArrays(unsigned char* arr1, unsigned char* arr2, size_t size) {
    for (size_t i = 0; i < size; i++) {
        if (arr1[i] != arr2[i]) {
            return false;
        }
    }
    return true;
}

int main() {
    // Test case parameters
    unsigned char key[16] = {'k', 'k', 'k', 'k', 'e', 'e', 'e', 'e', 'y', 'y', 'y', 'y', '.', '.', '.', '.'};
    unsigned char plaintext[16] = {'a', 'b', 'c', 'd', 'e', 'f', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0'};
    unsigned char ciphertext[16];
    unsigned char decryptedtext[16];

    // Expanded key for AES
    unsigned char expandedKey[176]; // Size for 128-bit AES key expansion
    enum keySize size = SIZE_16; // AES-128 (16 bytes key)
    // int size = 16;

    // Expand the key
    expandKey(expandedKey, key, size, 176);

    // Encrypt the plaintext
    std::cout << "Plaintext: ";
    printHex(plaintext, 16);
    aes_encrypt(plaintext, ciphertext, key, size);
    std::cout << "Ciphertext (Encrypted): ";
    printHex(ciphertext, 16);

    // Decrypt the ciphertext
    aes_decrypt(ciphertext, decryptedtext, key, size);
    std::cout << "Decrypted Text: ";
    printHex(decryptedtext, 16);

    // Compare plaintext and decrypted text
    if (compareArrays(plaintext, decryptedtext, 16)) {
        std::cout << "Success: Decrypted text matches the original plaintext." << std::endl;
    } else {
        std::cout << "Error: Decrypted text does not match the original plaintext." << std::endl;
    }

    return 0;
}

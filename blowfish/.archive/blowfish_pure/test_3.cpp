#include <iostream>
#include "blowfish.h"
#include <cstring>

// Test vectors (you can replace these with more or different test cases)
unsigned char test_key[] = {
    0x01, 0x23, 0x45, 0x67, 0x89, 0xab, 0xcd, 0xef, 0x01, 0x23, 0x45, 0x67
};

unsigned char plaintext[] = {
    0x32, 0x43, 0xf6, 0xa8, 0x88, 0x5a, 0x30, 0x8d, 0x31, 0x31, 0x98, 0xa2, 0x9a, 0x6b, 0x94, 0x18
};

unsigned char expected_ciphertext[] = {
    0x8e, 0xc9, 0x19, 0x6a, 0x4d, 0x72, 0x8a, 0x15, 0x34, 0xe3, 0xc7, 0xc0, 0x17, 0x9f, 0xa1, 0xa4
};

unsigned char decrypted_text[16];

int main() {
    std::cout << "Blowfish Testbench\n";

    // Set key
    SetKey(test_key, sizeof(test_key));

    // Encrypt the plaintext
    unsigned char ciphertext[16];
    Encrypt(ciphertext, plaintext, sizeof(plaintext));

    // Output the ciphertext
    std::cout << "Ciphertext: ";
    for (int i = 0; i < 16; i++) {
        printf("%02x ", ciphertext[i]);
    }
    std::cout << std::endl;

    // Compare with expected ciphertext
    bool encryption_passed = true;
    for (int i = 0; i < 16; i++) {
        if (ciphertext[i] != expected_ciphertext[i]) {
            encryption_passed = false;
            break;
        }
    }

    if (encryption_passed) {
        std::cout << "Encryption test passed!" << std::endl;
    } else {
        std::cout << "Encryption test failed!" << std::endl;
    }

    // Decrypt the ciphertext
    Decrypt(decrypted_text, ciphertext, sizeof(ciphertext));

    // Output the decrypted text
    std::cout << "Decrypted text: ";
    for (int i = 0; i < 16; i++) {
        printf("%02x ", decrypted_text[i]);
    }
    std::cout << std::endl;

    // Compare decrypted text with the original plaintext
    bool decryption_passed = true;
    for (int i = 0; i < 16; i++) {
        if (decrypted_text[i] != plaintext[i]) {
            decryption_passed = false;
            break;
        }
    }

    if (decryption_passed) {
        std::cout << "Decryption test passed!" << std::endl;
    } else {
        std::cout << "Decryption test failed!" << std::endl;
    }

    return 0;
}

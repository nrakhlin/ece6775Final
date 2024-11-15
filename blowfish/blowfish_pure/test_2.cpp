#include <iostream>
#include <iomanip>
#include <cassert>
#include "blowfish.h"
#include <cstring>  // For std::memcmp


void TestBlowfish() {
    // Test data
    const unsigned char key[] = "TestKey12345678";  // 16 bytes key
    const unsigned char input[] = "This is a test."; // Example input text
    unsigned char encrypted[64];  // Encrypted output (max size for a block of 64 bytes)
    unsigned char decrypted[64];  // Decrypted output (max size for a block of 64 bytes)

    // Initialize the Blowfish key, pary_ and sbox_ arrays
    uint32_t pary[18];  // Blowfish P-array
    uint32_t sbox[4][256];  // Blowfish S-boxes

    // Set the key
    SetKey(key, sizeof(key) - 1, pary, sbox);

    // Encrypt the input data
    Encrypt(encrypted, input, sizeof(input), pary, sbox);

    // Decrypt the encrypted data
    Decrypt(decrypted, encrypted, sizeof(input), pary, sbox);

    // Print the results
    std::cout << "Original Input: " << input << std::endl;
    std::cout << "Encrypted Data: ";
    for (int i = 0; i < sizeof(input); ++i) {
        std::cout << std::hex << std::setw(2) << std::setfill('0') << (int)encrypted[i] << " ";
    }
    std::cout << std::endl;

    std::cout << "Decrypted Data: " << decrypted << std::endl;

    // Check if the decrypted data matches the original input
    assert(std::memcmp(input, decrypted, sizeof(input)) == 0);
    std::cout << "Test Passed!" << std::endl;
}

int main() {
    TestBlowfish();
    return 0;
}

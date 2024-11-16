#include <iostream>
#include <iomanip>
#include <cstring>
#include "blowfish.h"

// Generate a random byte for a random test vector
unsigned char simpleRandomByte() {
    static unsigned char seed = 0;
    seed = (seed + 31) % 256;
    return seed;
}

// Function to generate a random 8-byte string
void generateRandomString(unsigned char *str) {
    for (size_t i = 0; i < BLOCK_SIZE; ++i) {
        str[i] = simpleRandomByte();  // Generate each random byte
    }
    printf("Size of the plaintext: %zu bytes\n", sizeof(str)); 

}

int main() {
    const unsigned char key[] = "Key!";
    printf("Key: %s\n", key); 
    printf("Size of the key: %zu bytes\n", sizeof(key));

    // Define the number of test cases (random 8-byte strings)
    const int n = 10;  // You can change this value to the number of tests you want

    // Prepare buffers for encrypted and decrypted data
    unsigned char encrypted[BLOCK_SIZE];  // 8 bytes for encryption
    unsigned char decrypted[BLOCK_SIZE];  // 8 bytes for decryption

    // Create a Blowfish object and set the key
    Blowfish blowfish;

    // Flag to track if all tests passed
    bool allTestsPassed = true;
    bool set_key = true;

    // Loop for n random 8-byte strings
    for (int i = 0; i < n; ++i) {
        // Generate a random 8-byte string
        unsigned char randomText[BLOCK_SIZE];
        generateRandomString(randomText);

        // Print original random text (for clarity in the test)
        std::cout << "Original random text #" << i + 1 << ": ";
        for (size_t j = 0; j < BLOCK_SIZE; ++j) {
            std::cout << std::hex << std::setw(2) << std::setfill('0') << (int)randomText[j];
        }
        std::cout << std::dec << std::endl;

        // Encrypt and Decrypt
        blowfish.Encrypt_Decrypt_SetKey(set_key, key, sizeof(key), decrypted, encrypted, randomText);
        if(set_key) set_key = false;

        // Print encrypted text as hex
        std::cout << "Encrypted text: ";
        for (size_t j = 0; j < BLOCK_SIZE; ++j) {
            std::cout << std::hex << std::setw(2) << std::setfill('0') << (int)encrypted[j];
        }
        std::cout << std::dec << std::endl;

        // Print decrypted text
        std::cout << "Decrypted text: ";
        for (size_t j = 0; j < BLOCK_SIZE; ++j) {
            std::cout << std::hex << std::setw(2) << std::setfill('0') << (int)decrypted[j];
        }
        std::cout << std::dec << std::endl;

        // Verify if decryption matches the original random text
        if (std::memcmp(randomText, decrypted, BLOCK_SIZE) == 0) {
            std::cout << "Encryption and decryption successful for test #" << i + 1 << "!" << std::endl;
        } else {
            std::cout << "Test #" << i + 1 << " failed: decrypted text does not match the original plaintext." << std::endl;
            allTestsPassed = false;  // Mark the test as failed
        }
    }

    // Print summary of test results
    if (allTestsPassed) {
        std::cout << "\nAll tests passed successfully!" << std::endl;
    } else {
        std::cout << "\nSome tests failed. Please check the results above." << std::endl;
    }

    return 0;
}

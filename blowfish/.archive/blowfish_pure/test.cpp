#include <iostream>
#include <iomanip>
#include <cstring>
#include "blowfish.h"

int main() {
    // Define a sample key and plaintext
    const unsigned char key[] = "My Key!";
    printf("Key: %s\n", key); 
    printf("Size of the key: %zu bytes\n", sizeof(key)); 

    const unsigned char plaintext[] = "Tsisss?";
    // Print original plaintext
    std::cout << "Original text: " << plaintext << std::endl;
    printf("Size of the plaintext: %zu bytes\n", sizeof(plaintext)); 


    // Prepare buffers for encrypted and decrypted data
    unsigned char encrypted[sizeof(plaintext)];
    unsigned char decrypted[sizeof(plaintext)];

    // Create a Blowfish object and set the key
    Blowfish blowfish;
    blowfish.SetKey(key, sizeof(key));  // Exclude null terminator in length

    // Encrypt the plaintext
    blowfish.Encrypt(encrypted, plaintext);

    // Decrypt the encrypted text
    blowfish.Decrypt(decrypted, encrypted);

    // Print encrypted text as hex
    std::cout << "Encrypted text: ";
    for (size_t i = 0; i < sizeof(encrypted); ++i) {
        std::cout << std::hex << std::setw(2) << std::setfill('0') << (int)encrypted[i];
    }
    std::cout << std::dec << std::endl;  // Reset to decimal output

    // Print decrypted text
    std::cout << "Decrypted text: " << decrypted << std::endl;

    // Verify if decryption matches the original plaintext
    if (std::memcmp(plaintext, decrypted, sizeof(plaintext)) == 0) {
        std::cout << "Encryption and decryption successful!" << std::endl;
    } else {
        std::cout << "Test failed: decrypted text does not match the original plaintext." << std::endl;
    }

    return 0;
}

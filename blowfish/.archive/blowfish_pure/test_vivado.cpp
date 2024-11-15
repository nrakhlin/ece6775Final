#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include "blowfish.h"

int main() {
    // Define a sample key and plaintext
    const char key[] = "My Key!";
    printf("Key: %s\n", key);
    printf("Size of the key: %zu bytes\n", sizeof(key) - 1); // Exclude null terminator

    const char plaintext[] = "Tsisss?";
    // Print original plaintext
    printf("Original text: %s\n", plaintext);
    printf("Size of the plaintext: %zu bytes\n", sizeof(plaintext) - 1); // Exclude null terminator

    // Prepare buffers for encrypted and decrypted data
    char encrypted[sizeof(plaintext)];
    char decrypted[sizeof(plaintext)];

    // Create a Blowfish object and set the key
    Blowfish blowfish;
    blowfish.SetKey((const unsigned char*)key, sizeof(key) - 1);  // Exclude null terminator in length

    // Encrypt the plaintext
    blowfish.Encrypt((unsigned char*)encrypted, (const unsigned char*)plaintext);

    // Decrypt the encrypted text
    blowfish.Decrypt((unsigned char*)decrypted, (const unsigned char*)encrypted);

    // Print encrypted text as hex
    printf("Encrypted text: ");
    for (size_t i = 0; i < sizeof(plaintext) - 1; ++i) { // Exclude null terminator
        printf("%02x", (unsigned char)encrypted[i]);
    }
    printf("\n");

    // Print decrypted text
    printf("Decrypted text: %s\n", decrypted);

    // Verify if decryption matches the original plaintext
    if (memcmp(plaintext, decrypted, sizeof(plaintext) - 1) == 0) { // Exclude null terminator
        printf("Encryption and decryption successful!\n");
    } else {
        printf("Test failed: decrypted text does not match the original plaintext.\n");
    }

    return 0;
}

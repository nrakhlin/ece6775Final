#include <iostream>
#include <string>
#include "initial_data.h"
#include "blowfish.h"
#include <iomanip>

// mode 1: SetKey + Encrypt
// mode 2: Encrypt_SetKey

#define mode 2

int main() {
    // Example key and plaintext
    unsigned char key[MAX_KEY_BYTE_LENGTH] = "My Key!!!";
    unsigned char plaintext[BLOCK_SIZE] = "Wereisms";  // Plaintext as unsigned char array

    unsigned char ciphertext[BLOCK_SIZE];    // Array to store the ciphertext
    unsigned char decryptedText[BLOCK_SIZE]; // Array to store decrypted text

    // Initialize P and S arrays
    unsigned int P[18];
    unsigned int S[4][256];

    if(mode == 1){
        // Key expansion
        SetKey(key, sizeof("My Key!!!")-1,P, S);
        // Encrypt
        Encrypt(plaintext, ciphertext, P, S);
    } else {
        // Ket expansion + Encrypt
        SetKey_Encrypt(true, key, sizeof("My Key!!!")-1, plaintext, ciphertext, P, S);
    }



    // Print ciphertext in hexadecimal format
    std::cout << "Ciphertext: ";
    for (int i = 0; i < 8; i++) {
        std::cout << std::hex << std::setw(2) << std::setfill('0') << (int)ciphertext[i];
    }
    std::cout << std::endl;

    // Decrypt
    Decrypt(ciphertext, decryptedText, P, S);

    // Print decrypted text
    std::cout << "Decrypted Text: ";
    for (int i = 0; i < 8; i++) {
        std::cout << decryptedText[i];  // Print as characters
    }
    std::cout << std::endl;

    return 0;
}

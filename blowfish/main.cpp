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
    // unsigned char key[MAX_KEY_BYTE_LENGTH] = "My Key!!!";
    // unsigned char plaintext[BLOCK_SIZE] = 'Wereisms';  // Plaintext as unsigned char array

    unsigned char key[MAX_KEY_BYTE_LENGTH] = {'M', 'y', ' ','K','e','y','!','!','!'};
    unsigned char plaintext[BLOCK_SIZE] = {'W','e', 'r', 'e', 'i', 's', 'm', 's'};

    unsigned char ciphertext[BLOCK_SIZE];    // Array to store the ciphertext
    unsigned char decryptedtext[BLOCK_SIZE]; // Array to store decrypted text
    

    // Initialize P and S arrays
    unsigned int P[PARRAY_SIZE];
    unsigned int S[SBOX_SIZE_1][SBOX_SIZE_2];

    if(mode == 1){
        // Key expansion
        Blowfish_SetKey(key, sizeof("My Key!!!")-1,P, S);
        // Encrypt
        Blowfish_Encrypt(plaintext, ciphertext, P, S);
    } else {
        // Ket expansion + Encrypt
        Blowfish_SetKey_Encrypt(true, key, sizeof("My Key!!!")-1, plaintext, ciphertext, P, S);
    }

    // Print ciphertext in hexadecimal format
    std::cout << "Ciphertext: ";
    for (int i = 0; i < BLOCK_SIZE; i++) {
        std::cout << std::hex << std::setw(2) << std::setfill('0') << (int)ciphertext[i];
    }
    std::cout << std::endl;

    // Decrypt
    Blowfish_Decrypt(ciphertext, decryptedtext, P, S);

    // Print decrypted text
    std::cout << "Decrypted Text: ";
    for (int i = 0; i < BLOCK_SIZE; i++) {
        std::cout << decryptedtext[i];  // Print as characters
    }
    std::cout << std::endl;

    // Assert plaintext is the same as the cipher text
    for (int i = 0; i < BLOCK_SIZE; i++){
        if(decryptedtext[i] != plaintext[i]) return 1;
    }


    return 0;
}

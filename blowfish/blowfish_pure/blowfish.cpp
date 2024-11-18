#include "initial_data.h"
#include "blowfish.h"
#include <iostream>
#include <string>
#include <iomanip>
#include <algorithm>


// Encrypts a block of 64-bit data (Only used in SetKey function)
void Encrypt_SetKey(unsigned int& left, unsigned int& right, unsigned int P[18], unsigned int S[4][256]) {
    for (int i = 0; i < 16; i++) {
        left ^= P[i];         // XOR with P[i]
        right ^= feistel(left, S);  // XOR with feistel(left)
        std::swap(left, right); // Swap left and right
    }
    std::swap(left, right); // Undo the last swap
    right ^= P[16];
    left ^= P[17];
}

// Encrypts a block of 64-bit data
void Encrypt(const unsigned char plaintext[BLOCK_SIZE], unsigned char ciphertext[BLOCK_SIZE], unsigned int P[18], unsigned int S[4][256]) {
    unsigned int left, right;
    blockToWords(plaintext, left, right);  // Convert plaintext to words

    for (int i = 0; i < 16; i++) {
        left ^= P[i];         // XOR with P[i]
        right ^= feistel(left, S);  // XOR with feistel(left)
        std::swap(left, right); // Swap left and right
    }
    std::swap(left, right); // Undo the last swap
    right ^= P[16];
    left ^= P[17];
    wordsToBlock(left, right, ciphertext);  // Convert back to ciphertext block

}


void Decrypt(unsigned char ciphertext[BLOCK_SIZE], unsigned char decryptedtext[BLOCK_SIZE], unsigned int P[18], unsigned int S[4][256]) {
    // Perform the Blowfish decryption
    unsigned int left, right;
    blockToWords(ciphertext, left, right);  // Convert ciphertext back to words
    for (int i = 17; i > 1; i--) {  // Start from P[17] and go backwards to P[2]
        left ^= P[i];
        right ^= feistel(left, S);
        std::swap(left, right);
    }
    std::swap(left, right);  // Undo the last swap
    right ^= P[1];  // Apply P[1] and P[0]
    left ^= P[0];
    wordsToBlock(left, right, decryptedtext);  // Convert back to decrypted text block
}


// F function used in the Blowfish algorithm
unsigned int feistel(unsigned int x, unsigned int S[4][256]) {
    unsigned char a = (x >> 24) & 0xFF;
    unsigned char b = (x >> 16) & 0xFF;
    unsigned char c = (x >> 8) & 0xFF;
    unsigned char d = x & 0xFF;
    return ((S[0][a] + S[1][b]) ^ S[2][c]) + S[3][d];
}


void SetKey(unsigned char key[MAX_KEY_BYTE_LENGTH], size_t key_size, unsigned int P[18], unsigned int S[4][256]) {
    // Manually copy data from initial_parray into P
    for (int i = 0; i < 18; i++) {
        P[i] = initial_parray[i];
    }

    // Manually copy data from initial_sbox into S
    for (int i = 0; i < 4; ++i) {
        for (int j = 0; j < 256; ++j) {
            S[i][j] = initial_sbox[i][j];
        }
    }

    size_t keyIndex = 0;

    // XOR the P-array with the key
    for (int i = 0; i < 18; i++) {
        unsigned int data = 0;
        for (int j = 0; j < 4; j++) {
            data = (data << 8) | (key[keyIndex] & 0xFF);
            keyIndex = (keyIndex + 1) % key_size;
        }
        P[i] ^= data;
    }

    unsigned int left = 0, right = 0;

    // Generate the P-array
    for (int i = 0; i < 18; i += 2) {
        Encrypt_SetKey(left, right, P, S);
        P[i] = left;
        P[i + 1] = right;
    }

    // Generate the S-boxes
    for (int i = 0; i < 4; i++) {
        for (int j = 0; j < 256; j += 2) {
            Encrypt_SetKey(left, right, P, S);
            S[i][j] = left;
            S[i][j + 1] = right;
        }
    }
}



// Sets the key and encrypts the block
void SetKey_Encrypt(bool set_key, unsigned char key[MAX_KEY_BYTE_LENGTH], size_t key_size, const unsigned char plaintext[BLOCK_SIZE], unsigned char ciphertext[BLOCK_SIZE], unsigned int P[18], unsigned int S[4][256]){
    if(set_key){
        SetKey(key, key_size, P, S);

    }
    Encrypt(plaintext, ciphertext, P, S);
}



// Converts a 64-bit block into two 32-bit words
void blockToWords(const unsigned char block[BLOCK_SIZE], unsigned int& left, unsigned int& right) {
    left = (block[0] << 24) | (block[1] << 16) | (block[2] << 8) | block[3];
    right = (block[4] << 24) | (block[5] << 16) | (block[6] << 8) | block[7];
}

// Converts two 32-bit words back into a 64-bit block
void wordsToBlock(unsigned int left, unsigned int right, unsigned char block[BLOCK_SIZE]) {
    block[0] = (left >> 24) & 0xFF;
    block[1] = (left >> 16) & 0xFF;
    block[2] = (left >> 8) & 0xFF;
    block[3] = left & 0xFF;
    block[4] = (right >> 24) & 0xFF;
    block[5] = (right >> 16) & 0xFF;
    block[6] = (right >> 8) & 0xFF;
    block[7] = right & 0xFF;
}

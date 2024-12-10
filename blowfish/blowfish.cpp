#include "initial_data.h"
#include "blowfish.h"
#include <iostream>
#include <string>
#include <iomanip>
#include <algorithm>



// Need to read this paper still: https://ieeexplore.ieee.org/document/10620572
//  * ==========================================================================
//  * Encryption Performance Comparison
//  * ==========================================================================
//  * This implementation: 
//  * - Encryption/Decryption Time: 0.730 µs (0.00000073 s)
//  * - Benchmark: https://ieeexplore.ieee.org/document/9814070
//  *
//  * Reference Performance Data (Key Initialization & Encryption/Decryption):
//  * My Key init time: 0.00043s
//  * --------------------------------------------------------------------------
//  * 1. AMD 3600:
//  *    - Key Initialization: 0.003364 s
//  *    - Encryption/Decryption: 6.582 µs (0.000006582 s)
//  * 
//  * 2. Intel 6700k:
//  *    - Key Initialization: 0.003192 s
//  *    - Encryption/Decryption: 6.428 µs (0.000006428 s)
//  * 
//  * 3. Intel 1035G7:
//  *    - Key Initialization: 0.004024 s
//  *    - Encryption/Decryption: 7.643 µs (0.000007643 s)
//  * 
//  * 4. ZedBoard:
//  *    - Key Initialization: 0.0001253 s
//  *    - Encryption/Decryption: 0.253 µs (0.000000253 s)
//  *
//  * Comparison Summary:
//  * --------------------
//  * - My unoptimized implementation is projected to be:
//  *    - ~9x faster than AMD 3600
//  *    - ~8.8x faster than Intel 6700k
//  *    - ~10.5x faster than Intel 1035G7
//  *    - ~34.7% slower than ZedBoard
//  */


// // Encrypts a block of 64-bit data (Only used in SetKey function)
void Encrypt_SetKey(unsigned int& left, unsigned int& right, unsigned int P[PARRAY_SIZE], unsigned int S[SBOX_SIZE_1][SBOX_SIZE_2]) {
    // #pragma HLS INLINE
    unsigned int localLeft;
    unsigned int localRight;
    unsigned int feistel_result;
   
    // 16 feistel rounds
    ENCRYPT_FEISTEL:
    for (int i = 0; i < 16; i++) {
        localLeft = left ^ P[i];                 // XOR with P[i]
        feistel_result = feistel(localLeft, S);
        localRight = right ^ feistel_result;    // XOR with feistel(left)
        right = localLeft;
        left = localRight;
    }
    std::swap(left, right);           // Undo the last swap
    right ^= P[16];
    left ^= P[17];
}


// Encrypts a block of 64-bit data
void Blowfish_Encrypt(const unsigned char plaintext[BLOCK_SIZE], unsigned char ciphertext[BLOCK_SIZE], unsigned int P[PARRAY_SIZE], unsigned int S[SBOX_SIZE_1][SBOX_SIZE_2]) {
    unsigned int left, right;
    blockToWords(plaintext, left, right);   // Convert plaintext to words

    // 16 feistel rounds
    ENCRYPT_FEISTEL:
    for (int i = 0; i < 16; i++) {
        left ^= P[i];                       // XOR with P[i]
        right ^= feistel(left, S);          // XOR with feistel(left)
        std::swap(left, right);             // Swap left and right
    }
    std::swap(left, right);                 // Undo the last swap
    right ^= P[16];
    left ^= P[17];
    wordsToBlock(left, right, ciphertext);  // Convert back to ciphertext block
}



// Decrypts a block of 64-bit data
void Blowfish_Decrypt(unsigned char ciphertext[BLOCK_SIZE], unsigned char decryptedtext[BLOCK_SIZE], unsigned int P[PARRAY_SIZE], unsigned int S[SBOX_SIZE_1][SBOX_SIZE_2]) {
    unsigned int left, right;
    blockToWords(ciphertext, left, right);    // Convert ciphertext back to words

    // 16 feistel rounds
    DECRYPT_FEISTEL:
    for (int i = 17; i > 1; i--) {            // Start from P[17] and go backwards to P[2]
        left ^= P[i];                         // XOR with P[i]
        right ^= feistel(left, S);            // XOR with feistel(left)
        std::swap(left, right);
    }
    std::swap(left, right);                    // Undo the last swap
    right ^= P[1];                             // Apply P[1] and P[0]
    left ^= P[0];
    wordsToBlock(left, right, decryptedtext);  // Convert back to decrypted text block
}



// F function used in the Blowfish algorithm
unsigned int feistel(unsigned int x, unsigned int S[SBOX_SIZE_1][SBOX_SIZE_2]) {
    unsigned char a = (x >> 24) & 0xFF;
    unsigned char b = (x >> 16) & 0xFF;
    unsigned char c = (x >> 8) & 0xFF;
    unsigned char d = x & 0xFF;
    // printf("a: %d\n", a);
    // printf("b: %d\n", b);
    // printf("c: %d\n", c);
    // printf("d: %d\n", d);
    return ((S[0][a] + S[1][b]) ^ S[2][c]) + S[3][d];
}


// Used to initialize the parrays and sboxes with the provided key
// min: 0.185 ms
// max: 0.185 ms
// +-----------------+---------+-------+--------+-------+-----+
// |Utilization (%)  |        0|      0|       8|     18|    0|
// +-----------------+---------+-------+--------+-------+-----+
void Blowfish_SetKey(unsigned char key[MAX_KEY_BYTE_LENGTH], size_t key_size, unsigned int P[PARRAY_SIZE], unsigned int S[SBOX_SIZE_1][SBOX_SIZE_2]) {
    // // Parray
    // #pragma HLS array_reshape variable=initial_parray complete dim=0
    // #pragma HLS array_partition variable=P complete dim=0

    // // Sboxes
    // #pragma HLS array_reshape variable=initial_sbox complete dim=1
    // #pragma HLS array_partition variable=S complete dim=1
    
    // #pragma HLS array_reshape variable=initial_sbox complete dim=2


    size_t keyIndex = 0;

    // XOR the P-array with the key
    XOR_PARRAY_1:
    for (int i = 0; i < PARRAY_SIZE; i++) {
        unsigned int data = 0;
        XOR_PARRAY_2:
        for (int j = 0; j < 4; j++) {
            int currentIndex = (i * 4 + j) % key_size; // Pre-compute the key index
            data = (data << 8) | (key[currentIndex] & 0xFF);
        }
        P[i] ^= data;
    }

    unsigned int left = 0, right = 0;

    // Generate the P-array
    GENERATE_PARRAY_1:
    for (int i = 0; i < PARRAY_SIZE; i += 2) {
        Encrypt_SetKey(left, right, P, S);
        P[i] = left;
        P[i + 1] = right;
    }

    // Generate the S-boxes
    GENERATE_SBOX_1:
    for (int i = 0; i < SBOX_SIZE_1; i++) {
        GENERATE_SBOX_2:
        for (int j = 0; j < SBOX_SIZE_2; j += 2) {
            Encrypt_SetKey(left, right, P, S);
            S[i][j] = left;
            S[i][j + 1] = right;
        }
    }
}



// Sets the key and encrypts the block
void Blowfish_SetKey_Encrypt(bool set_key, unsigned char key[MAX_KEY_BYTE_LENGTH], size_t key_size, const unsigned char plaintext[BLOCK_SIZE], unsigned char ciphertext[BLOCK_SIZE], unsigned int P[PARRAY_SIZE], unsigned int S[SBOX_SIZE_1][SBOX_SIZE_2]){
    // Parray partitions
    #pragma HLS array_reshape variable=initial_parray complete dim=0
    #pragma HLS array_partition variable=P complete dim=0

    // Sboxes
    #pragma HLS array_reshape variable=initial_sbox complete dim=1
    #pragma HLS array_partition variable=S complete dim=1
    
    #pragma HLS array_reshape variable=initial_sbox complete dim=2


    if(set_key){
        Blowfish_SetKey(key, key_size, P, S);
    }
    
    Blowfish_Encrypt(plaintext, ciphertext, P, S);
    // unsigned int left, right;
    // blockToWords(plaintext, left, right);   // Convert plaintext to words
    // Encrypt_SetKey(left, right, P, S);
    // wordsToBlock(left, right, ciphertext);  // Convert back to ciphertext block

}

// Sets the key, encrypts, and decrypts the block (Mainly for testing purposes)
void Blowfish_SetKey_Encrypt_Decrypt(bool set_key, unsigned char key[MAX_KEY_BYTE_LENGTH], size_t key_size, const unsigned char plaintext[BLOCK_SIZE], unsigned char decryptedtext[BLOCK_SIZE], unsigned int P[PARRAY_SIZE], unsigned int S[SBOX_SIZE_1][SBOX_SIZE_2]){
    // // Parray partitions
    // #pragma HLS array_reshape variable=initial_parray complete dim=0
    // #pragma HLS array_partition variable=P complete dim=0

    // // Sboxes
    // #pragma HLS array_reshape variable=initial_sbox complete dim=1
    // #pragma HLS array_partition variable=S complete dim=1
    
    // #pragma HLS array_reshape variable=initial_sbox complete dim=2
    // #pragma HLS array_partition variable=S block factor=2 dim=2
    // #pragma HLS array_partition variable=S cyclic factor=2 dim=2
    // #pragma HLS array_partition variable=S complete dim=2

    unsigned char ciphertext[BLOCK_SIZE];

    Blowfish_SetKey(key, key_size, P, S);
    Blowfish_Encrypt(plaintext, ciphertext, P, S);
    Blowfish_Decrypt(ciphertext, decryptedtext, P, S);

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


void split_bit128(const ap_uint<128>& plaintext, unsigned char plaintext_1[BLOCK_SIZE], unsigned char plaintext_2[BLOCK_SIZE]) {
    // Extract the lower 64 bits (first part) and upper 64 bits (second part)
    // ap_uint<64> lower_64 = plaintext.range(63, 0);   // Extract bits 0 to 63 (lower part)
    // ap_uint<64> upper_64 = plaintext.range(127, 64); // Extract bits 64 to 127 (upper part)

    // Copy the lower 64 bits into plaintext_1 in little-endian order
    // for (int i = 0; i < BLOCK_SIZE; i++) {
    //     // Extract bytes starting from the least significant byte (little-endian)
    //     plaintext_1[i] = static_cast<unsigned char>((lower_64 >> (8 * i)) & 0xFF);
    // }

    // // Copy the upper 64 bits into plaintext_2 in little-endian order
    // for (int i = 0; i < BLOCK_SIZE; i++) {
    //     // Extract bytes starting from the least significant byte (little-endian)
    //     plaintext_2[i] = static_cast<unsigned char>((upper_64 >> (8 * i)) & 0xFF);
    // }

    ap_uint<64> lower_64 = plaintext(63, 0);   // Extract bits 0 to 63 (lower part)
    ap_uint<64> upper_64 = plaintext(127, 64); // Extract bits 64 to 127 (upper part)
    for (int i = 0; i < 8; i++) {
        // Extract bytes starting from the least significant byte (little-endian)
        // plaintext_1[i] = static_cast<unsigned char>((lower_64 >> (8 * i)) & 0xFF);

        plaintext_1[i] = lower_64(8*i + 7, 8*i);
    }

    // Copy the upper 64 bits into plaintext_2 in little-endian order
    for (int i = 0; i < 8; i++) {
        // Extract bytes starting from the least significant byte (little-endian)
        // plaintext_2[i] = static_cast<unsigned char>((upper_64 >> (8 * i)) & 0xFF);

        plaintext_2[i] = upper_64(8*i + 7, 8*i);
    }
}


ap_uint<128> combine_to_bit128(unsigned char plaintext_1[BLOCK_SIZE], unsigned char plaintext_2[BLOCK_SIZE]) {
    ap_uint<128> combined = 0;  // Initialize a 128-bit variable to 0

    // Combine the first 64 bits (from plaintext_1) into the lower 64 bits of combined
    for (int i = 0; i < BLOCK_SIZE; i++) {
        combined.range(8*(i+1)-1, 8*i) = plaintext_1[i];  // Place each byte in the correct range
    }

    // Combine the second 64 bits (from plaintext_2) into the upper 64 bits of combined
    for (int i = 0; i < BLOCK_SIZE; i++) {
        combined.range(8*(i+9)-1, 8*(i+8)) = plaintext_2[i];  // Place each byte in the correct range
    }

    return combined;
}


void print_array(const unsigned char arr[BLOCK_SIZE]) {
    for (int i = 0; i < BLOCK_SIZE; i++) {
        std::cout << std::hex << std::setw(2) << std::setfill('0') << (int)arr[i];
    }
    std::cout << std::endl;
}


// #include "initial_data.h"
// #include "blowfish.h"
// #include <iostream>
// #include <string>
// #include <iomanip>
// #include <algorithm>



// // Need to read this paper still: https://ieeexplore.ieee.org/document/10620572
// //  * ==========================================================================
// //  * Encryption Performance Comparison
// //  * ==========================================================================
// //  * This implementation: 
// //  * - Encryption/Decryption Time: 0.730 µs (0.00000073 s)
// //  * - Benchmark: https://ieeexplore.ieee.org/document/9814070
// //  *
// //  * Reference Performance Data (Key Initialization & Encryption/Decryption):
// //  * My Key init time: 0.00043s
// //  * --------------------------------------------------------------------------
// //  * 1. AMD 3600:
// //  *    - Key Initialization: 0.003364 s
// //  *    - Encryption/Decryption: 6.582 µs (0.000006582 s)
// //  * 
// //  * 2. Intel 6700k:
// //  *    - Key Initialization: 0.003192 s
// //  *    - Encryption/Decryption: 6.428 µs (0.000006428 s)
// //  * 
// //  * 3. Intel 1035G7:
// //  *    - Key Initialization: 0.004024 s
// //  *    - Encryption/Decryption: 7.643 µs (0.000007643 s)
// //  * 
// //  * 4. ZedBoard:
// //  *    - Key Initialization: 0.0001253 s
// //  *    - Encryption/Decryption: 0.253 µs (0.000000253 s)
// //  *
// //  * Comparison Summary:
// //  * --------------------
// //  * - My unoptimized implementation is projected to be:
// //  *    - ~9x faster than AMD 3600
// //  *    - ~8.8x faster than Intel 6700k
// //  *    - ~10.5x faster than Intel 1035G7
// //  *    - ~34.7% slower than ZedBoard
// //  */


// // // Encrypts a block of 64-bit data (Only used in SetKey function)
// void Encrypt_SetKey(unsigned int& left, unsigned int& right, unsigned int P[PARRAY_SIZE], unsigned int S[SBOX_SIZE_1][SBOX_SIZE_2]) {
//     // #pragma HLS INLINE
//     unsigned int localLeft;
//     unsigned int localRight;
//     unsigned int feistel_result;
   
//     // 16 feistel rounds
//     ENCRYPT_FEISTEL:
//     for (int i = 0; i < 16; i++) {
//         localLeft = left ^ P[i];                 // XOR with P[i]
//         feistel_result = feistel(localLeft, S);
//         localRight = right ^ feistel_result;    // XOR with feistel(left)
//         right = localLeft;
//         left = localRight;
//     }
//     std::swap(left, right);           // Undo the last swap
//     right ^= P[16];
//     left ^= P[17];
// }


// // Encrypts a block of 64-bit data
// void Blowfish_Encrypt(const unsigned char plaintext[BLOCK_SIZE], unsigned char ciphertext[BLOCK_SIZE], unsigned int P[PARRAY_SIZE], unsigned int S[SBOX_SIZE_1][SBOX_SIZE_2]) {
//     unsigned int left, right;
//     blockToWords(plaintext, left, right);   // Convert plaintext to words

//     // 16 feistel rounds
//     ENCRYPT_FEISTEL:
//     for (int i = 0; i < 16; i++) {
//         left ^= P[i];                       // XOR with P[i]
//         right ^= feistel(left, S);          // XOR with feistel(left)
//         std::swap(left, right);             // Swap left and right
//     }
//     std::swap(left, right);                 // Undo the last swap
//     right ^= P[16];
//     left ^= P[17];
//     wordsToBlock(left, right, ciphertext);  // Convert back to ciphertext block
// }


// // Decrypts a block of 64-bit data
// void Blowfish_Decrypt(unsigned char ciphertext[BLOCK_SIZE], unsigned char decryptedtext[BLOCK_SIZE], unsigned int P[PARRAY_SIZE], unsigned int S[SBOX_SIZE_1][SBOX_SIZE_2]) {
//     unsigned int left, right;
//     blockToWords(ciphertext, left, right);    // Convert ciphertext back to words

//     // 16 feistel rounds
//     DECRYPT_FEISTEL:
//     for (int i = 17; i > 1; i--) {            // Start from P[17] and go backwards to P[2]
//         left ^= P[i];                         // XOR with P[i]
//         right ^= feistel(left, S);            // XOR with feistel(left)
//         std::swap(left, right);
//     }
//     std::swap(left, right);                    // Undo the last swap
//     right ^= P[1];                             // Apply P[1] and P[0]
//     left ^= P[0];
//     wordsToBlock(left, right, decryptedtext);  // Convert back to decrypted text block
// }


// // F function used in the Blowfish algorithm
// unsigned int feistel(unsigned int x, unsigned int S[SBOX_SIZE_1][SBOX_SIZE_2]) {
//     unsigned char a = (x >> 24) & 0xFF;
//     unsigned char b = (x >> 16) & 0xFF;
//     unsigned char c = (x >> 8) & 0xFF;
//     unsigned char d = x & 0xFF;
//     // printf("a: %d\n", a);
//     // printf("b: %d\n", b);
//     // printf("c: %d\n", c);
//     // printf("d: %d\n", d);
//     return ((S[0][a] + S[1][b]) ^ S[2][c]) + S[3][d];
// }


// // Used to initialize the parrays and sboxes with the provided key
// // Unoptimized: 
// // min: 0.223 ms
// // max: 0.223 ms
// // +-----------------+---------+-------+--------+-------+-----+
// // |Utilization (%)  |        1|      0|       3|     33|    0|
// // +-----------------+---------+-------+--------+-------+-----+
// // Optimized: 
// // 
// void Blowfish_SetKey(unsigned char key[MAX_KEY_BYTE_LENGTH], size_t key_size, unsigned int P[PARRAY_SIZE], unsigned int S[SBOX_SIZE_1][SBOX_SIZE_2]) {
//     // #pragma HLS array_reshape variable=initial_parray complete dim=0
//     // #pragma HLS array_partition variable=P complete dim=0
//     // #pragma HLS array_partition variable=initial_sbox cyclic factor=4 dim=1
//     // #pragma HLS array_reshape variable=initial_sbox complete dim=0
//     // #pragma HLS array_partition variable=S cyclic factor=4 dim=1
//     // #pragma HLS array_partition variable=initial_sbox block factor=4 dim=1
//     // #pragma HLS array_partition variable=S block factor=4 dim=1
//     // #pragma HLS array_partition variable=S complete dim=1
//     // #pragma HLS INLINE

//     #pragma HLS array_reshape variable=initial_parray complete dim=0
//     #pragma HLS array_partition variable=P complete dim=0


//     #pragma HLS array_reshape variable=initial_sbox complete dim=1
//     #pragma HLS array_partition variable=S complete dim=1
//     #pragma HLS array_reshape variable=initial_sbox complete dim=2
//     // #pragma HLS array_partition variable=S block factor=2 dim=2
//     #pragma HLS array_partition variable=S cyclic factor=2 dim=2


//     size_t keyIndex = 0;

//     // XOR the P-array with the key
//     XOR_PARRAY_1:
//     for (int i = 0; i < PARRAY_SIZE; i++) {
//         unsigned int data = 0;
//         XOR_PARRAY_2:
//         for (int j = 0; j < 4; j++) {
//             int currentIndex = (i * 4 + j) % key_size; // Pre-compute the key index
//             data = (data << 8) | (key[currentIndex] & 0xFF);
//         }
//         unsigned int P_temp = P[i] ^ data;
//         P[i] = P_temp;
//     }

//     unsigned int left = 0, right = 0;

//     // Generate the P-array
//     GENERATE_PARRAY_1:
//     for (int i = 0; i < PARRAY_SIZE; i += 2) {
//         Encrypt_SetKey(left, right, P, S);
//         P[i] = left;
//         P[i + 1] = right;
//     }

//     // Generate the S-boxes
//     GENERATE_SBOX_1:
//     for (int i = 0; i < SBOX_SIZE_1; i++) {
//         GENERATE_SBOX_2:
//         for (int j = 0; j < SBOX_SIZE_2; j += 2) {
//             Encrypt_SetKey(left, right, P, S);
//             S[i][j] = left;
//             S[i][j + 1] = right;
//         }
//     }
// }



// // Sets the key and encrypts the block
// void Blowfish_SetKey_Encrypt(bool set_key, unsigned char key[MAX_KEY_BYTE_LENGTH], size_t key_size, const unsigned char plaintext[BLOCK_SIZE], unsigned char ciphertext[BLOCK_SIZE], unsigned int P[PARRAY_SIZE], unsigned int S[SBOX_SIZE_1][SBOX_SIZE_2]){
//     // #pragma HLS array_partition variable=initial_parray complete dim=0
//     // #pragma HLS array_reshape variable=initial_parray complete dim=0
//     // #pragma HLS array_partition variable=P complete dim=0
//     // #pragma HLS array_reshape variable=initial_sbox complete dim=1
//     // #pragma HLS array_partition variable=S complete dim=1

//     // #pragma HLS array_partition variable=S cyclic factor=4 dim=1
//     // #pragma HLS array_partition variable=initial_sbox block factor=4 dim=1
//     // #pragma HLS array_partition variable=S block factor=4 dim=1
//     // #pragma HLS array_partition variable=initial_sbox cyclic factor=4 dim=1
//     // #pragma HLS array_partition variable=initial_sbox complete dim=1
//     // #pragma HLS INLINE
//     // #pragma HLS inline off


//     if(set_key){
//         Blowfish_SetKey(key, key_size, P, S);
//     }
    
//     Blowfish_Encrypt(plaintext, ciphertext, P, S);
//     // unsigned int left, right;
//     // blockToWords(plaintext, left, right);   // Convert plaintext to words
//     // Encrypt_SetKey(left, right, P, S);
//     // wordsToBlock(left, right, ciphertext);  // Convert back to ciphertext block

// }

// // Sets the key, encrypts, and decrypts the block (Mainly for testing purposes)
// void Blowfish_SetKey_Encrypt_Decrypt(bool set_key, unsigned char key[MAX_KEY_BYTE_LENGTH], size_t key_size, const unsigned char plaintext[BLOCK_SIZE], unsigned char decryptedtext[BLOCK_SIZE], unsigned int P[PARRAY_SIZE], unsigned int S[SBOX_SIZE_1][SBOX_SIZE_2]){
//     // #pragma HLS array_partition variable=initial_parray complete dim=0
//     // #pragma HLS array_partition variable=P complete dim=0
//     // #pragma HLS array_partition variable=initial_sbox cyclic factor=4 dim=1
//     // #pragma HLS array_partition variable=S cyclic factor=4 dim=1

//     #pragma HLS array_reshape variable=initial_parray complete dim=0
//     #pragma HLS array_partition variable=P complete dim=0


    // #pragma HLS array_reshape variable=initial_sbox complete dim=1
    // #pragma HLS array_partition variable=S complete dim=1
    // #pragma HLS array_reshape variable=initial_sbox complete dim=2
    // // #pragma HLS array_partition variable=S block factor=2 dim=2
    // #pragma HLS array_partition variable=S cyclic factor=2 dim=2

//     unsigned char ciphertext[BLOCK_SIZE];

//     Blowfish_SetKey(key, key_size, P, S);
//     Blowfish_Encrypt(plaintext, ciphertext, P, S);
//     Blowfish_Decrypt(ciphertext, decryptedtext, P, S);

// }



// // Converts a 64-bit block into two 32-bit words
// void blockToWords(const unsigned char block[BLOCK_SIZE], unsigned int& left, unsigned int& right) {
//     left = (block[0] << 24) | (block[1] << 16) | (block[2] << 8) | block[3];
//     right = (block[4] << 24) | (block[5] << 16) | (block[6] << 8) | block[7];
// }

// // Converts two 32-bit words back into a 64-bit block
// void wordsToBlock(unsigned int left, unsigned int right, unsigned char block[BLOCK_SIZE]) {
//     block[0] = (left >> 24) & 0xFF;
//     block[1] = (left >> 16) & 0xFF;
//     block[2] = (left >> 8) & 0xFF;
//     block[3] = left & 0xFF;
//     block[4] = (right >> 24) & 0xFF;
//     block[5] = (right >> 16) & 0xFF;
//     block[6] = (right >> 8) & 0xFF;
//     block[7] = right & 0xFF;
// }


// void split_bit128(const ap_uint<128>& plaintext, unsigned char plaintext_1[BLOCK_SIZE], unsigned char plaintext_2[BLOCK_SIZE]) {
//     ap_uint<64> lower_64 = plaintext(63, 0);   // Extract bits 0 to 63 (lower part)
//     ap_uint<64> upper_64 = plaintext(127, 64); // Extract bits 64 to 127 (upper part)
//     for (int i = 0; i < 8; i++) {
//         // Extract bytes starting from the least significant byte (little-endian)
//         // plaintext_1[i] = static_cast<unsigned char>((lower_64 >> (8 * i)) & 0xFF);

//         plaintext_1[i] = lower_64(8*i + 7, 8*i);
//     }

//     // Copy the upper 64 bits into plaintext_2 in little-endian order
//     for (int i = 0; i < 8; i++) {
//         // Extract bytes starting from the least significant byte (little-endian)
//         // plaintext_2[i] = static_cast<unsigned char>((upper_64 >> (8 * i)) & 0xFF);

//         plaintext_2[i] = upper_64(8*i + 7, 8*i);
//     }
// }


// ap_uint<128> combine_to_bit128(unsigned char plaintext_1[BLOCK_SIZE], unsigned char plaintext_2[BLOCK_SIZE]) {
//     ap_uint<128> combined = 0;  // Initialize a 128-bit variable to 0
//     // Combine the first 64 bits (from plaintext_1) into the lower 64 bits of combined
//     for (int i = 0; i < BLOCK_SIZE; i++) {
//         combined.range(8*(i+1)-1, 8*i) = plaintext_1[i];  // Place each byte in the correct range
//     }

//     // Combine the second 64 bits (from plaintext_2) into the upper 64 bits of combined
//     for (int i = 0; i < BLOCK_SIZE; i++) {
//         combined.range(8*(i+9)-1, 8*(i+8)) = plaintext_2[i];  // Place each byte in the correct range
//     }

//     return combined;
// }


// void print_array(const unsigned char arr[BLOCK_SIZE]) {
//     for (int i = 0; i < BLOCK_SIZE; i++) {
//         std::cout << std::hex << std::setw(2) << std::setfill('0') << (int)arr[i];
//     }
//     std::cout << std::endl;
// }
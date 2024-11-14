#include "blowfish.h"
#include "initial_data.h"
#include <stdint.h>

// ========================================================================================
// ONLY SUPPORTS 8 byte messages and nothing else. Passes responsibility of parsing whole 
// input message into 8 Byte chunks to some other party.  
// ========================================================================================
// TODO: Ensure sDecryptBlock and DecryptBlock are the same (same for encrypt functions)



// Define a helper union to handle endianess conversion
union Converter32 {
    uint32_t bit_32;
    struct {
#ifdef __LITTLE_ENDIAN__
        uint8_t byte3;
        uint8_t byte2;
        uint8_t byte1;
        uint8_t byte0;
#else
        uint8_t byte0;
        uint8_t byte1;
        uint8_t byte2;
        uint8_t byte3;
#endif
    } bit_8;
};


void Blowfish::SetKey(const unsigned char key[MAX_KEY_BYTE_LENGTH], int key_byte_length)
{
    // Copy P-array initialization data
    SETKEY1:
    for (int i = 0; i < PARRAY_SIZE; ++i)  // Assume PARRAY_SIZE is the size of the P-array
        pary_[i] = initial_parray[i];

    // Copy S-box initialization data
    SETKEY2:
    for (int i = 0; i < 4; ++i)
        for (int j = 0; j < 256; ++j)
            sbox_[i][j] = initial_sbox[i][j];

    // Calculate the maximum buffer length and the actual buffer length
    // NOTE, we cannot use the GCD Function because it uses while loop...
    // Therefore, we need to be conservative and use max case. GCD (4, x) where x < 56 will NEVER
    // be more than 4! 
    const int max_buffer_length = MAX_KEY_BYTE_LENGTH / 4;
    const int buffer_length = key_byte_length / 4;


    // Define a fixed-size key buffer (16 entries here; adjust based on key size)
    uint32_t key_buffer[16];

    // Create the key buffer by breaking down the key bytes
    SETKEY3:
    for (int i = 0; i < max_buffer_length; ++i) {
        if (i < buffer_length) {
            // Convert key bytes to uint32_t (4 bytes)
            uint32_t key_word = 0;
            key_word |= key[(i * 4 + 0) % key_byte_length] << 24;
            key_word |= key[(i * 4 + 1) % key_byte_length] << 16;
            key_word |= key[(i * 4 + 2) % key_byte_length] << 8;
            key_word |= key[(i * 4 + 3) % key_byte_length];
            key_buffer[i] = key_word;
        }
    }

    // XOR the P-array with the key buffer
    SETKEY4:
    for (int i = 0; i < PARRAY_SIZE; ++i) {  // Replace with actual size of P-array
        uint32_t key_uint32 = key_buffer[i % buffer_length];
        pary_[i] ^= key_uint32;
    }

    uint32_t left = 0x00000000;
    uint32_t right = 0x00000000;    

    // Values post feistal
    uint32_t left_1;
    uint32_t right_1;
    uint32_t left_2;
    uint32_t right_2;
    
    
    // Encrypt P-array
    SETKEY5:
    for (int i = 0; i < PARRAY_SIZE / 2; ++i) {  // Adjust for the actual size of P-array
        sEncryptBlock(left, right, left_1, right_1);
        // EncryptBlock(&left, &right);
        pary_[i * 2] = left_1;
        pary_[i * 2 + 1] = right_1;
    }
    // printf("%d\n",left_1);
    // printf("%d\n",right_1);
    // printf("%d\n",left);
    // printf("%d\n",right);

    // Encrypt S-box
    SETKEY6:
    for (int i = 0; i < ((SBOX_SIZE_1 * SBOX_SIZE_2) / 2); ++i) {  // Adjust size to match S-box dimensions
        sEncryptBlock(left_1, right_1, left_2, right_2);
        // EncryptBlock(&left, &right);
        sbox_[i / 256][i % 256] = left_2;
        sbox_[(i / 256)][(i % 256) + 1] = right_2;
    }
    // printf("%d\n",left_2);
    // printf("%d\n",right_2);
    // printf("%d\n",left);
    // printf("%d\n",right);
}


void Blowfish::Encrypt(unsigned char dst[BLOCK_SIZE], const unsigned char src[BLOCK_SIZE]) const
{
    // Copy source data to destination, ensuring synthesis-friendly fixed array copy
    for (int i = 0; i < BLOCK_SIZE; ++i) {
        dst[i] = src[i];
    }

    // Encrypt in 8-byte blocks (64 bits, 2 * 32-bit words)
    // Read two 32-bit words from dst as left and right (since each block is 64 bits, split into 2 x 32 bits)
    uint32_t left = (dst[0] << 24) | (dst[1] << 16) | 
                    (dst[2] << 8) | dst[3];
    uint32_t right = (dst[4] << 24) | (dst[5] << 16) | 
                        (dst[6] << 8) | dst[7];
    
    // Values post feistal
    uint32_t left_new;
    uint32_t right_new;
    // Encrypt the block
    sEncryptBlock(left, right, left_new, right_new);
    
    // Store the encrypted values back into dst (reassemble 32-bit words back into 8 bytes)
    dst[0] = (left_new >> 24) & 0xFF;
    dst[1] = (left_new >> 16) & 0xFF;
    dst[2] = (left_new >> 8) & 0xFF;
    dst[3] = left_new & 0xFF;
    dst[4] = (right_new >> 24) & 0xFF;
    dst[5] = (right_new >> 16) & 0xFF;
    dst[6] = (right_new >> 8) & 0xFF;
    dst[7] = right_new & 0xFF;

}

void Blowfish::Decrypt(unsigned char dst[BLOCK_SIZE], const unsigned char src[BLOCK_SIZE]) const
{
    // Copy source data to destination, ensuring synthesis-friendly fixed array copy
    for (int i = 0; i < BLOCK_SIZE; ++i) {
        dst[i] = src[i];
    }

    // // Decrypt in 8-byte blocks (64 bits, 2 * 32-bit words)
    int i = 0;
    // Read two 32-bit words from dst as left and right (since each block is 64 bits, split into 2 x 32 bits)
    uint32_t left = (dst[0] << 24) | (dst[1] << 16) | 
                    (dst[2] << 8) | dst[3];
    uint32_t right = (dst[4] << 24) | (dst[5] << 16) | 
                        (dst[6] << 8) | dst[7];
    
    
    // Values post feistal
    uint32_t left_new;
    uint32_t right_new;
    // Decrypt the block
    sDecryptBlock(left, right, left_new, right_new);
    
    // Store the decrypted values back into dst (reassemble 32-bit words back into 8 bytes)
    dst[0] = (left_new >> 24) & 0xFF;
    dst[1] = (left_new >> 16) & 0xFF;
    dst[2] = (left_new >> 8) & 0xFF;
    dst[3] = left_new & 0xFF;
    dst[4] = (right_new >> 24) & 0xFF;
    dst[5] = (right_new >> 16) & 0xFF;
    dst[6] = (right_new >> 8) & 0xFF;
    dst[7] = right_new & 0xFF;
}


// Replace std::swap with manual swap
void Blowfish::EncryptBlock(uint32_t *left, uint32_t *right) const {
    ENCRYPTBLOCK1:
    for (int i = 0; i < 16; ++i) {
        *left ^= pary_[i];
        *right ^= Feistel(*left);
        
        uint32_t temp = *left;
        *left = *right;
        *right = temp;
    }
    
    uint32_t temp = *left;
    *left = *right;
    *right = temp;
    
    *right ^= pary_[16];
    *left ^= pary_[17];
}

void Blowfish::DecryptBlock(uint32_t *left, uint32_t *right) const {
    for (int i = 0; i < 16; ++i) {
        *left ^= pary_[17 - i];
        *right ^= Feistel(*left);
        
        uint32_t temp = *left;
        *left = *right;
        *right = temp;
    }
    
    uint32_t temp = *left;
    *left = *right;
    *right = temp;
    
    *right ^= pary_[1];
    *left ^= pary_[0];
}



void Blowfish::sEncryptBlock(uint32_t left, uint32_t right, uint32_t &left_new, uint32_t &right_new) const {
    left_new = left;
    right_new = right;

    ENCRYPTBLOCK1:
    for (int i = 0; i < 16; ++i) {
        left_new ^= pary_[i];
        right_new ^= Feistel(left_new);

        // Manual swap between left_new and right_new
        uint32_t temp = left_new;
        left_new = right_new;
        right_new = temp;
    }

    // Final swap
    uint32_t temp = left_new;
    left_new = right_new;
    right_new = temp;

    // Final XORs
    right_new ^= pary_[16];
    left_new ^= pary_[17];
}



void Blowfish::sDecryptBlock(uint32_t left, uint32_t right, uint32_t &left_new, uint32_t &right_new) const {
    // Initialize left_new and right_new with left and right
    left_new = left;
    right_new = right;

    // Perform 16 rounds of the Feistel decryption
    for (int i = 0; i < 16; ++i) {
        left_new ^= pary_[17 - i];
        right_new ^= Feistel(left_new);
        
        // Swap left_new and right_new
        uint32_t temp = left_new;
        left_new = right_new;
        right_new = temp;
    }
    
    // Final swap and XOR operations
    uint32_t temp = left_new;
    left_new = right_new;
    right_new = temp;

    right_new ^= pary_[1];
    left_new ^= pary_[0];
}


// Feistel function
uint32_t Blowfish::Feistel(uint32_t value) const {
    Converter32 converter;
    converter.bit_32 = value;
    
    uint8_t a = converter.bit_8.byte0;
    uint8_t b = converter.bit_8.byte1;
    uint8_t c = converter.bit_8.byte2;
    uint8_t d = converter.bit_8.byte3;
    
    return ((sbox_[0][a] + sbox_[1][b]) ^ sbox_[2][c]) + sbox_[3][d];
}

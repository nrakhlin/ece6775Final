//
// Blowfish C++ implementation
//
// CC0 - PUBLIC DOMAIN
// This work is free of known copyright restrictions.
// http://creativecommons.org/publicdomain/zero/1.0/
//

// #pragma once

#ifndef __blowfish__
#define __blowfish__

#include <cstdio>
#include <stdint.h>
#include <stdio.h>
#include <cstdlib>
// #include <hls_stream.h>
// #include "ap_fixed.h"
// #include "ap_int.h"

#define BLOCK_SIZE 8           // Blowfish requires block size to be 64 bits or 8 bytes
#define MAX_KEY_BYTE_LENGTH 56 // Max size of key in bytes

class Blowfish {
public:
    // void SetKey(const unsigned char* key, int key_byte_length);
    void SetKey(const unsigned char key[MAX_KEY_BYTE_LENGTH], int key_byte_length);
    void Encrypt(unsigned char* dst, const unsigned char* src) const;
    void Decrypt(unsigned char* dst, const unsigned char* src) const;
    
private:
    void sEncryptBlock(uint32_t left, uint32_t right, uint32_t &left_new, uint32_t &right_new) const;
    void sDecryptBlock(uint32_t left, uint32_t right, uint32_t &left_new, uint32_t &right_new) const;
    uint32_t Feistel(uint32_t value) const;
    
private:
// This might be an issue...
    uint32_t pary_[18];
    uint32_t sbox_[4][256];
};

#endif /* defined(__blowfish__) */
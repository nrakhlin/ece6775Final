#ifndef CONSTANTS_H
#define CONSTANTS_H

#include <stddef.h> // for size_t
// #include <ap_int.h>

// typedef bool bit;
// typedef ap_int<8> bit8_t;
// typedef ap_int<16> bit16_t;
// typedef ap_uint<2> bit2_t;
// typedef ap_uint<4> bit4_t;
// typedef ap_uint<32> bit32_t;

// #define KEY_SIZE bit8_t(16)
// #define NBRROUNDS bit8_t(10)
// #define EXPAND_KEY_SIZE bit8_t(16 * (NBRROUNDS + 1))

// bit8_t KEY_SIZE = 16;
// bit8_t NBRROUNDS 10;
// bit8_t EXPAND_KEY_SIZE 16 * (NBRROUNDS + 1);

#define KEY_SIZE 16
/*
AES-128: 128-bit key (16 bytes), 10 rounds
AES-192: 192-bit key (24 bytes), 12 rounds
AES-256: 256-bit key (32 bytes), 14 rounds
*/
#define NBRROUNDS 10
#define EXPAND_KEY_SIZE (16 * (NBRROUNDS + 1))

#endif
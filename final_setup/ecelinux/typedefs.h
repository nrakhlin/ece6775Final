//===========================================================================
// typedefs.h
//===========================================================================
// @brief: This header defines the shorthand of several ap_uint data types.

#ifndef TYPEDEFS_H
#define TYPEDEFS_H

#include "ap_int.h"

typedef ap_uint<3> bit3_t;
typedef ap_uint<4> bit4_t;
typedef ap_uint<6> bit6_t;
typedef ap_uint<32> bit32_t;
typedef ap_uint<64> bit64_t;
typedef ap_uint<128> bit128_t;
typedef ap_uint<256> bit256_t;
typedef ap_uint<512> bit512_t;
typedef ap_uint<1024> bit1024_t;
typedef ap_uint<1088> bit1088_t;
typedef ap_uint<2048> bit2048_t;
typedef bit1024_t rsa_key_t;

#endif

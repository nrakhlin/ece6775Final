//===========================================================================
// rsa.h
//===========================================================================
// @brief: This header file defines the interface for the core functions.

// #include <hls_stream.h>

#include "typedefs.h"

// Top function for synthesis
rsa_key_t rsa_encrypt(bit64_t m, bit32_t e, rsa_key_t n);
bit64_t rsa_decrypt(rsa_key_t c, bit32_t d, rsa_key_t n);
bit64_t dut(bit64_t input_message, rsa_key_t n, bit32_t e, bit32_t d);

//===========================================================================
// p2peda.h
//===========================================================================
// @brief: This header file defines the interface for the core functions.

// #include <hls_stream.h>

#include "typedefs.h"

// Top function for synthesis
void dut(hls::stream<bit32_t> &strm_in, hls::stream<bit32_t> &strm_out);

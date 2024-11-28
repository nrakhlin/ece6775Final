//==========================================================================
// p2peda.cpp
//==========================================================================
// @brief: 

#include <hls_stream.h>
#include "typedefs.h"

//----------------------------------------------------------
// Top function
//----------------------------------------------------------

void dut(hls::stream<bit32_t> &strm_in, hls::stream<bit32_t> &strm_out) {

  bit32_t output_word;

  bit32_t input_word = strm_in.read();

  output_word = input_word + 5;

  strm_out.write (output_word);
}
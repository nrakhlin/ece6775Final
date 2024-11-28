//=========================================================================
// testbench.cpp
//=========================================================================
// @brief: testbench for k-nearest-neighbor digit recongnition application

#include <stdio.h>
#include <iostream>
#include <fstream>
#include <string>

#include <hls_stream.h>
#include "typedefs.h"
#include "p2peda.h"

//------------------------------------------------------------------------
// testbench
//------------------------------------------------------------------------
int main() {
  // HLS streams for communicating between CPU and FPGA
  hls::stream<bit32_t> p2peda_in;
  hls::stream<bit32_t> p2peda_out;

  // Number of test instances
  const int N = 20;

  for (int i = 0; i < N; ++i) {
    bit32_t input_word = i;
    std::cout << "Input word = " << input_word << std::endl;
    p2peda_in.write(input_word);
  }

  for (int i = 0; i < N; ++i) {
    dut(p2peda_in, p2peda_out);
    bit32_t output_word = p2peda_out.read();
    std::cout << "Output word = " << output_word << std::endl;
  }


  return 0;
}

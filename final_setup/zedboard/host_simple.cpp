#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>
#include <math.h>
#include <assert.h>

#include <iostream>
#include <fstream>

#include "typedefs.h"
#include "timer.h"

//--------------------------------------
// main function
//--------------------------------------
int main(int argc, char **argv) {
  ////////////////////////////////////////////////////////////////////
  // Open channels to the FPGA board.
  // These channels appear as files to the Linux OS
  int fdr = open("/dev/xillybus_read_32", O_RDONLY);
  int fdw = open("/dev/xillybus_write_32", O_WRONLY);

  // Check that the channels are correctly opened
  if ((fdr < 0) || (fdw < 0)) {
    fprintf(stderr, "Failed to open Xillybus device channels\n");
    return -1;
  }
  ////////////////////////////////////////////////////////////////////

  // Number of test instances
  const int N = 30;

  ////////////////////////////////////////////////////////////////////
  int nbytes; 
  ////////////////////////////////////////////////////////////////////
  
  bit32_t input_word;
  bit32_t output_word;

  // send to FPGA
  for (bit32_t i = 0; i < N; i++){
    input_word = i;
    std::cout << "host.cpp: Input word = " << input_word << std::endl;
    //////////////////////////////////////////////////////////////////
    nbytes = write(fdw, (void*)&input_word, sizeof(input_word));
    assert (nbytes == sizeof(input_word));
    //////////////////////////////////////////////////////////////////
  }

  // receive from FPGA
  for (int i = 0; i < N; i++){
    //////////////////////////////////////////////////////////////////
    nbytes = read(fdr, (void*)&output_word, sizeof(output_word));
    assert (nbytes == sizeof(output_word));
    //////////////////////////////////////////////////////////////////
    std::cout << "host.cpp: Output word = " << output_word << std::endl;
  }

  return 0;
}

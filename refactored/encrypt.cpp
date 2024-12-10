#include <stdio.h>  // for printf
#include <stdlib.h> // for malloc, free
#include "helper.h"
#include "encrypt.h"
#include "constants.h"

void aes_round(unsigned char state[16], unsigned char roundKey[16])
{
  subBytes(state);
  shiftRows(state);
  mixColumns(state);
  addRoundKey(state, roundKey);
}

void aes_main(unsigned char state[16], unsigned char expandedKey[EXPAND_KEY_SIZE], int nbrRounds)
{
  int i = 0;
  int j, k;
  unsigned char roundKey[16];
  #pragma HLS array_partition variable=roundKey complete dim=0

  createRoundKey(expandedKey, roundKey, 0);
  addRoundKey(state, roundKey);

  AES_MAIN_LOOP:
    for (i = 1; i < nbrRounds; i++)
    {
      createRoundKey(expandedKey, roundKey, 16 * i); // uses pointer stuff. Must change
      aes_round(state, roundKey);
    }

  createRoundKey(expandedKey, roundKey, 16 * nbrRounds); // uses pointer stuff. Must change
  subBytes(state);
  shiftRows(state);
  addRoundKey(state, roundKey);
}

void aes_encrypt(unsigned char input[16],
                 unsigned char output[16],
                 unsigned char key[KEY_SIZE],
                 int size)
{
  // the 128 bit block to encode
  unsigned char block[16]; // hard coded to 16
  int i, j;
  unsigned char expandedKey[EXPAND_KEY_SIZE];
  #pragma HLS array_partition variable=expandedKey cyclic factor=4 dim=0
  // iterate over the columns
  for (i = 0; i < 4; i++)
  {
    // iterate over the rows
    for (j = 0; j < 4; j++)
    {
      block[(i + (j * 4))] = input[(i * 4) + j];
    }
  }

  // expand the key into an 176, 208, 240 bytes key
  expandKey(expandedKey, key, size, EXPAND_KEY_SIZE);

  // encrypt the block using the expandedKey
  aes_main(block, expandedKey, NBRROUNDS);

  // unmap the block again into the output
  for (i = 0; i < 4; i++)
  {
    // iterate over the rows
    for (j = 0; j < 4; j++)
    {
      output[(i * 4) + j] = block[(i + (j * 4))];
    }
  }
}

// int dut(int argc, char *argv[])
void encrypt_dut(unsigned char input[16],
                 unsigned char output[16],
                 unsigned char key[KEY_SIZE])
{
  // AES Encryption
  aes_encrypt(input, output, key, KEY_SIZE);
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// int main() {}
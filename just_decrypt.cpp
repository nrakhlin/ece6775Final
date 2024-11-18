#include <stdio.h>  // for printf
#include <stdlib.h> // for malloc, free

#include "just_encrypt.h"

void decrypt_dut(unsigned char input[16],
                 unsigned char output[16],
                 unsigned char key[KEY_SIZE])
{
    // AES Decryption
    aes_decrypt(input, output, key, KEY_SIZE);
}

void aes_invRound(unsigned char state[16], unsigned char roundKey[16])
{
    invShiftRows(state);
    invSubBytes(state);
    addRoundKey(state, roundKey);
    invMixColumns(state);
}

void aes_invMain(unsigned char state[16], unsigned char expandedKey[EXPAND_KEY_SIZE], int nbrRounds)
{
    int i = 0;

    unsigned char roundKey[16];

    createRoundKey(expandedKey, roundKey, 16 * nbrRounds);
    addRoundKey(state, roundKey);

    for (i = nbrRounds - 1; i > 0; i--)
    {
        createRoundKey(expandedKey, roundKey, 16 * i);
        aes_invRound(state, roundKey);
    }

    createRoundKey(expandedKey, roundKey, 0);
    invShiftRows(state);
    invSubBytes(state);
    addRoundKey(state, roundKey);
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
void aes_decrypt(unsigned char input[16],
                 unsigned char output[16],
                 unsigned char key[KEY_SIZE],
                 int size)
{
    // the expanded key
    unsigned char expandedKey[EXPAND_KEY_SIZE];

    // the 128 bit block to decode
    unsigned char block[16];

    int i, j;

    /* Set the block values, for the block:
     * a0,0 a0,1 a0,2 a0,3
     * a1,0 a1,1 a1,2 a1,3
     * a2,0 a2,1 a2,2 a2,3
     * a3,0 a3,1 a3,2 a3,3
     * the mapping order is a0,0 a1,0 a2,0 a3,0 a0,1 a1,1 ... a2,3 a3,3
     */

    // iterate over the columns
    for (i = 0; i < 4; i++)
    {
        // iterate over the rows
        for (j = 0; j < 4; j++)
            block[(i + (j * 4))] = input[(i * 4) + j];
    }

    // expand the key into an 176, 208, 240 bytes key
    expandKey(expandedKey, key, size, EXPAND_KEY_SIZE);

    // decrypt the block using the expandedKey
    aes_invMain(block, expandedKey, NBRROUNDS);

    // unmap the block again into the output
    for (i = 0; i < 4; i++)
    {
        // iterate over the rows
        for (j = 0; j < 4; j++)
            output[(i * 4) + j] = block[(i + (j * 4))];
    }
}
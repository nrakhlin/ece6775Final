#ifndef DECRYPT_H
#define DECRYPT_H

// #include "helper.h"
#include "constants.h"

void aes_invRound(unsigned char state[16], unsigned char roundKey[16]);
void aes_invMain(unsigned char state[16], unsigned char expandedKey[EXPAND_KEY_SIZE], int nbrRounds);
void aes_decrypt(unsigned char input[16], unsigned char output[16], unsigned char key[KEY_SIZE], int size);
void decrypt_dut(unsigned char input[16], unsigned char output[16], unsigned char key[KEY_SIZE]);
#endif

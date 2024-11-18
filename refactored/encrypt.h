#ifndef ENCRYPT_H
#define ENCRYPT_H

// #include "helper.h"
#include "constants.h"

void aes_round(unsigned char state[16], unsigned char roundKey[16]);
void aes_main(unsigned char state[16], unsigned char expandedKey[EXPAND_KEY_SIZE], int nbrRounds);
void aes_encrypt(unsigned char input[16], unsigned char output[16], unsigned char key[KEY_SIZE], int size);

void encrypt_dut(unsigned char input[16], unsigned char output[16], unsigned char key[KEY_SIZE]);
#endif
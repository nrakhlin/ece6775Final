#include "helper.h"

// S-Box Functions//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
unsigned char sbox[256] = {
    // 0     1    2      3     4    5     6     7      8    9     A      B    C     D     E     F
    0x63, 0x7c, 0x77, 0x7b, 0xf2, 0x6b, 0x6f, 0xc5, 0x30, 0x01, 0x67, 0x2b, 0xfe, 0xd7, 0xab, 0x76,  // 0
    0xca, 0x82, 0xc9, 0x7d, 0xfa, 0x59, 0x47, 0xf0, 0xad, 0xd4, 0xa2, 0xaf, 0x9c, 0xa4, 0x72, 0xc0,  // 1
    0xb7, 0xfd, 0x93, 0x26, 0x36, 0x3f, 0xf7, 0xcc, 0x34, 0xa5, 0xe5, 0xf1, 0x71, 0xd8, 0x31, 0x15,  // 2
    0x04, 0xc7, 0x23, 0xc3, 0x18, 0x96, 0x05, 0x9a, 0x07, 0x12, 0x80, 0xe2, 0xeb, 0x27, 0xb2, 0x75,  // 3
    0x09, 0x83, 0x2c, 0x1a, 0x1b, 0x6e, 0x5a, 0xa0, 0x52, 0x3b, 0xd6, 0xb3, 0x29, 0xe3, 0x2f, 0x84,  // 4
    0x53, 0xd1, 0x00, 0xed, 0x20, 0xfc, 0xb1, 0x5b, 0x6a, 0xcb, 0xbe, 0x39, 0x4a, 0x4c, 0x58, 0xcf,  // 5
    0xd0, 0xef, 0xaa, 0xfb, 0x43, 0x4d, 0x33, 0x85, 0x45, 0xf9, 0x02, 0x7f, 0x50, 0x3c, 0x9f, 0xa8,  // 6
    0x51, 0xa3, 0x40, 0x8f, 0x92, 0x9d, 0x38, 0xf5, 0xbc, 0xb6, 0xda, 0x21, 0x10, 0xff, 0xf3, 0xd2,  // 7
    0xcd, 0x0c, 0x13, 0xec, 0x5f, 0x97, 0x44, 0x17, 0xc4, 0xa7, 0x7e, 0x3d, 0x64, 0x5d, 0x19, 0x73,  // 8
    0x60, 0x81, 0x4f, 0xdc, 0x22, 0x2a, 0x90, 0x88, 0x46, 0xee, 0xb8, 0x14, 0xde, 0x5e, 0x0b, 0xdb,  // 9
    0xe0, 0x32, 0x3a, 0x0a, 0x49, 0x06, 0x24, 0x5c, 0xc2, 0xd3, 0xac, 0x62, 0x91, 0x95, 0xe4, 0x79,  // A
    0xe7, 0xc8, 0x37, 0x6d, 0x8d, 0xd5, 0x4e, 0xa9, 0x6c, 0x56, 0xf4, 0xea, 0x65, 0x7a, 0xae, 0x08,  // B
    0xba, 0x78, 0x25, 0x2e, 0x1c, 0xa6, 0xb4, 0xc6, 0xe8, 0xdd, 0x74, 0x1f, 0x4b, 0xbd, 0x8b, 0x8a,  // C
    0x70, 0x3e, 0xb5, 0x66, 0x48, 0x03, 0xf6, 0x0e, 0x61, 0x35, 0x57, 0xb9, 0x86, 0xc1, 0x1d, 0x9e,  // D
    0xe1, 0xf8, 0x98, 0x11, 0x69, 0xd9, 0x8e, 0x94, 0x9b, 0x1e, 0x87, 0xe9, 0xce, 0x55, 0x28, 0xdf,  // E
    0x8c, 0xa1, 0x89, 0x0d, 0xbf, 0xe6, 0x42, 0x68, 0x41, 0x99, 0x2d, 0x0f, 0xb0, 0x54, 0xbb, 0x16}; // F

unsigned char rsbox[256] =
    {
        0x52, 0x09, 0x6a, 0xd5, 0x30, 0x36, 0xa5, 0x38, 0xbf, 0x40, 0xa3, 0x9e, 0x81, 0xf3, 0xd7, 0xfb,
        0x7c, 0xe3, 0x39, 0x82, 0x9b, 0x2f, 0xff, 0x87, 0x34, 0x8e, 0x43, 0x44, 0xc4, 0xde, 0xe9, 0xcb,
        0x54, 0x7b, 0x94, 0x32, 0xa6, 0xc2, 0x23, 0x3d, 0xee, 0x4c, 0x95, 0x0b, 0x42, 0xfa, 0xc3, 0x4e,
        0x08, 0x2e, 0xa1, 0x66, 0x28, 0xd9, 0x24, 0xb2, 0x76, 0x5b, 0xa2, 0x49, 0x6d, 0x8b, 0xd1, 0x25,
        0x72, 0xf8, 0xf6, 0x64, 0x86, 0x68, 0x98, 0x16, 0xd4, 0xa4, 0x5c, 0xcc, 0x5d, 0x65, 0xb6, 0x92,
        0x6c, 0x70, 0x48, 0x50, 0xfd, 0xed, 0xb9, 0xda, 0x5e, 0x15, 0x46, 0x57, 0xa7, 0x8d, 0x9d, 0x84,
        0x90, 0xd8, 0xab, 0x00, 0x8c, 0xbc, 0xd3, 0x0a, 0xf7, 0xe4, 0x58, 0x05, 0xb8, 0xb3, 0x45, 0x06,
        0xd0, 0x2c, 0x1e, 0x8f, 0xca, 0x3f, 0x0f, 0x02, 0xc1, 0xaf, 0xbd, 0x03, 0x01, 0x13, 0x8a, 0x6b,
        0x3a, 0x91, 0x11, 0x41, 0x4f, 0x67, 0xdc, 0xea, 0x97, 0xf2, 0xcf, 0xce, 0xf0, 0xb4, 0xe6, 0x73,
        0x96, 0xac, 0x74, 0x22, 0xe7, 0xad, 0x35, 0x85, 0xe2, 0xf9, 0x37, 0xe8, 0x1c, 0x75, 0xdf, 0x6e,
        0x47, 0xf1, 0x1a, 0x71, 0x1d, 0x29, 0xc5, 0x89, 0x6f, 0xb7, 0x62, 0x0e, 0xaa, 0x18, 0xbe, 0x1b,
        0xfc, 0x56, 0x3e, 0x4b, 0xc6, 0xd2, 0x79, 0x20, 0x9a, 0xdb, 0xc0, 0xfe, 0x78, 0xcd, 0x5a, 0xf4,
        0x1f, 0xdd, 0xa8, 0x33, 0x88, 0x07, 0xc7, 0x31, 0xb1, 0x12, 0x10, 0x59, 0x27, 0x80, 0xec, 0x5f,
        0x60, 0x51, 0x7f, 0xa9, 0x19, 0xb5, 0x4a, 0x0d, 0x2d, 0xe5, 0x7a, 0x9f, 0x93, 0xc9, 0x9c, 0xef,
        0xa0, 0xe0, 0x3b, 0x4d, 0xae, 0x2a, 0xf5, 0xb0, 0xc8, 0xeb, 0xbb, 0x3c, 0x83, 0x53, 0x99, 0x61,
        0x17, 0x2b, 0x04, 0x7e, 0xba, 0x77, 0xd6, 0x26, 0xe1, 0x69, 0x14, 0x63, 0x55, 0x21, 0x0c, 0x7d};
unsigned char getSBoxValue(unsigned char num)
{
  return sbox[num];
}

unsigned char getSBoxInvert(unsigned char num)
{
  return rsbox[num];
}

// Key Expansion Functions //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
unsigned char Rcon[255] = {
    0x8d, 0x01, 0x02, 0x04, 0x08, 0x10, 0x20, 0x40, 0x80, 0x1b, 0x36, 0x6c, 0xd8,
    0xab, 0x4d, 0x9a, 0x2f, 0x5e, 0xbc, 0x63, 0xc6, 0x97, 0x35, 0x6a, 0xd4, 0xb3,
    0x7d, 0xfa, 0xef, 0xc5, 0x91, 0x39, 0x72, 0xe4, 0xd3, 0xbd, 0x61, 0xc2, 0x9f,
    0x25, 0x4a, 0x94, 0x33, 0x66, 0xcc, 0x83, 0x1d, 0x3a, 0x74, 0xe8, 0xcb, 0x8d,
    0x01, 0x02, 0x04, 0x08, 0x10, 0x20, 0x40, 0x80, 0x1b, 0x36, 0x6c, 0xd8, 0xab,
    0x4d, 0x9a, 0x2f, 0x5e, 0xbc, 0x63, 0xc6, 0x97, 0x35, 0x6a, 0xd4, 0xb3, 0x7d,
    0xfa, 0xef, 0xc5, 0x91, 0x39, 0x72, 0xe4, 0xd3, 0xbd, 0x61, 0xc2, 0x9f, 0x25,
    0x4a, 0x94, 0x33, 0x66, 0xcc, 0x83, 0x1d, 0x3a, 0x74, 0xe8, 0xcb, 0x8d, 0x01,
    0x02, 0x04, 0x08, 0x10, 0x20, 0x40, 0x80, 0x1b, 0x36, 0x6c, 0xd8, 0xab, 0x4d,
    0x9a, 0x2f, 0x5e, 0xbc, 0x63, 0xc6, 0x97, 0x35, 0x6a, 0xd4, 0xb3, 0x7d, 0xfa,
    0xef, 0xc5, 0x91, 0x39, 0x72, 0xe4, 0xd3, 0xbd, 0x61, 0xc2, 0x9f, 0x25, 0x4a,
    0x94, 0x33, 0x66, 0xcc, 0x83, 0x1d, 0x3a, 0x74, 0xe8, 0xcb, 0x8d, 0x01, 0x02,
    0x04, 0x08, 0x10, 0x20, 0x40, 0x80, 0x1b, 0x36, 0x6c, 0xd8, 0xab, 0x4d, 0x9a,
    0x2f, 0x5e, 0xbc, 0x63, 0xc6, 0x97, 0x35, 0x6a, 0xd4, 0xb3, 0x7d, 0xfa, 0xef,
    0xc5, 0x91, 0x39, 0x72, 0xe4, 0xd3, 0xbd, 0x61, 0xc2, 0x9f, 0x25, 0x4a, 0x94,
    0x33, 0x66, 0xcc, 0x83, 0x1d, 0x3a, 0x74, 0xe8, 0xcb, 0x8d, 0x01, 0x02, 0x04,
    0x08, 0x10, 0x20, 0x40, 0x80, 0x1b, 0x36, 0x6c, 0xd8, 0xab, 0x4d, 0x9a, 0x2f,
    0x5e, 0xbc, 0x63, 0xc6, 0x97, 0x35, 0x6a, 0xd4, 0xb3, 0x7d, 0xfa, 0xef, 0xc5,
    0x91, 0x39, 0x72, 0xe4, 0xd3, 0xbd, 0x61, 0xc2, 0x9f, 0x25, 0x4a, 0x94, 0x33,
    0x66, 0xcc, 0x83, 0x1d, 0x3a, 0x74, 0xe8, 0xcb};
/* Rijndael's key schedule rotate operation
 * rotate the word eight bits to the left
 *
 * rotate(1d2c3a4f) = 2c3a4f1d
 *
 * word is an char array of size 4 (32 bit)
 */
void rotate(unsigned char word[4])
{
  unsigned char c;
  int i;

  c = word[0];
  for (i = 0; i < 3; i++)
    word[i] = word[i + 1];
  word[3] = c;
}
unsigned char getRconValue(unsigned char num)
{
  return Rcon[num];
}

void core(unsigned char word[4], int iteration)
{
  int i;

  // rotate the 32-bit word 8 bits to the left
  rotate(word);

  // apply S-Box substitution on all 4 parts of the 32-bit word
  for (i = 0; i < 4; ++i)
  {
    word[i] = getSBoxValue(word[i]);
  }

  // XOR the output of the rcon operation with i to the first part (leftmost) only
  word[0] = word[0] ^ getRconValue(iteration);
}

void expandKey(unsigned char expandedKey[EXPAND_KEY_SIZE],
               unsigned char key[KEY_SIZE],
               int size,
               int expandedKeySize)
{
  // #pragma HLS INLINE
  // current expanded keySize, in bytes
  int currentSize = 0;
  int rconIteration = 1;
  int i;
  unsigned char t[4] = {0}; // temporary 4-byte variable

  // set the 16,24,32 bytes of the expanded key to the input key
  for (i = 0; i < 16; i++)
    expandedKey[i] = key[i];
  currentSize += size;

  while (currentSize < expandedKeySize)
  {
    // assign the previous 4 bytes to the temporary value t
    for (i = 0; i < 4; i++)
    {
      t[i] = expandedKey[(currentSize - 4) + i];
    }

    /* every 16,24,32 bytes we apply the core schedule to t
     * and increment rconIteration afterwards
     */
    if (currentSize % size == 0)
    {
      core(t, rconIteration++);
    }

    // For 256-bit keys, we add an extra sbox to the calculation
    if (size == SIZE_32 && ((currentSize % size) == 16))
    {
      for (i = 0; i < 4; i++)
        t[i] = getSBoxValue(t[i]);
    }

    /* We XOR t with the four-byte block 16,24,32 bytes before the new expanded key.
     * This becomes the next four bytes in the expanded key.
     */
    for (i = 0; i < 4; i++)
    {
      expandedKey[currentSize] = expandedKey[currentSize - size] ^ t[i];
      currentSize++;
    }
  }
}

// AES Encryption/Decryption Functions//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
void subBytes(unsigned char state[16])
{
  int i;
  /* substitute all the values from the state with the value in the SBox
   * using the state value as index for the SBox
   */
  for (i = 0; i < 16; i++)
    state[i] = getSBoxValue(state[i]);
}
void shiftRows(unsigned char state[16])
{
  // Row 0: No shift (no operation needed)
  // Row 1: Shift left by 1
  // Row 2: Shift left by 2
  // Row 3: Shift left by 3
  int ptr;
  int j;
  unsigned char tmp, tmp2, tmp3;

  // Row 0 (i == 0): No shift
  ptr = 0 * 4;
  // No shifting required for row 0

  // Row 1 (i == 1): Shift left by 1
  ptr = 1 * 4;
  tmp = state[ptr];
  // Shift elements left by 1 position
  state[ptr] = state[ptr + 1];
  state[ptr + 1] = state[ptr + 2];
  state[ptr + 2] = state[ptr + 3];
  state[ptr + 3] = tmp;

  // Row 2 (i == 2): Shift left by 2
  ptr = 2 * 4;
  tmp = state[ptr];
  tmp2 = state[ptr + 1];
  // Shift elements left by 2 positions
  state[ptr] = state[ptr + 2];
  state[ptr + 1] = state[ptr + 3];
  state[ptr + 2] = tmp;
  state[ptr + 3] = tmp2;

  // Row 3 (i == 3): Shift left by 3
  ptr = 3 * 4;
  tmp = state[ptr];
  tmp2 = state[ptr + 1];
  tmp3 = state[ptr + 2];
  // Shift elements left by 3 positions
  state[ptr] = state[ptr + 3];
  state[ptr + 1] = tmp;
  state[ptr + 2] = tmp2;
  state[ptr + 3] = tmp3;
}

void addRoundKey(unsigned char state[16], unsigned char roundKey[16])
{
  int i;
  for (i = 0; i < 16; i++)
    state[i] = state[i] ^ roundKey[i];
}
unsigned char galois_multiplication(unsigned char a, unsigned char b)
{
  unsigned char p = 0;
  unsigned char counter;
  unsigned char hi_bit_set;
  for (counter = 0; counter < 8; counter++)
  {
    if ((b & 1) == 1)
      p ^= a;
    hi_bit_set = (a & 0x80);
    a <<= 1;
    if (hi_bit_set == 0x80)
      a ^= 0x1b;
    b >>= 1;
  }
  return p;
}

void mixColumn(unsigned char column[4])
{
  unsigned char cpy[4];
  int i;
  for (i = 0; i < 4; i++)
  {
    cpy[i] = column[i];
  }
  column[0] = galois_multiplication(cpy[0], 2) ^
              galois_multiplication(cpy[3], 1) ^
              galois_multiplication(cpy[2], 1) ^
              galois_multiplication(cpy[1], 3);

  column[1] = galois_multiplication(cpy[1], 2) ^
              galois_multiplication(cpy[0], 1) ^
              galois_multiplication(cpy[3], 1) ^
              galois_multiplication(cpy[2], 3);

  column[2] = galois_multiplication(cpy[2], 2) ^
              galois_multiplication(cpy[1], 1) ^
              galois_multiplication(cpy[0], 1) ^
              galois_multiplication(cpy[3], 3);

  column[3] = galois_multiplication(cpy[3], 2) ^
              galois_multiplication(cpy[2], 1) ^
              galois_multiplication(cpy[1], 1) ^
              galois_multiplication(cpy[0], 3);
}

void mixColumns(unsigned char state[16])
{
  int i, j;
  unsigned char column[4];

  // iterate over the 4 columns
  for (i = 0; i < 4; i++)
  {
    // construct one column by iterating over the 4 rows
    for (j = 0; j < 4; j++)
    {
      column[j] = state[(j * 4) + i];
    }

    // apply the mixColumn on one column
    mixColumn(column);

    // put the values back into the state
    for (j = 0; j < 4; j++)
    {
      state[(j * 4) + i] = column[j];
    }
  }
}

void createRoundKey(unsigned char expandedKey[EXPAND_KEY_SIZE], unsigned char roundKey[16], int ptr)
{
  int i, j;
  // iterate over the columns
  for (i = 0; i < 4; i++)
  {
    // iterate over the rows
    for (j = 0; j < 4; j++)
      roundKey[(i + (j * 4))] = expandedKey[ptr + (i * 4) + j];
  }
}

// AES Decryption Functions //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
void invSubBytes(unsigned char state[16])
{
  int i;
  /* substitute all the values from the state with the value in the SBox
   * using the state value as index for the SBox
   */
  for (i = 0; i < 16; i++)
  {
    state[i] = getSBoxInvert(state[i]);
  }
}

void invShiftRows(unsigned char state[16])
{
    int ptr;
    unsigned char tmp;

    // i = 0 (first row)
    // No shift needed for row 0
    
    // i = 1 (second row)
    ptr = 1 * 4;  // ptr = 4
    // k = 0
    tmp = state[ptr + 3];              // tmp = state[7]
    state[ptr + 3] = state[ptr + 2];   // state[7] = state[6]
    state[ptr + 2] = state[ptr + 1];   // state[6] = state[5]
    state[ptr + 1] = state[ptr];       // state[5] = state[4]
    state[ptr] = tmp;                  // state[4] = tmp
    
    // i = 2 (third row)
    ptr = 2 * 4;  // ptr = 8
    // k = 0
    tmp = state[ptr + 3];              // tmp = state[11]
    state[ptr + 3] = state[ptr + 2];   // state[11] = state[10]
    state[ptr + 2] = state[ptr + 1];   // state[10] = state[9]
    state[ptr + 1] = state[ptr];       // state[9] = state[8]
    state[ptr] = tmp;                  // state[8] = tmp
    // k = 1
    tmp = state[ptr + 3];              // tmp = state[11]
    state[ptr + 3] = state[ptr + 2];   // state[11] = state[10]
    state[ptr + 2] = state[ptr + 1];   // state[10] = state[9]
    state[ptr + 1] = state[ptr];       // state[9] = state[8]
    state[ptr] = tmp;                  // state[8] = tmp
    
    // i = 3 (fourth row)
    ptr = 3 * 4;  // ptr = 12
    // k = 0
    tmp = state[ptr + 3];              // tmp = state[15]
    state[ptr + 3] = state[ptr + 2];   // state[15] = state[14]
    state[ptr + 2] = state[ptr + 1];   // state[14] = state[13]
    state[ptr + 1] = state[ptr];       // state[13] = state[12]
    state[ptr] = tmp;                  // state[12] = tmp
    // k = 1
    tmp = state[ptr + 3];              // tmp = state[15]
    state[ptr + 3] = state[ptr + 2];   // state[15] = state[14]
    state[ptr + 2] = state[ptr + 1];   // state[14] = state[13]
    state[ptr + 1] = state[ptr];       // state[13] = state[12]
    state[ptr] = tmp;                  // state[12] = tmp
    // k = 2
    tmp = state[ptr + 3];              // tmp = state[15]
    state[ptr + 3] = state[ptr + 2];   // state[15] = state[14]
    state[ptr + 2] = state[ptr + 1];   // state[14] = state[13]
    state[ptr + 1] = state[ptr];       // state[13] = state[12]
    state[ptr] = tmp;                  // state[12] = tmp
}


void invMixColumn(unsigned char column[4])
{
  unsigned char cpy[4];
  int i;
  for (i = 0; i < 4; i++)
  {
    cpy[i] = column[i];
  }
  column[0] = galois_multiplication(cpy[0], 14) ^
              galois_multiplication(cpy[3], 9) ^
              galois_multiplication(cpy[2], 13) ^
              galois_multiplication(cpy[1], 11);
  column[1] = galois_multiplication(cpy[1], 14) ^
              galois_multiplication(cpy[0], 9) ^
              galois_multiplication(cpy[3], 13) ^
              galois_multiplication(cpy[2], 11);
  column[2] = galois_multiplication(cpy[2], 14) ^
              galois_multiplication(cpy[1], 9) ^
              galois_multiplication(cpy[0], 13) ^
              galois_multiplication(cpy[3], 11);
  column[3] = galois_multiplication(cpy[3], 14) ^
              galois_multiplication(cpy[2], 9) ^
              galois_multiplication(cpy[1], 13) ^
              galois_multiplication(cpy[0], 11);
}

// void invShiftRow(unsigned char *state, unsigned char nbr);
void invMixColumns(unsigned char state[16])
{
  int i, j;
  unsigned char column[4];

  // iterate over the 4 columns
  for (i = 0; i < 4; i++)
  {
    // construct one column by iterating over the 4 rows
    for (j = 0; j < 4; j++)
    {
      column[j] = state[(j * 4) + i];
    }

    // apply the invMixColumn on one column
    invMixColumn(column);

    // put the values back into the state
    for (j = 0; j < 4; j++)
    {
      state[(j * 4) + i] = column[j];
    }
  }
}

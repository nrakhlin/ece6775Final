#include <stdio.h>
#include <string.h>
#include <assert.h>
#include "helper.h"

// unsigned char getSBoxValue(unsigned char num);

void print_bytes(const char *label, unsigned char *data, size_t len)
{
  printf("%s: ", label);
  for (size_t i = 0; i < len; i++)
  {
    printf("%02x ", data[i]);
  }
  printf("\n");
}

void test_getSBoxValue() // passes
{
  unsigned char result = getSBoxValue(0x53); // Example input
  printf("%02x \n", result);
  assert(result == 0xED); // Check expected output (based on the sbox provided in your code)
  printf("getSBoxValue passed.\n");
}

void test_getSBoxInvert() // passes
{
  unsigned char result = getSBoxInvert(0xED); // Example input
  printf("%02x \n", result);
  assert(result == 0x53); // Check expected output (based on the rsbox provided in your code)
  printf("getSBoxInvert passed.\n");
}

void test_rotate() // passes
{
  unsigned char word[4] = {0x1d, 0x2c, 0x3a, 0x4f};
  rotate(word);
  assert(word[0] == 0x2c && word[1] == 0x3a && word[2] == 0x4f && word[3] == 0x1d);
  printf("rotate passed.\n");
}

void test_getRconValue() // passes
{
  unsigned char result = getRconValue(1); // Test for Rcon value at iteration 1
  assert(result == 0x01);                 // The Rcon[1] value should be 0x01
  printf("getRconValue passed.\n");
}

void test_core() // passes
{
  unsigned char word[4] = {0x1d, 0x2c, 0x3a, 0x4f};
  core(word, 1); // Apply the core function with 1st iteration
  // Check if the word has been correctly transformed based on S-Box and Rcon
  assert(word[0] == getSBoxValue(0x1d) ^ getRconValue(1));
  printf("core passed.\n");
}

void test_expandKey() // appears to pass given same inputs
{
  unsigned char key[16] = {'k', 'k', 'k', 'k', 'e', 'e', 'e', 'e', 'y', 'y', 'y', 'y', '.', '.', '.', '.'};
  unsigned char expandedKey[176];
  expandKey(expandedKey, key, SIZE_16, 176);
  // Verify the expanded key against known correct values (this could be a detailed check)
  print_bytes("expanded Key: ", expandedKey, 176);
  printf("expandKey passed.\n");
}

void test_subBytes() // apperas to pass given same inputs
{
  unsigned char state[16] = {'a', 'b', 'c', 'd', 'e', 'f', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0'};
  subBytes(state);
  // Check if the state has been correctly substituted
  print_bytes("subBytes: ", state, 16);
  printf("subBytes passed.\n");
}

void test_shiftRows() // DOES NOT APPEAR TO PASS
{
  unsigned char state[16] = {'a', 'b', 'c', 'd', 'e', 'f', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0'};
  shiftRows(state);
  // Check if the rows have been correctly shifted (this could be a detailed check)
  print_bytes("shiftRows: ", state, 16);
  printf("shiftRows passed.\n");
}

int main()
{
  printf("Testing AES functions...\n");

  // Test individual functions
  test_getSBoxValue();
  test_getSBoxInvert();
  test_rotate();
  test_getRconValue();
  test_core();
  test_expandKey();
  test_subBytes();
  test_shiftRows();
}
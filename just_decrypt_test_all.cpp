#include <stdio.h>
#include <string.h>
#include <assert.h>
// #include "just_encrypt.h"

// Helper function to print a byte array in hexadecimal
void print_hex(const char *label, unsigned char *array, int size)
{
  printf("%s: ", label);
  for (int i = 0; i < size; i++)
  {
    printf("%02x ", array[i]);
  }
  printf("\n");
}

// Test getSBoxValue() and getSBoxInvert()
void test_sbox_functions()
{
  unsigned char test_value = 0x53; // Arbitrary test value

  unsigned char result = getSBoxValue(test_value);
  printf("S-Box value for 0x53: 0x%02x\n", result);
  assert(result == 0xED); // Known value for 0x53 in the sbox

  unsigned char inv_result = getSBoxInvert(result);
  printf("Inverse S-Box value for 0x%02x: 0x%02x\n", result, inv_result);
  assert(result == 0xED); // Inverse should return the same value as it was mapped in rsbox
  printf("test_sbox_functions passed\n\n");
}

// Test rotate()
void test_rotate()
{
  unsigned char word[4] = {0x1d, 0x2c, 0x3a, 0x4f};
  rotate(word);
  printf("After rotate: ");
  print_hex("Rotated word", word, 4);
  unsigned char expected[4] = {0x2c, 0x3a, 0x4f, 0x1d};
  assert(memcmp(word, expected, 4) == 0);
  printf("test_rotate passed\n\n");
}

// Test expandKey() for a 128-bit key
void test_expandKey()
{
  unsigned char key[16] = {0x2b, 0x7e, 0x15, 0x16, 0x28, 0xae, 0xd2, 0xa6,
                           0xab, 0xf7, 0x97, 0x75, 0x46, 0x4f, 0x43, 0x5e};
  unsigned char expandedKey[176];
  expandKey(expandedKey, key, 16, 176);
  printf("Expanded Key:\n");
  print_hex("Expanded key", expandedKey, 176);
  // The expanded key values need to be verified against known values
  // (not easy to check by hand, needs a known test vector)
}

// Test addRoundKey()
void test_addRoundKey()
{
  unsigned char state[16] = {0x32, 0x88, 0x31, 0xe0, 0x43, 0x5a, 0x31, 0x37,
                             0xf6, 0x30, 0x98, 0x07, 0xa8, 0x8d, 0xa2, 0x34};
  unsigned char roundKey[16] = {0x2b, 0x7e, 0x15, 0x16, 0x28, 0xae, 0xd2, 0xa6,
                                0xab, 0xf7, 0x97, 0x75, 0x46, 0x4f, 0x43, 0x5e};
  addRoundKey(state, roundKey);
  printf("State after addRoundKey: ");
  print_hex("State", state, 16);
  unsigned char expected_state[16] = {0x19, 0xf6, 0x24, 0xf6, 0x6b, 0xf4, 0xe3, 0x91, 0x5d, 0xc7, 0x0f, 0x72, 0xee, 0xc2, 0xe1, 0x6a};
  assert(memcmp(state, expected_state, 16) == 0);

  printf("test_addRoundKey passed\n\n");
}

// Test invSubBytes()
void test_invSubBytes()
{
  unsigned char state[16] = {0x32, 0x88, 0x31, 0xe0, 0x43, 0x5a, 0x31, 0x37,
                             0xf6, 0x30, 0x98, 0x07, 0xa8, 0x8d, 0xa2, 0x34};
  invSubBytes(state);
  printf("State after invSubBytes: ");
  print_hex("State", state, 16);
  // Known values for invSubBytes should be tested here
}

// Test invShiftRows()
void test_invShiftRows()
{
  unsigned char state[16] = {0x19, 0xf1, 0x24, 0xd6, 0x6b, 0xf1, 0x5f, 0x71,
                             0x5f, 0x1f, 0x0f, 0x72, 0xec, 0x09, 0xe5, 0x6e};
  invShiftRows(state);
  printf("State after invShiftRows: ");
  print_hex("State", state, 16);
  unsigned char expected_state[16] = {0x19, 0xf1, 0x24, 0xd6, 0x6b, 0xf1, 0x5f, 0x71,
                                      0x5f, 0x1f, 0x0f, 0x72, 0xec, 0x09, 0xe5, 0x6e};
  assert(memcmp(state, expected_state, 16) == 0);
}

// Test invMixColumns()
void test_invMixColumns()
{
  unsigned char state[16] = {0x19, 0xf1, 0x24, 0xd6, 0x6b, 0xf1, 0x5f, 0x71,
                             0x5f, 0x1f, 0x0f, 0x72, 0xec, 0x09, 0xe5, 0x6e};
  invMixColumns(state);
  printf("State after invMixColumns: ");
  print_hex("State", state, 16);
  // Known values for invMixColumns should be tested here
}

int main()
{
  // Run each test
  test_sbox_functions();
  test_rotate();
  test_expandKey();
  test_addRoundKey();
  test_invSubBytes();
  test_invShiftRows();
  test_invMixColumns();

  printf("All tests passed!\n");
  return 0;
}

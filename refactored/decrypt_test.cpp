#include <iostream>
#include <iomanip>
#include <cstring>
#include "decrypt.h"

// Assuming decrypt_dut and other AES functions are defined in just_encrypt.h
// extern "C" {
//     void decrypt_dut(unsigned char input[16], unsigned char output[16], unsigned char key[16]);
// }

void print_hex(const unsigned char *data, size_t size)
{
  for (size_t i = 0; i < size; ++i)
  {
    std::cout << std::hex << std::setw(2) << std::setfill('0') << (int)data[i] << " ";
  }
  std::cout << std::dec << std::endl; // Reset to decimal after hex output
}

int main()
{
  // Test Case 1: Standard AES 128 decryption

  // Example 16-byte ciphertext (AES block size is always 16 bytes)
  unsigned char ciphertext[16] = {
      0x39, 0x25, 0x84, 0x1d, 0x02, 0x87, 0x94, 0x23,
      0x5d, 0x88, 0x6d, 0x97, 0x2d, 0x5a, 0x9a, 0x67};

  // Example AES 128-bit key
  unsigned char key[16] = {
      0x2b, 0x7e, 0x15, 0x16, 0x28, 0xae, 0xd2, 0xa6,
      0xab, 0xf7, 0x97, 0x75, 0x46, 0x20, 0x63, 0xed};

  // Output buffer for decrypted plaintext
  unsigned char decrypted[16];

  // Call the decrypt_dut function to decrypt the ciphertext
  decrypt_dut(ciphertext, decrypted, key);

  std::cout << "Ciphertext: ";
  print_hex(ciphertext, 16);

  std::cout << "Decrypted plaintext: ";
  print_hex(decrypted, 16);

  // Check if the decryption matches the expected plaintext
  unsigned char expected_plaintext[16] = {
      0x32, 0x88, 0x31, 0xe0, 0x43, 0x5a, 0x31, 0x37,
      0xf6, 0x30, 0x98, 0x07, 0xa8, 0x8d, 0xa2, 0x34};

  if (std::memcmp(decrypted, expected_plaintext, 16) == 0)
  {
    std::cout << "Decryption successful! The output matches the expected plaintext." << std::endl;
  }
  else
  {
    std::cout << "Decryption failed! The output does not match the expected plaintext." << std::endl;
  }

  // // Test Case 2: Another decryption with different key and ciphertext
  // unsigned char ciphertext2[16] = {
  //     0x4f, 0x1f, 0x9f, 0x7e, 0x3a, 0x0b, 0x6d, 0xd5,
  //     0xf0, 0x94, 0x64, 0x5b, 0xbe, 0x77, 0x99, 0xe7
  // };

  // unsigned char key2[16] = {
  //     0x60, 0x3d, 0x61, 0x7e, 0x0f, 0x23, 0xaf, 0x22,
  //     0x9d, 0x38, 0x49, 0x59, 0x6b, 0xa1, 0x1e, 0x7a
  // };

  // unsigned char decrypted2[16];
  // decrypt_dut(ciphertext2, decrypted2, key2);

  // std::cout << "\nCiphertext2: ";
  // print_hex(ciphertext2, 16);

  // std::cout << "Decrypted plaintext2: ";
  // print_hex(decrypted2, 16);

  return 0;
}

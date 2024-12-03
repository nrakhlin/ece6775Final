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
  unsigned char ciphertext[16] = {0x72, 0xe5, 0xdb, 0x87, 0x94, 0x7e, 0x05, 0x97, 0x4b, 0x22, 0x17, 0xfd, 0xc6, 0xb1, 0x8a, 0x29};

  // Example AES 128-bit key
  unsigned char key[16] = {0x54, 0x68, 0x61, 0x74, 0x73, 0x20, 0x6D, 0x79, 0x20, 0x4B, 0x75, 0x6E, 0x67, 0x20, 0x46, 0x75};

  // Output buffer for decrypted plaintext
  unsigned char decrypted[16];

  // Call the decrypt_dut function to decrypt the ciphertext
  decrypt_dut(ciphertext, decrypted, key);

  std::cout << "Ciphertext: ";
  print_hex(ciphertext, 16);

  std::cout << "Decrypted plaintext: ";
  print_hex(decrypted, 16);

  // Check if the decryption matches the expected plaintext
  unsigned char expected_plaintext[16] = {'d', 'e', 'a', 'd', 'b', 'e', 'e', 'f', 'b', 'e', 'e', 'f', 'd', 'e', 'a', 'd'};
  std::cout << "Expected plaintext: ";
  print_hex(expected_plaintext, 16);

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

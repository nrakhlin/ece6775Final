#include<iostream>
#include<math.h>
// #include<hls_stream.h>
#include"rsa.h"
using namespace std;

// https://www.tutorialspoint.com/cplusplus-program-to-implement-the-rsa-algorithm

// find gcd
int gcd(bit1024_t a, bit1024_t b) {
  int t;
  while(1) {
    t = a % b;
    if(t == 0)
    return b;
    a = b;
    b = t;
  }
}

std::string to_hex_string_32(ap_uint<32> data) {
    std::string hex_str;
    for (int i = 3; i >= 0; --i) {
        unsigned char byte = data.range(8*i + 7, 8*i);
        char buf[3];
        snprintf(buf, sizeof(buf), "%02X", byte);
        hex_str += buf;
    }
    return hex_str;
}

void print_ap_uint_32(ap_uint<32> data) {
  std::cout << "" << to_hex_string_32(data) << std::endl;
}

std::string to_hex_string_256(ap_uint<256> data) {
    std::string hex_str;
    for (int i = 31; i >= 0; --i) {
        unsigned char byte = data.range(8*i + 7, 8*i);
        char buf[3];
        snprintf(buf, sizeof(buf), "%02X", byte);
        hex_str += buf;
    }
    return hex_str;
}

void print_ap_uint_256(ap_uint<256> data) {
    std::cout << "" << to_hex_string_256(data) << std::endl;
}

std::string to_hex_string_512(ap_uint<512> data) {
    std::string hex_str;
    for (int i = 63; i >= 0; --i) {
        unsigned char byte = data.range(8*i + 7, 8*i);
        char buf[3];
        snprintf(buf, sizeof(buf), "%02X", byte);
        hex_str += buf;
    }
    return hex_str;
}

void print_ap_uint_512(ap_uint<512> data) {
    std::cout << "" << to_hex_string_512(data) << std::endl;
}

std::string to_hex_string_1024(ap_uint<1024> data) {
    std::string hex_str;
    for (int i = 127; i >= 0; --i) {
        unsigned char byte = data.range(8*i + 7, 8*i);
        char buf[3];
        snprintf(buf, sizeof(buf), "%02X", byte);
        hex_str += buf;
    }
    return hex_str;
}

void print_ap_uint_1024(ap_uint<1024> data) {
    std::cout << "" << to_hex_string_1024(data) << std::endl;
}

int main() {
  // KEY GENERATION
  // 2 random prime numbers
  bit512_t p = 509;
  printf("p: ");
  print_ap_uint_512(p);
  bit512_t q = 7879;
  printf("q: ");
  print_ap_uint_512(q);
  rsa_key_t n = p * q;               // (public key)
  printf("n: ");
  print_ap_uint_1024(n);

  bit32_t e = 65537;                   // (public key) (commonly chosen value for e is 65537)
  int track;
  rsa_key_t phi = (p - 1)*(q - 1); 
  printf("phi: ");
  print_ap_uint_1024(phi);

  // checking that e and phi(n) are coprime
  while(e < phi) {
    track = gcd(e, phi);
    if(track == 1)
      break;
    else
      e++;
  }
  printf("e: ");
  print_ap_uint_32(e);

  // calculate d (modular multiplicative inverse)
  // https://www.geeksforgeeks.org/multiplicative-inverse-under-modulo-m/
  bit32_t d;                        // (private key)
  if( gcd(e, phi) > 1 ){    // modulo inverse does not exist
    d = -1;
  }
  else{
    for (int x = 1; x < phi; x++){
      if (((e % phi) * (x % phi)) % phi == 1){
        d = x;
      }
    }
  }
  printf("d: ");
  print_ap_uint_32(d);

  bit64_t message = 52315;

  // ENCRYPTION
  rsa_key_t c = rsa_encrypt(message, e, n);
  printf("c: ");
  print_ap_uint_256(c);

  // // DECRYPTION
  // bit64_t m = rsa_decrypt(c, d, n);
  // printf("m: %d\n", m);


  // HLS STREAM STUFF
  // bit64_t message = 65;

  // hls::stream<bit32_t> rsa_in;
  // hls::stream<bit32_t> rsa_out;

  // bit32_t input_lo = message.range(31, 0);
  // bit32_t input_hi = message.range(63, 32);

  // // Write words to the device
  // rsa_in.write(input_lo);
  // rsa_in.write(input_hi);

  // dut(rsa_in, rsa_out);

  // // Read result
  // bit32_t interpreted_digit = rsa_out.read();

  int res = dut(message, n, e, d);

  cout<<"\nOriginal Message = "<<message;
  // cout<<"\n"<<"Encrypted message = "<<c;
  cout<<"\n"<<"Decrypted message = "<<res;
  cout<<"\n";
  return 0;
}
//==========================================================================
// rsa.cpp
//==========================================================================
// @brief: RSA implementation for Vivado HLS

#include "rsa.h"

//----------------------------------------------------------
// Top function
//----------------------------------------------------------

bit2048_t mult_1024_square(bit1024_t c){
	bit2048_t res = 0;
	mult_square: for (int i = 0; i < 1024; i++){		// trip count = key size
		if (c(i,i)){
			res += (c << i);
		}
	}
	return res;
}

bit1088_t mult_1024_64(bit1024_t a, bit64_t b){
	bit1088_t res = 0;
	mult_1024_64: for (int i = 0; i < 1024; i++){		// trip count = key size
		if (a(i,i)){
			res += (b << i);
		}
	}
	return res;
}

/* Iterative Function to calculate (m^e)%n in O(log e) */
rsa_key_t rsa_encrypt(bit64_t m, bit32_t e, rsa_key_t n) { 
	rsa_key_t res = 1;	 // Initialize result 
	m = m % n; // Update m if it is more than or equal to p
	if (m == 0) {
    return 0; // In case m is divisible by p;
  }
  encrypt: for (int i = 0; i < 32; i++) { // trip count: ceiling(log2(e))
		if (e > 0){
			if (e & 1){             // bitwise AND; If e is odd, multiply m with result 
				// res = (res * m) % n; 							// 1024 x 64
				res = mult_1024_64(res, m) % n;
			}
			m = (m * m) % n; 										// 64 x 64
			e = e >> 1;
		}
	} 
	return res; 
} 

/* Iterative Function to calculate (c^d)%n in O(log d) */
bit64_t rsa_decrypt(rsa_key_t c, bit32_t d, rsa_key_t n) { 
	bit64_t res = 1;	 // Initialize result 
	c = c % n; // Update c if it is more than or equal to p
	if (c == 0) {
    return 0; // In case c is divisible by p;
  }
  decrypt: for (int i = 0; i < 32; i++) { // trip count: ceiling(log2(d))
		if (d > 0){
			if (d & 1){             // bitwise AND; If d is odd, multiply c with result 
				// res = (res * c) % n; 							// 64 x 1024
				res = mult_1024_64(c, res) % n;
			}
			// c = (c * c) % n; 										// 1024 x 1024
			c = mult_1024_square(c) % n;
			d = d >> 1;
		}
	} 
	return res; 
} 

bit64_t dut(bit64_t input_message, rsa_key_t n, bit32_t e, bit32_t d) {
  rsa_key_t c = rsa_encrypt(input_message, e, n);
	bit64_t output_message;
	return output_message = rsa_decrypt(c, d, n);
}

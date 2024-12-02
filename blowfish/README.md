## Steps for running blowfish <br>
1. Set the parray and sboxes using the *Blowfish_SetKey* function
2. Encrypt the ciphertext using the *Blowfish_Encrypt* function
3. Decrypt the ciphertext using the *Blowfish_Decrypt* function

Alternatively, you can set the key and encrypt in the same step using the *Blowfish_SetKey_Encrypt* function! 


### *Blowfish_SetKey* 
This function has the following inputs: 
* **unsigned char key[MAX_KEY_BYTE_LENGTH]**: The key used by the encryption/decryption modules. This can be at most MAX\_KEY\_BYTE\_LENGTH or 56 bytes long. 
* **size_t key_size**: The size of the key in bytes. This can be found by doing *(sizeof(key)-1)* in the testbench. I do not think *sizeof* is synthesizable; however, it should be perfectly legal to call in the testbench. 
* **unsigned int P[PARRAY_SIZE]**: An array of equal size to the the initial parray. Used to save the intialized parray.
* **unsigned int S[SBOX_SIZE_1][SBOX_SIZE_2]**: An array of equal size to the the initial sboxees. Used to save the intialized sboxes.

### *Blowfish_Encrypt*
This function has the following inputs: 
* **const unsigned char plaintext[BLOCK_SIZE]**: The plaintext to be encrypted. Must be equal to BLOCK_SIZE (i.e. 8 bytes).
* **unsigned char ciphertext[BLOCK_SIZE]**: Array to save the final ciphertext to. Must be equal to BLOCK_SIZE (i.e. 8 bytes).
* **unsigned int P[PARRAY_SIZE]**: Intialized Parray.
* **unsigned int S[SBOX_SIZE_1][SBOX_SIZE_2]**: Intialized sboxes.

### *Blowfish_Decrypt*
This function has the following inputs: 
* **unsigned char ciphertext[BLOCK_SIZE]**: The ciphertext to be decrypted. Must be equal to BLOCK_SIZE (i.e. 8 bytes).
* **unsigned char decryptedtext[BLOCK_SIZE]**:  Array to save the final decryptedtext to. Must be equal to BLOCK_SIZE (i.e. 8 bytes).
* **unsigned int P[PARRAY_SIZE]**: Intialized Parray.
* **unsigned int S[SBOX_SIZE_1][SBOX_SIZE_2]**: Intialized sboxes.

### *Blowfish_SetKey_Encrypt*
This function has the following inputs:
*Note, this function is **ONLY** composed of the inputs to Blowfish_Setkey and Blowfish_Encrpt with the exception of bool set_key.*
* **bool set_key**: If true, the function sets the key and encrypts the plaintext. If false, the function *ONLY* encrypted the plaintext
* **unsigned char key[MAX_KEY_BYTE_LENGTH]**: The key used by the encryption/decryption modules. This can be at most MAX\_KEY\_BYTE\_LENGTH or 56 bytes long. 
* **size_t key_size**: The size of the key in bytes. This can be found by doing *(sizeof(key)-1)* in the testbench. I do not think *sizeof* is synthesizable; however, it should be perfectly legal to call in the testbench. 
* **unsigned int P[PARRAY_SIZE]**: An array of equal size to the the initial parray. Used to save the intialized parray.
* **unsigned int S[SBOX_SIZE_1][SBOX_SIZE_2]**: An array of equal size to the the initial sboxees. Used to save the intialized sboxes.

## Example
**See main.cpp for an example of how to use the functions!**
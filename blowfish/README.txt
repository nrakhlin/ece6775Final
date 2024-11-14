I am implementing two types of blowfish algorithms:

- blowfish_pure: ONLY takes in 64 bit (8 byte) messages. If a message is more than 64 bits, it is up to the 
  programmer or some other party to properly reshape the message for use with the algorithm. 

- blowfish_flex: Can take input messages as large as MAX_BYTE_SIZE bytes. Hardware will paritition input message
  into the appropriate number of blocks.


blowfish_pure is basically done and synthesizable. I still need to implement blowfish_flex. 
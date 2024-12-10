#ifndef LFSR_H
#define LFSR_H

#include "ap_int.h"  


// DEFINES ---------------------------------------------------------------
#define LFSR_SEED 0xACE1U
#define LFSR_SEED_BITS 24

typedef ap_uint<LFSR_SEED_BITS> seed_type;


// FUNCTIONS -------------------------------------------------------------
// seed_type lfsr(seed_type seed);
seed_type lfsr(seed_type seed, bool enable);


#endif // LFSR_H


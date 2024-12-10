// #include "lfsr.h"


// // lfsr ------------------------------------------------------------------
// seed_type lfsr(seed_type seed) {
//     // For information on tap locations, see this link: 
//     // https://en.wikipedia.org/wiki/Linear-feedback_shift_register
//     // Tap positions for a 24-bit LFSR: taps at 24, 23, 22, and 17 (1-based),
//     // or 23, 22, 21, 16 (0-based)

//     ap_uint<1> feedback = (seed[23] ^ seed[22] ^ seed[21] ^ seed[16]);

//     // Shift the seed and insert the feedback bit
//     seed = (seed << 1) | feedback;

//     return seed;
// }


#include "lfsr.h"

// lfsr ------------------------------------------------------------------
seed_type lfsr(seed_type seed, bool enable) {
    // For information on tap locations, see this link: 
    // https://en.wikipedia.org/wiki/Linear-feedback_shift_register
    // Tap positions for a 24-bit LFSR: taps at 24, 23, 22, and 17 (1-based),
    // or 23, 22, 21, 16 (0-based)

    if (enable) {
        ap_uint<1> feedback = (seed[23] ^ seed[22] ^ seed[21] ^ seed[16]);

        // Shift the seed and insert the feedback bit
        seed = (seed << 1) | feedback;
    }

    return seed;
}

#include <iostream>
#include "lfsr.h"

#define NUM_TESTS 10000

int main() {
    seed_type seed = 0xACE1U;

    // Array to store previously generated numbers
    seed_type seenNumbers[NUM_TESTS];
    int numDuplicates = 0; // Counter for duplicates
    int totalNumbers = 0;  // Total numbers generated

    int i;
    bool isDuplicate;

    for (i = 0; i < NUM_TESTS; ++i) {
        seed = lfsr(seed);
        totalNumbers++;

        // Check if the number has already been generated (linear search in the array)
        isDuplicate = false;
        for (int j = 0; j < i; ++j) {
            if (seenNumbers[j] == seed) {
                isDuplicate = true;
                break;
            }
        }

        if (isDuplicate) {
            numDuplicates++;
            std::cout << "Duplicate number detected: " << seed << std::endl;
        } else {
            seenNumbers[i] = seed;
        }

        // Print generated number
        std::cout << "Random number " << i + 1 << ": " << seed << std::endl;
    }

    std::cout << "Total numbers generated: " << totalNumbers << std::endl;
    std::cout << "Total duplicates: " << numDuplicates << std::endl;

    return 0;
}

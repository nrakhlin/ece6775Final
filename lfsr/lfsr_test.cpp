#include <iostream>
#include "lfsr.h"

#define NUM_TESTS 10000

int main() {
    seed_type seed = 0xACE1U;

    // Test case 1: Basic LFSR functionality
    std::cout << "Test Case 1: LFSR without enable check" << std::endl;

    // Array to store previously generated numbers
    seed_type seenNumbers[NUM_TESTS];
    int numDuplicates = 0; // Counter for duplicates
    int totalNumbers = 0;  // Total numbers generated

    for (int i = 0; i < NUM_TESTS; ++i) {
        seed = lfsr(seed, true); // Enable is always true
        totalNumbers++;

        // Check if the number has already been generated
        bool isDuplicate = false;
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

        std::cout << "Random number " << i + 1 << ": " << seed << std::endl;
    }

    std::cout << "Total numbers generated: " << totalNumbers << std::endl;
    std::cout << "Total duplicates: " << numDuplicates << std::endl;

    // Test case 2: LFSR with enable toggling
    std::cout << "\nTest Case 2: LFSR with enable toggling" << std::endl;

    seed = 0xACE1U; // Reset seed
    bool enable = false;
    int toggleCount = 0;
    totalNumbers = 0;

    for (int i = 0; i < NUM_TESTS; ++i) {
        seed_type prevSeed = seed;

        seed = lfsr(seed, enable);

        // Check if seed changes when enable is false
        if (!enable && seed != prevSeed) {
            std::cerr << "Error: Seed changed when enable was false!" << std::endl;
            return 1;
        }

        // Toggle enable
        enable = !enable;
        toggleCount++;

        // Print seed and enable state
        std::cout << "Iteration " << i + 1 << ": seed = " << seed
                  << ", enable = " << (enable ? "true" : "false") << std::endl;
    }

    std::cout << "Total toggles: " << toggleCount << std::endl;
    std::cout << "Test Case 2 completed successfully." << std::endl;

    return 0;
}

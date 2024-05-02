#include <string.h>

int stringStat(const char *string, size_t multiplier, int *count) {
    if (string == NULL || count == NULL) {
        return -1; // Error: invalid input
    }

    size_t length = strlen(string);
    *count += 1;

    return length * multiplier;
}

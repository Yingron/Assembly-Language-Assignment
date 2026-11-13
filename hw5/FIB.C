#include <stdint.h>
#include <stdio.h>

enum { WORDS = 6, MAX_N = 100 };

typedef struct {
    uint16_t word[WORDS];   /* Least significant word first. */
} Big;

static Big cache[MAX_N + 1] = { [1] = {{1}} };
static unsigned char ready[MAX_N + 1] = { [0] = 1, [1] = 1 };

static const Big *fib(unsigned n)
{
    if (!ready[n]) {
        const Big *a = fib(n - 1);
        const Big *b = fib(n - 2);
        uint32_t carry = 0;

        for (unsigned i = 0; i < WORDS; ++i) {
            uint32_t sum = (uint32_t)a->word[i] + b->word[i] + carry;
            cache[n].word[i] = (uint16_t)sum;
            carry = sum >> 16;
        }
        ready[n] = 1;
    }
    return &cache[n];
}

static void print_big(const Big *value)
{
    Big work = *value;
    char digits[29];         /* ceil(log10(2^96)) */
    unsigned length = 0, nonzero;

    do {
        uint32_t remainder = 0;
        nonzero = 0;
        for (int i = WORDS - 1; i >= 0; --i) {
            uint32_t part = (remainder << 16) | work.word[i];
            work.word[i] = (uint16_t)(part / 10);
            remainder = part % 10;
            nonzero |= work.word[i];
        }
        digits[length++] = (char)('0' + remainder);
    } while (nonzero);

    while (length != 0)
        putchar(digits[--length]);
}

int main(void)
{
    unsigned n = 0, count = 0;
    int ch;

    puts("Enter n (1-100):");
    while ((ch = getchar()) != '\n' && ch != '\r' && ch != EOF) {
        if (ch < '0' || ch > '9' || count == 3)
            goto invalid;
        n = n * 10 + (unsigned)(ch - '0');
        ++count;
    }
    if (n < 1 || n > MAX_N)
        goto invalid;
    fputs("F(n) = ", stdout);
    print_big(fib(n));
    putchar('\n');
    return 0;

invalid:
    puts("Invalid input.");
    return 1;
}

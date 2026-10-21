#include <stdio.h>
#include <stdlib.h>
#include <errno.h>

unsigned int sum_to(unsigned int n)
{
    unsigned int total = 0;
    unsigned int i;
    for (i = 1; i <= n; ++i) total += i;
    return total;
}

int main(int argc, char **argv)
{
    unsigned long n = 100;
    char *end;
    if (argc > 2) return 1;
    if (argc == 2) {
        errno = 0;
        n = strtoul(argv[1], &end, 10);
        if (errno || end == argv[1] || *end || n < 1 || n > 100) return 1;
    }
    printf("%u\n", sum_to((unsigned int)n));
    return 0;
}

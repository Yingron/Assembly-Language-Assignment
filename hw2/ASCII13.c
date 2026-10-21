#include <stdio.h>

int main(void)
{
    int ch = 'a';
    for (int row = 0; row < 2; ++row) {
        for (int col = 0; col < 13; ++col) {
            putchar(ch);
            ++ch;
            if (col < 12) {
                putchar(' ');
            }
        }
        putchar('\n');
    }
    return 0;
}

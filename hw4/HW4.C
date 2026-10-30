/* Homework 4: C comparison, built with Cygwin GCC -O0 -g.
 * This is a Windows/Cygwin x86-64 program, not a DOS program.
 */
#include <stdio.h>

/* File-scope initialized array: static storage duration, writable .data. */
unsigned char global_table[9][9] = {
    {7,2,3,4,5,6,7,8,9},
    {2,4,7,8,10,12,14,16,18},
    {3,6,9,12,15,18,21,24,27},
    {4,8,12,16,7,24,28,32,36},
    {5,10,15,20,25,30,35,40,45},
    {6,12,18,24,30,7,42,48,54},
    {7,14,21,28,35,42,49,56,63},
    {8,16,24,32,40,48,56,7,72},
    {9,18,27,36,45,54,63,72,81}
};

void print_product(int row, int column)
{
    printf("%d*%d=%-2d  ", row, column, row * column);
}

void print_table(void)
{
    int row, column;
    puts("The 9mul9 table:");
    for (row = 9; row >= 1; --row) {
        for (column = 1; column <= row; ++column)
            print_product(row, column);
        putchar('\n');
    }
}

void report_error(int row, int column)
{
    printf("%d %d  error\n", row, column);
}

int check_global(void)
{
    int row, column, errors = 0;
    puts("x y");
    for (row = 0; row < 9; ++row) {
        for (column = 0; column < 9; ++column) {
            if (global_table[row][column] != (row + 1) * (column + 1)) {
                report_error(row + 1, column + 1);
                ++errors;
            }
        }
    }
    puts("\naccomplish!");
    return errors;
}

int check_local(void)
{
    /* Automatic local array: this build initializes 81 bytes on its stack. */
    unsigned char local_table[9][9] = {
        {7,2,3,4,5,6,7,8,9},
        {2,4,7,8,10,12,14,16,18},
        {3,6,9,12,15,18,21,24,27},
        {4,8,12,16,7,24,28,32,36},
        {5,10,15,20,25,30,35,40,45},
        {6,12,18,24,30,7,42,48,54},
        {7,14,21,28,35,42,49,56,63},
        {8,16,24,32,40,48,56,7,72},
        {9,18,27,36,45,54,63,72,81}
    };
    int row, column, errors = 0;
    puts("x y");
    for (row = 0; row < 9; ++row) {
        for (column = 0; column < 9; ++column) {
            if (local_table[row][column] != (row + 1) * (column + 1)) {
                report_error(row + 1, column + 1);
                ++errors;
            }
        }
    }
    puts("\naccomplish!");
    return errors;
}

int main(void)
{
    print_table();
    puts("\nGlobal table:");
    check_global();
    puts("\nLocal table:");
    check_local();
    return 0;
}

#include <stdio.h>
#include <string.h>

static const char *const month_names[] = {
    "January", "February", "March", "April", "May", "June",
    "July", "August", "September", "October", "November", "December"
};
static const int month_days[] = {
    31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31
};

static int read_number(const char *prompt, int min, int max)
{
    char line[80];

    for (;;) {
        fputs(prompt, stdout);
        fflush(stdout);
        if (fgets(line, sizeof line, stdin) == NULL)
            return -1;

        size_t digits = strcspn(line, "\n");
        if (digits > 0 && line[digits - 1] == '\r')
            --digits;
        int complete = strchr(line, '\n') != NULL || feof(stdin);
        if (!complete) {
            int ch;
            do {
                ch = getchar();
            } while (ch != '\n' && ch != EOF);
        }

        size_t i = 0;
        int value = 0;
        if (complete && digits <= 4) {
            while (i < digits && line[i] >= '0' && line[i] <= '9') {
                value = value * 10 + line[i] - '0';
                ++i;
            }
            if (i == digits && value >= min && value <= max)
                return value;
        }
        puts("Invalid input. Try again.");
    }
}

static int month_info(int year, int month, int *days)
{
    int elapsed = year - 1900;
    int leap = elapsed != 0 && elapsed % 4 == 0;
    int weekday = 1 + elapsed;

    if (elapsed != 0)
        weekday += (elapsed + 3) / 4 - 1;
    for (int i = 0; i < month - 1; ++i)
        weekday += month_days[i];
    if (month > 2)
        weekday += leap;

    *days = month_days[month - 1] + (month == 2 ? leap : 0);
    return weekday % 7;
}

static void print_calendar(int year, int month)
{
    int days;
    int column = month_info(year, month, &days);

    printf("\n%d   %s\n", year, month_names[month - 1]);
    puts("Su Mo Tu We Th Fr Sa");
    for (int i = 0; i < column; ++i)
        fputs("   ", stdout);
    for (int day = 1; day <= days; ++day) {
        printf("%2d", day);
        if (++column == 7 || day == days) {
            putchar('\n');
            column = 0;
        } else {
            putchar(' ');
        }
    }
}

int main(void)
{
    int year = read_number("Please input year (1900-2099): ", 1900, 2099);
    if (year < 0)
        return 1;
    int month = read_number("Please input month (1-12): ", 1, 12);
    if (month < 0)
        return 1;
    print_calendar(year, month);
    return 0;
}

#include <stdio.h>
int main(void)
{
    int i,j;
    printf("\t九九の表\n");
    printf("\t+---+--+--+--+--+--+--+--+--*\n");
    printf("\t|  |1|2|3|4|5|6|7|8|9|\n");
    printf("\t+---+--+--+--+--+--+--+--+--*\n");
    for(i = 1; i<10; i++)
    {
        printf("\t|%2d |", i*j);
        for (j=1; j<10; j++)
        {
            printf("%2d|", i*j);
        }
        printf("\n");
    }
    printf("\t+---+--+--+--+--+--+--+--+--*\n");
    return 0;
}
#include "stdio.h"

unsigned char testo1[]= {'o','m','a','r',0};
unsigned char testo2[]= {'l','a','z','z','a','r','i',0};
unsigned char *p[]={testo1,testo2};

int main(void)
{
int i=0;
for (i = 0; i < 10; i++) {
    printf("%s\n", p[i%2]);
}
}

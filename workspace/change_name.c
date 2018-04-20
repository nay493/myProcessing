#include<stdio.h>

int main()
{

char p1[10]="Nayeem\n";
printf("%s\n",p1);
//p1[0]='M';
*(p1+0)='M';
printf("%s\n",p1);
return 0;
}

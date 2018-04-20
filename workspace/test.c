#include<stdio.h>

int main()
{

struct s1{
int i;
char c;
float f;
long int li;
};

union u1{
struct s1 a;
struct s1 b;
};

union u2{
struct s1 s;
struct s1{
int i;
char c;
float f;
long int li;
};
};


printf("Hello world\n");
return 0;
}

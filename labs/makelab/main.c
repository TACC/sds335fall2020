/****************************************************************
 ****
 **** This program source is part of
 **** Introduction to High-performance Scientific Computing
 **** by Victor Eijkhout
 **** copyright Victor Eijkhout 2011-2020
 ****
 **** fooprog.c : simple main program using external function
 ****
 ****************************************************************/
#include <stdlib.h>
#include <stdio.h>

void foo(char*);
void bar(char*);

int main() {
  foo("hello");
  bar("world");
  return 0;
}

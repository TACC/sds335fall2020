/****************************************************************
 ****
 **** sub1.c : declaration of function for fooprog.c
 ****
 ****************************************************************/
#include <stdlib.h>
#include <stdio.h>

#include "foobar.h"

void foo(char *s,int i) {
  printf("Text one==: %s %d\n",s,i);
  return;
}

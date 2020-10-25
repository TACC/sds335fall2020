/****************************************************************
 ****
 **** fooprog.c : simple main program using external function
 ****
 ****************************************************************/
#include <stdlib.h>
#include <stdio.h>

#include "foobar.h"

int main() {
  foo("hello",37);
  bar("world");
  return 0;
}

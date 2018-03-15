#include <iostream>
#include "../../include/linalg.h"

int main(){
  int ia = 1;
  int ib = 2;
  int ic = 0;

  isum_(&ia,&ib,&ic);
  std::cout << ic << std::endl;
  
  return 0;
}

#include <iostream>
/*#include "linalg.h"*/

extern "C"{                                                        
  void isum_(int*,int*,int*);
  void iprod_(int*,int*,int*);                           
  void dsum_(double*,double*,double*);                   
  void dprod_(double*,double*,double*);
  }   

int main(){
  int ia = 1;
  int ib = 2;
  int ic = 0;

  int ii=5;
  float ff=5.5;

  isum_(&ia,&ib,&ic);
  std::cout << ic << std::endl;
  
  return 0;
}

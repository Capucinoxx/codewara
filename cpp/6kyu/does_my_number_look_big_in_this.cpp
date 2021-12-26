#include <cmath>

// +-------------------------------------------------------------------------+
// | Does my number look big in this?                                        |
// |                                                                         |
// | Date:    27 février 2021                                                |
// | Author:  Benjamin Courchesne (Capucinoxx)                               |
// | Link:    https://www.codewars.com/kata/5287e858c6b5a9678200083c         |
// +-------------------------------------------------------------------------+

bool narcissistic( int value ){
  int n = 0;
  int m = value;
  int digit = (int)ceil(log10((double)value));
  
  while(m > 0) {
    n += (int)pow(m % 10, digit);
    m /= 10;
  }
  
  return n == value;
}

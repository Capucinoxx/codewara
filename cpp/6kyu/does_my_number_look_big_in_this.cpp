#include <cmath>

// +-------------------------------------------------------------------------+
// | Does my number look big in this?                                        |
// |                                                                         |
// | Date:    27 février 2021                                                |
// | Author:  Benjamin Courchesne (Capucinoxx)                               |
// | Link:    https://www.codewars.com/kata/5287e858c6b5a9678200083c         |
// +-------------------------------------------------------------------------+

bool narcissistic(int value){
  int n, m;
  int digit = log10(value) + 1;

  for (n = 0, m = value; m > 0;m /= 10) { n += (int)pow(m % 10, digit); }
  
  return n == value;
}

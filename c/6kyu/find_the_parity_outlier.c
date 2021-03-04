#include <stdlib.h>

// https://www.codewars.com/kata/5526fc09a1bbd946250002dc

int find_outlier(const int *values, size_t count);

int find_outlier(const int *values, size_t count){
  int odds[count];
  int evens[count];
  int len_o = 0, len_e = 0;
  int i = 0, j = 0, k = 0;
  
  for (;i < count;i++) {
    if (values[i] % 2 == 0) {
      evens[j++] = values[i];
      len_e++;
    } else {
      odds[k++] = values[i];
      len_o++;
    }
  }
  
  if (len_e > len_o) return odds[0];
  return evens[0];
}
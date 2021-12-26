// +-------------------------------------------------------------------------+
// | CamelCase method                                                        |
// |                                                                         |
// | Date:    08 aout 2021                                                   |
// | Author:  Benjamin Courchesne (Capucinoxx)                               |
// | Link:    https://www.codewars.com/kata/587731fda577b3d1b0001196         |
// +-------------------------------------------------------------------------+

import java.util.Arrays;

public class Solution {
  public static String camelCase(String str) {
    StringBuilder result = new StringBuilder();
    Arrays.stream(str.split(" ")).forEach(n -> {
      if (n.length() != 0) {
        result.append((n.substring(0,1).toUpperCase() + n.substring(1).toLowerCase()));
      }
    });
    return result.toString();
  }
}

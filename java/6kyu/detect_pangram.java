// +-------------------------------------------------------------------------+
// | Detect pangram                                                          |
// |                                                                         |
// | Date:    08 aout 2021                                                   |
// | Author:  Benjamin Courchesne (Capucinoxx)                               |
// | Link:    https://www.codewars.com/kata/545cedaa9943f7fe7b000048         |
// +-------------------------------------------------------------------------+

public class PangramChecker {
  public boolean check(String sentence){

    int i = 0;
    for (char c : sentence.toCharArray()) {
      int x = Character.toUpperCase(c);
      if (x >= 'A' && x <= 'Z')  i |= 1 << (x - 'A');
    }
    return (i == (1 << (1 + 'Z' - 'A')) - 1);

  }
}
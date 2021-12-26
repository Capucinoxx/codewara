package kata

// +-------------------------------------------------------------------------+
// | Perimeter of squares in a rectangle                                     |
// |                                                                         |
// | Date:    16 juillet 2021                                                |
// | Author:  Benjamin Courchesne (Capucinoxx)                               |
// | Link:    https://www.codewars.com/kata/559a28007caad2ac4e000083         |
// +-------------------------------------------------------------------------+

func fibonacci() func() int {
  x, y := 0, 1
  return func() int {
    x, y = y, x+y
    return x
  }
}

func Perimeter(n int) int {
  f := fibonacci()
  sum := 0
  for i := 0; i < n+1; i++ {
    sum += f()
  }

  return 4 * sum
}

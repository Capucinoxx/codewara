package kata

// https://www.codewars.com/kata/559a28007caad2ac4e000083

func fibonacci() func() int {
	x := 0
	y := 1

	return func() int {
		x, y = y, x+y
		return x
	}
}

func Perimeter(n int) int {
	perimeter := 0
	f := fibonacci()

	for i := 0; i <= n; i++ {
		perimeter += 4 * f()
	}

	return perimeter
}

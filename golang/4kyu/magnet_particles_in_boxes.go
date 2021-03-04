package kata

import (
	"math"
)

/**
link: https://www.codewars.com/kata/56c04261c3fcf33f2d000534
*/

func Doubles(maxk, maxn int) float64 {
	v := 0.0

	for k := 1.0; k <= float64(maxk); k++ {
		for n := 1.0; n <= float64(maxn); n++ {
			v += 1.0 / float64((k * math.Pow(n+1, 2*k)))
		}
	}

	return v
}

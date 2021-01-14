package kata

/**
link: https://www.codewars.com/kata/585d7d5adb20cf33cb000235
*/

/** SITUATION:
There is an array with some numbers. All numbers are equal except for one. Try to find it!

findUniq([ 1, 1, 1, 2, 1, 1 ]) === 2
findUniq([ 0, 0, 0.55, 0, 0 ]) === 0.55
It’s guaranteed that array contains at least 3 numbers.

The tests contain some very huge arrays, so think about performance.

This is the first kata in series:

1. Find the unique number (this kata)
2. Find the unique string
3. Find The Unique
*/

func FindUniq(arr []float32) float32 {
	hash := make(map[float32]int)

	for _, v := range arr {
		hash[v]++
	}

	for k, v := range hash {
		if v == 1 {
			return k
		}
	}

	return 0.0
}

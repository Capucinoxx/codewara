package kata

import (
	"sort"
	"strings"
)

// https://www.codewars.com/kata/550554fd08b86f84fe000a58

func InArray(array1 []string, array2 []string) []string {
	hash := make(map[string]int)
	value := make([]string, 0)

	for _, w2 := range array2 {
		for _, w1 := range array1 {
			if strings.Contains(w2, w1) {

				if hash[w1] += 1; hash[w1] == 1 {
					value = append(value, w1)
				}

			}
		}
	}
	sort.Strings(value)

	return value
}

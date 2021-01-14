package kata

/**
link: https://www.codewars.com/kata/58c5577d61aefcf3ff000081
*/

/** SITUATION:
Create two functions to encode and then decode a string using the Rail Fence Cipher. This cipher is
used to encode a string by placing each character successively in a diagonal along a set of "rails".
First start off moving diagonally and down. When you reach the bottom, reverse direction and move
diagonally and up until you reach the top rail. Continue until you reach the end of the string. Each
"rail" is then read left to right to derive the encoded string.

For example, the string "WEAREDISCOVEREDFLEEATONCE" could be represented in a three rail system as follows:

W       E       C       R       L       T       E
  E   R   D   S   O   E   E   F   E   A   O   C
    A       I       V       D       E       N
The encoded string would be:

WECRLTEERDSOEEFEAOCAIVDEN
Write a function/method that takes 2 arguments, a string and the number of rails, and returns the ENCODED string.

Write a second function/method that takes 2 arguments, an encoded string and the number of rails, and returns the
DECODED string.

For both encoding and decoding, assume number of rails >= 2 and that passing an empty string will return an empty string.

Note that the example above excludes the punctuation and spaces just for simplicity. There are, however, tests that
include punctuation. Don't filter out punctuation as they are a part of the string.
*/

import "strings"

func Encode(s string, n int) string {
	text := make([]string, len(s))
	for start, end := range cipher(len(s), n) {
		text[start] = string(s[end])
	}

	return strings.Join(text, "")
}

func Decode(s string, n int) string {
	text := make([]string, len(s))
	for start, end := range cipher(len(s), n) {
		text[end] = string(s[start])
	}
	return strings.Join(text, "")
}

func cipher(itms int, n int) []int {
	var rails [][]int
	rail, dRail := 0, 1

	for i := 0; i < itms; i++ {
		if rail <= n {
			rails = append(rails, []int{})
		}
		rails[rail] = append(rails[rail], i)
		if (rail+dRail) < 0 || n <= (rail+dRail) {
			dRail *= -1
		}
		rail += dRail
	}
	result := []int{}
	for _, slice := range rails {
		result = append(result, slice...)
	}
	return result
}

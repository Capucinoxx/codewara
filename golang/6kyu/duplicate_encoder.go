package kata

/**
link: https://www.codewars.com/kata/54b42f9314d9229fd6000d9c
*/

/** SITUATION:
The goal of this exercise is to convert a string to a new string where each character in the new
string is "(" if that character appears only once in the original string, or ")" if that character
appears more than once in the original string. Ignore capitalization when determining if a
character is a duplicate.

Examples
"din"      =>  "((("
"recede"   =>  "()()()"
"Success"  =>  ")())())"
"(( @"     =>  "))(("
Notes

Assertion messages may be unclear about what they display in some languages. If you read "...It Should
encode XXX", the "XXX" is the expected result, not the input!
*/

import (
	"fmt"
	"strings"
)

func DuplicateEncode(word string) string {
	m := make(map[rune]int)
	s := ""
	word = strings.ToLower(word)
	fmt.Println(word)
	for _, b := range word {
		m[b]++
	}

	for _, b := range word {
		if m[b] > 1 {
			s += ")"
		} else {
			s += "("
		}
	}

	return s
}

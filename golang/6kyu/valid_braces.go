package kata

// https://www.codewars.com/kata/5277c8a221e209d3f6000b56

func ValidBraces(str string) bool {
	runes := make([]rune, 0)

	for _, r := range str {
		n := len(runes) - 1

		switch r {
		case '}':
			if n < 0 {
				return false
			}
			curr := runes[n]
			runes = runes[:n]
			if curr != '{' {
				return false
			}
		case ']':
			if n < 0 {
				return false
			}
			curr := runes[n]
			runes = runes[:n]
			if curr != '[' {
				return false
			}
		case ')':
			if n < 0 {
				return false
			}
			curr := runes[n]
			runes = runes[:n]
			if curr != '(' {
				return false
			}
		default:
			runes = append(runes, r)
		}
	}

	if len(runes) == 0 {
		return true
	}
	return false
}

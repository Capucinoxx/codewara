def interesting? n
  return false if n % 100 == n
  return true if n % 100 == 0
  n = n.to_s
  return true if n == n.reverse
  return true if '1234567890'.include? n
  return true if '9876543210'.include? n
end

def is_interesting(number, awesome_phrases)
  return 1 if awesome_phrases.include?(number + 1) or awesome_phrases.include?(number + 2)

  return 2 if awesome_phrases.include?(number) or interesting?(number)

    return 1 if interesting?(number + 1) or interesting?(number+2)
  return 0
end


is_interesting(3236, [1337, 256]) # 0
is_interesting(11210, [])         # 1
is_interesting(1337, [1337, 256]) # 2
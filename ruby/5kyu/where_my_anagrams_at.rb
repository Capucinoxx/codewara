#https://www.codewars.com/kata/523a86aa4230ebb5420001e1

def anagrams(word, words)
  correct = []
  w = word.chars.sort.join
  words.each { |s| correct << s if (p s.chars.sort.join <=> w) == 0 }
  correct
end
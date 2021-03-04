=begin
Date: 2021-01-08 by Benjamin Courchesne
link: https://www.codewars.com/kata/54b42f9314d9229fd6000d9c
=end

def duplicate_encode(word)
  word.downcase.chars.map{ |x| word.downcase.count(x) > 1 ? ")" : "("}.join
end

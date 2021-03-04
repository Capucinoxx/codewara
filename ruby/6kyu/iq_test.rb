=begin
Date: 2021-01-08 by Benjamin Courchesne
link: https://www.codewars.com/kata/552c028c030765286c00007d
=end

def iq_test(numbers)
  n = numbers.split.map(&:to_i).map(&:even?)
  n.count(true) > 1 ? n.index(false) + 1 : n.index(true) + 1
end

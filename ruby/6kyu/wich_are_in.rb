=begin
link: https://www.codewars.com/kata/550554fd08b86f84fe000a58
=end

def in_array(array1, array2)
  array1.select{ |x1| array2.any?{ |x2| x2.include?(x1) } }.sort
end

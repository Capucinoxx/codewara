=begin
>>> DESCRIPTION
  Create a simple calculator that given a string of operators (), +, -, *, / and numbers separated 
  by spaces returns the value of that expression

  Example:

  `Calculator.new.evaluate("2 / 2 + 3 * 4 - 6") # => 7`
  Remember about the order of operations! Multiplications and divisions have a higher priority and should 
  be performed left-to-right. Additions and subtractions have a lower priority and should also be performed 
  left-to-right.

>>> LOGIC


Date: 2021-01-08 by Benjamin Courchesne
link: https://www.codewars.com/kata/5235c913397cbf2508000048
=end

class Calculator
  def evaluate(string)
    [' + ', ' - ', ' * ', ' / '].each{ |operator| return string.split(operator).map{ |s| evaluate(s) }.inject(operator.strip) if string.include?(operator) }
    string.to_f
  end
end

Calculator.new.evaluate("2 / 2 + 3 * 4 - 6") # 7

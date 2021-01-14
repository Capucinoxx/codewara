=begin
link: https://www.codewars.com/kata/517abf86da9663f1d2000003
=end

def to_camel_case(str)
  str.empty? ? "" : str.split(/-|_/).map{ |x| x.capitalize }.join("").tap { |c| c[0] = str[0] }
end

to_camel_case("the-stealth-warrior") # theStealthWarrior
to_camel_case("The_Stealth_Warrior") # TheStealthWarrior

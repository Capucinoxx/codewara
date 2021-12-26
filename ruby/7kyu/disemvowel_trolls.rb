# +-------------------------------------------------------------------------+
# | Disemvowel Trolls                                                       |
# |                                                                         |
# | Date:    04 juin 2021                                                   |
# | Author:  Benjamin Courchesne (Capucinoxx)                               |
# | Link:    https://www.codewars.com/kata/52fba66badcd10859f00097e         |
# +-------------------------------------------------------------------------+

def disemvowel(str)
  str.split('').delete_if { |e| "aeiouAEIOU".include?(e) }.join
end

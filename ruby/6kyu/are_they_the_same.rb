# +-------------------------------------------------------------------------+
# | Are they the "same"?                                                    |
# |                                                                         |
# | Date:    9 juin 2021                                                    |
# | Author:  Benjamin Courchesne (Capucinoxx)                               |
# | Link:    https://www.codewars.com/kata/550498447451fbbd7600041c         |
# +-------------------------------------------------------------------------+

def comp(array1, array2)
  array1.nil? || array2.nil? ?
    false :
    array1.map { |v| v ** 2 }.sort == array2.sort
end

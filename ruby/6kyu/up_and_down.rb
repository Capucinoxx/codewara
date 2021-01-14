=begin
link: https://www.codewars.com/kata/56cac350145912e68b0006f0
=end

def arrange(strng)
  ar = strng.split(' ')
  (0..(ar.length-1)).map{ |x| ar[x,2] = ar[x,2].sort{ |a,b| x.even? ? a.length <=> b.length : b.length <=> a.length } }
  ar.each_index.map{ |x| x.odd? ? ar[x].upcase : ar[x].downcase }.join(' ')
end
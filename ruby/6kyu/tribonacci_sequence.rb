=begin

Date: 2021-01-08 by Benjamin Courchesne
link: https://www.codewars.com/kata/556deca17c58da83c00002db
=end

def tribonacci(signature,n)
  idx = signature.length
  (n-signature.length).times { | x | signature[x+idx] = signature[x-1+idx] + signature[x-2+idx] + signature[x-3+idx]}
  return signature[0...n]
end
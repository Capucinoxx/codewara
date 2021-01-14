=begin
link: https://www.codewars.com/kata/57814d79a56c88e3e0000786/solutions/ruby
=end

def encrypt(text, n)
  return text if n <= 0
  return text if text == ""
  ar = ["", ""]
  text.split('')&.each_slice(2).to_a.map{ |x| ar[1] += x[0]; ar[0] += x[-1] if x.length == 2 }
  
  encrypt(ar.join, n-1)
end

def decrypt(encrypted_text, n)
  return encrypted_text if n <= 0
  return encrypted_text if encrypted_text == ""
  ar = ["", ""]
  len = encrypted_text.length
  
  
  ar[0] = encrypted_text[0...(len/2)]
  ar[1] = encrypted_text[(len/2)..-1]
  
  if ar[0].size >= ar[1].size
    ar = ar[0].each_char.to_a.zip(ar[1].each_char.to_a)  
  else
    ar = ar[1].each_char.to_a.zip(ar[0].each_char.to_a).map(&:reverse)
  end
  decrypt(ar.map{ |x| x.reverse.join }.join, n-1)
end

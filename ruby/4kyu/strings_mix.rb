def mix(s1, s2)
  s1hash = Hash.new {|v,k| v[k] = 0}
  s2hash = Hash.new {|v,k| v[k] = 0}
  s1.chars.each{ |x| s1hash[x] +=1 if x =~ /[a-z]/ }
  s2.chars.each{ |x| s2hash[x] +=1 if x =~ /[a-z]/ }
  
  result = []
   high = 0
   ("a".."z").each do |x|
     result << [1, x, s1hash[x]] if s1hash[x] > s2hash[x] && s1hash[x] > 1
     result << [2, x, s2hash[x]] if s2hash[x] > s1hash[x] && s2hash[x] > 1
     result << [3, x, s1hash[x]] if s1hash[x] == s2hash[x] && s1hash[x] > 1
     high = s1hash[x] if s1hash[x] > high
     high = s2hash[x] if s2hash[x] > high
   end
  
   output = []
 (high).downto(2) do |n|
   temp = []
   result.each do |x|
     if x[2] == n
       temp << [x[0],x[1],x[2]]
     end
   end
   temp = temp.sort_by! {|a,b,c| a}
   temp.each do |x|
     x[0] == 3 ? m = "=" : m = x[0].to_s
     output << "#{m}:#{x[1]*x[2]}"
   end
 end
 output.join("/")
end
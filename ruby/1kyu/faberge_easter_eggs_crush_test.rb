# https://www.codewars.com/kata/5976c5a5cd933a7bbd000029

MOD = 998244353

V = [0,1]

(2..80001).each { |x| V << ((x-V[MOD % x])*(MOD / x) + MOD % x) % MOD }


def height(n,m)
  res, t = 0, 1
  m %= MOD
  (1...(n+1)).each do |x|
    t = t * (m - x + 1) * V[x] % MOD
    res = (res + t) % MOD
  end
  
  return res % MOD
end
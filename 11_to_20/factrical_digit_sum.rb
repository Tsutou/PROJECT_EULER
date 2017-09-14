ans = 0

def fact(n, a = 1)
  return a if n == 0
  fact(n-1, n*a)
end

num = fact(100)
array = num.abs.to_s.each_byte.map{|b| b - 0x30}
array.each do |n|
  ans += n
end

p ans

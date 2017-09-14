
include Math
require 'mathn'

def ab_sum(i,j)
  beki = 1
  sum  = 1
  for k in 1..j
    beki = beki * i
    sum  = sum  + beki
  end

  return sum

end

overflowAry = Array.new

  for i in 1..28122 do

    sum = 1

    pq = i.prime_division

    pq.each do |tes|
      sum *= ab_sum(tes[0],tes[1])
    end

    if sum > i * 2
      overflowAry << i
    end

  end

overflowAry2 = overflowAry

result       = Array.new


overflowAry.each do |n1|

  overflowAry2.each do |n2|

    if (n1 + n2) < 28123

    result[ n1 + n2 ] = 1

    end

  end

end


i   = 0
ans = 0

result.each do |num|

  if !num
    ans = ans+i
  end

  i = i + 1

end

p ans

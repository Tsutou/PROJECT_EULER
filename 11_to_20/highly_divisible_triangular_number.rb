include Math
require 'mathn'

def sankaku(sankaku,i)
 return sankaku+i
end

sankaku=0
i=0

loop do

  i = i+1

  sankaku = sankaku(sankaku,i)

  p sankaku

  pq = sankaku.prime_division

  div = 1

  pq.each do |tes|

  div = div*(tes[1]+1)

  end

  if div>500 then
    p sankaku
    break
  end
end

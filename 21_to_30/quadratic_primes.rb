
require 'mathn'

num = 0
result = 0

(-1_000..1_000).each do |a|
  (1..1_000).each do |b|
    n = 0

    while (((n ** 2) + (a * n) + b).prime?)
      n += 1
    end

     num, result =  n, a * b if (n > num)
  end
end

p num
p result

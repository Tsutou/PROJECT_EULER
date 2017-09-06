def collatz(n)
  ary = Array.new

  loop do
    if n % 2 == 0
      result =  n / 2
    else
      result = (3 * n) + 1
    end

    ary << result
    n = result

    break if result == 1
  end

  return ary.length
end

size = 0

for n in 1..1000000
  if size <  collatz(n)
    size =  collatz(n)
    p n
  end
end

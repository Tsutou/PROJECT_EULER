a = 1
b = 1
idx = 0

def count_digits(n)
  n.abs.to_s.size
end

while idx >= 0 do

  idx += 1
  a, b = b, a + b


  if count_digits(a) == 1000
    p idx + 1
    break
  end

end

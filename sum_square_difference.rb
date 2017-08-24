
def squaring
  suq      = 0

  for a in 1..100 do
    suq = suq + a * a

    if a == 100
      puts suq
    end
  end

  return suq;

end

def summation
  sum      = 0

  for b in 1..100 do
    sum += b

    if b == 100
      answer = sum * sum
      puts answer;
    end
  end

  return answer;

end

puts "#{summation.to_i - squaring.to_i}"

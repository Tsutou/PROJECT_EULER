def multiple_3_5

  num = 0
  sum = 0

  while num < 999 do

    num += 1

    if num % 3 == 0 || num % 5 == 0
      sum = sum + num
    end

  end

puts sum

end

multiple_3_5

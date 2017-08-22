a = 1
b = 1
sum = 0

while a < 4000000

  if a % 2 == 0
   print "#{a} "
   sum = sum + a
  end

  a, b = b, a + b

end

puts sum

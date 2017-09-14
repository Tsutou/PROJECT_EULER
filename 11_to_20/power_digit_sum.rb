def power_digit
  array = Array.new
  digit = 2 ** 1000
  relay = digit.to_s.split('').to_a

  relay.each do |a|
    array << a.to_i
  end

  return array;
end

sum = array.inject(:+)

p sum


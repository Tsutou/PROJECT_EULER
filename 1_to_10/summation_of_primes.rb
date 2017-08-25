require 'prime'

list = []

Prime.each(2000000) do |prime|
  list << prime
end

puts list.inject(:+)

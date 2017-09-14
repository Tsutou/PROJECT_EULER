
result = 0
array = Array.new

for f in 0..9 do
  for a in 0..9 do
    for b in 0..9 do
      for c in 0..9 do
        for d in 0..9 do
          for e in 0..9 do
            result = a**5 + b**5 + c**5 + d**5 + e**5 + f**5
            if result == (f*100000 + a*10000 + b*1000 + c*100 + d*10 +e)
              array << result
            end
          end
        end
      end
    end
  end
end

p array

sum = array.inject(:+) - 1
p sum

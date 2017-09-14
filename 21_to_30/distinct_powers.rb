array = Array.new

for i in 2..100 do
  for j in 2..100 do
    array << i**j
  end
end

result = array.uniq
p result.length

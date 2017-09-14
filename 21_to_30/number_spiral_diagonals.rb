array = (1..501).map {|i| i*2-1}
cross = Array.new

array.each_with_index do |num, i|
  if i == 0
    cross << num
  else
    cross << num**2         #右上
    cross << num**2 - i*2   #左上
    cross << num**2 - i*4   #左下
    cross << num**2 - i*6   #右下
  end
end

sum = cross.inject(:+)
p sum

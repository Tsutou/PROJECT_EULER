File::open("Files/names.txt") do |f|
  i = 0
  puts f.gets.split(",").map{|n| n.gsub(/\"/, "")}.sort.inject(0){|s, n|
    s + n.untaint.bytes.to_a.map{|b| b - 64}.inject(:+) * (i += 1)
  }
end
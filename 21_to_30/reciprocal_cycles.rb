max = 1000

prime = Array.new(max, 1)

prime[0..1] = [0, 0]

i = 2

while i < Math.sqrt(max).to_i + 1 do
    (i + i).step(max, i){|x| prime[x] = 0}
    i += prime[(i + 1)..max].index(1) + 1
end

puts prime.each_index{|i|
    prime[i] = i unless prime[i].zero?
}.select{|x| !x.zero?}.map{|x|
    i = 1
    while true
        r = (10 ** i) % x
        break if r == 1 || r == 0
        i += 1
    end
    [x, r == 0 ? 0 : i]
}.sort{|a, b| b[1] <=> a[1]}[0][0]
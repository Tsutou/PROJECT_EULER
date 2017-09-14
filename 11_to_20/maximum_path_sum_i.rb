
numbers =
'
75
95 64
17 47 82
18 35 87 10
20 04 82 47 65
19 01 23 75 03 34
88 02 77 73 07 63 67
99 65 04 28 06 16 70 92
41 41 26 56 83 40 80 70 33
41 48 72 33 47 32 37 16 94 29
53 71 44 65 25 43 91 52 97 51 14
70 11 33 28 77 73 17 78 39 68 17 57
91 71 52 38 17 14 91 43 58 50 27 29 48
63 66 04 68 89 53 67 30 73 16 69 87 40 31
04 62 98 27 23 09 70 98 73 93 38 53 60 04 23'

strAry = numbers.split(" ")
new_strAry = []
total = []

num = 0
for a in 0..14 do
  ary = []
  for b in 0..num do
    #配列の最初の要素を削除
    n = strAry.shift
    #末尾にnを追加
    ary.push(n.to_i)
  end
  new_strAry << ary
  num = num + 1
end

(1..(new_strAry.size - 1)).each do |i|
  (0..(new_strAry[i].size - 1)).each do |j|
    sum_max = 0
    if j - 1 >= 0
      sum_max = new_strAry[i - 1][j - 1]
    end
    if new_strAry[i - 1].size > j
      sum_max = [sum_max, new_strAry[i - 1][j]].max
    end
    new_strAry[i][j] += sum_max
  end
end

p new_strAry.last.max

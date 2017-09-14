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
04 62 98 27 23 09 70 98 73 93 38 53 60 04 23
'

array = Array.new
dblAry = numbers.split('\n ').map{|n| n.split(' ').map{|n| n.to_i}}


 array << dblAry[0][0..0]
 array << dblAry[0][1..2]
 array << dblAry[0][3..5]
 array << dblAry[0][6..9]
 array << dblAry[0][10..14]
 array << dblAry[0][15..20]
 array << dblAry[0][21..27]
 array << dblAry[0][28..35]
 array << dblAry[0][36..44]
 array << dblAry[0][45..54]
 array << dblAry[0][55..65]
 array << dblAry[0][66..77]
 array << dblAry[0][78..90]
 array << dblAry[0][91..104]
 array << dblAry[0][105..120]


for n in (0..15)
  for x in (0..120)
  range = array[n].length.to_i
  if array[n][x] == array[n][x +range] || array[n][x +range +1]

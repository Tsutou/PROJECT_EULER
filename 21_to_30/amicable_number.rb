
class Integer
  def sum_of_divisors
    (1..(self / 2 + 1)).select{|v| self % v == 0}.inject(:+)
  end
end

#mapに&はプロック→ブロック or ブロック→プロック
#selectは検索メソッド
p (1...10000).map(&:sum_of_divisors).select.with_index(1){|v, i| i != v && i == v.sum_of_divisors}.inject(:+)

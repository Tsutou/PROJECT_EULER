#inject => リストのたたみこみ演算
#lcm    => 自身と整数 n の最小公倍数を返す。
p (1..20).to_a.inject(:lcm)
